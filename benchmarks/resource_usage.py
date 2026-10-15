"""Linux command resources observed by native GNU time, outside Python.

Do not use Python's wait4 child peak RSS here: even posix_spawn can carry the
Python observer's resident high-water mark into a tiny native child. GNU time
is harness tooling only; it establishes no compiler/runtime qualification.
"""

import hashlib
import json
import math
import os
from pathlib import Path

try:
    from .processes import run_command
except ImportError:
    from processes import run_command


SCHEMA = "pcc-gateway.command-resources.v1"
COLLECTOR = "linux.gnu-time"
SCOPE = ("Linux native GNU time command resources, including startup and warmups; "
         "peak RSS is a high-water mark, not a process-tree sum; "
         "waited descendants, if any, follow kernel child-accounting semantics")
TIME_KEYS = ("process_real_seconds", "process_user_seconds", "process_sys_seconds")
COUNTER_KEYS = ("process_peak_rss_kib", "process_voluntary_context_switches",
                "process_involuntary_context_switches")


def command_digest(command):
    return hashlib.sha256(json.dumps(command, ensure_ascii=True).encode()).hexdigest()


def linux_timer_identity(path=Path("/usr/bin/time")):
    """Require a native observer; never silently replace it with a Python shim."""
    path = Path(path)
    if not path.is_file() or not os.access(path, os.X_OK):
        raise RuntimeError("Linux resource collection requires native GNU time at " + str(path))
    path = path.resolve(strict=True)
    with path.open("rb") as stream:
        if stream.read(4) != b"\x7fELF":
            raise RuntimeError("Linux resource observer must be a native ELF executable")
        stream.seek(0)
        identity = hashlib.file_digest(stream, "sha256").hexdigest()
    version = run_command([str(path), "--version"], timeout=5, capture_output=True, text=True)
    first = version.stdout.splitlines()[0] if version.stdout.splitlines() else ""
    if version.returncode != 0 or "GNU Time" not in first:
        raise RuntimeError("Linux resource observer is not a verified GNU time executable")
    return {"path": str(path), "sha256": identity, "version": version.stdout.strip(),
            "collector": COLLECTOR, "numeric_locale": "C"}


def timed_command(command, output, timer):
    if output.exists():
        raise FileExistsError("refusing to overwrite a resource receipt: " + str(output))
    # Only a hex digest is interpolated. Command arguments containing quotes,
    # backslashes, newlines or GNU-time percent escapes cannot alter this JSON.
    format_string = (
        '{"schema":"' + SCHEMA + '","collector":"' + COLLECTOR
        + '","command_sha256":"' + command_digest(command) + '","returncode":%x,"metrics":{'
        '"process_real_seconds":%e,"process_user_seconds":%U,"process_sys_seconds":%S,'
        '"process_peak_rss_kib":%M,"process_voluntary_context_switches":%w,'
        '"process_involuntary_context_switches":%c}}'
    )
    return [timer["path"], "--quiet", "--format", format_string,
            "--output", str(output), "--", *command]


def load_metrics(path, command, *, returncode):
    """Fail closed before missing/mismatched resources can reach a summary."""
    receipt = json.loads(Path(path).read_text())
    if (type(returncode) is not int or returncode != 0
            or not isinstance(receipt, dict) or receipt.get("schema") != SCHEMA
            or receipt.get("collector") != COLLECTOR
            or receipt.get("command_sha256") != command_digest(command)
            or type(receipt.get("returncode")) is not int or receipt["returncode"] != 0):
        raise ValueError("resource receipt does not match a successful command")
    metrics = receipt.get("metrics")
    if not isinstance(metrics, dict) or set(metrics) != set(TIME_KEYS + COUNTER_KEYS):
        raise ValueError("resource receipt metrics are incomplete or unknown")
    for key in TIME_KEYS:
        value = metrics[key]
        if type(value) not in (float, int) or not math.isfinite(value) or value < 0:
            raise ValueError("invalid resource timing: " + key)
    for key in COUNTER_KEYS:
        if type(metrics[key]) is not int or metrics[key] < 0:
            raise ValueError("invalid resource counter: " + key)
    if metrics["process_peak_rss_kib"] <= 0:
        raise ValueError("resource receipt has no peak RSS observation")
    result = dict(metrics)
    result["process_peak_rss_bytes"] = result.pop("process_peak_rss_kib") * 1024
    return result
