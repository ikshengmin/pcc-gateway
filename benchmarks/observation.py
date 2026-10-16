"""Portable, separately receipted process observation for handler comparisons.

The system C compiler builds ONLY the observer. Its identity and source are
recorded; it is not a producer or dependency of any native compiler/workload.
The observer inherits the group owned by processes.run_command, as do its
children, so all timeout/error/parent-exit cleanup continues to apply.
"""

import hashlib
import json
import math
from pathlib import Path
import shutil
import subprocess
import sys

try:
    from .processes import run_command
except ImportError:
    from processes import run_command


SOURCE = Path(__file__).with_name("process_observer.c")
MEMORY_SCOPE = (
    "wait4 exact workload child ru_maxrss (Linux KiB converted to bytes; macOS bytes), "
    "including pre-exec, startup, warmups and retained latency samples; includes "
    "waited descendants per OS semantics, not synchronized process-tree RSS; "
    "excludes the observation supervisor"
)
CPU_SCOPE = (
    "wait4 exact workload child user/system CPU, including startup, warmups, "
    "output formatting and waited descendants; excludes the observation supervisor"
)


def sha256(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def build_observer(build, *, env, compiler=None):
    if sys.platform not in ("linux", "darwin"):
        raise RuntimeError("process observation supports verified Linux/macOS RSS units only")
    compiler = shutil.which(compiler or "cc")
    if compiler is None:
        raise RuntimeError("a host C compiler is required for observation tooling only")
    compiler = str(Path(compiler).resolve())
    output = build / "process-observer"
    command = [compiler, "-std=c11", "-O2", "-Wall", "-Wextra", "-Werror",
               str(SOURCE), "-o", str(output)]
    log = build / "process-observer-build.log"
    with log.open("w") as stream:
        run_command(command, timeout=30, env=env, stdout=stream,
                    stderr=subprocess.STDOUT, check=True)
    return {
        "path": str(output), "sha256": sha256(output),
        "source": str(SOURCE), "source_sha256": sha256(SOURCE),
        "compiler": compiler, "compiler_sha256": sha256(compiler),
        "command": command, "log": str(log), "build_timeout_seconds": 30,
        "scope": "External observation tooling only; never a native artifact producer",
        "instructions": "unavailable: wait4 does not supply hardware instruction/cycle counts",
    }


def paths_for(prefix):
    return {"stdout": str(prefix) + ".stdout", "stderr": str(prefix) + ".stderr",
            "receipt": str(prefix) + ".process.json"}


def read_metrics(path, *, expected_returncode):
    receipt = json.loads(Path(path).read_text())
    unit = {"linux": "KiB", "darwin": "bytes"}.get(sys.platform)
    scale = 1024 if unit == "KiB" else 1
    if (receipt.get("schema") != "pcc-gateway.process-observation.v1"
            or receipt.get("observer") != "wait4-exact-child"
            or type(receipt.get("child_returncode")) is not int
            or receipt.get("child_returncode") != expected_returncode
            or type(receipt.get("child_pid")) is not int or receipt["child_pid"] <= 0
            or receipt.get("ru_maxrss_unit") != unit):
        raise RuntimeError("invalid process observation identity/exit status/units: " + str(path))
    metrics = {key: value for key, value in receipt.items() if key.startswith("process_")}
    required = ("process_real_seconds", "process_user_seconds", "process_sys_seconds",
                "process_peak_rss_bytes", "process_voluntary_context_switches",
                "process_involuntary_context_switches", "process_minor_page_faults",
                "process_major_page_faults")
    if (set(metrics) != set(required)
            or any(type(value) not in (int, float) or not math.isfinite(value) or value < 0
                   for value in metrics.values())
            or metrics["process_real_seconds"] <= 0
            or type(receipt.get("ru_maxrss")) is not int or receipt["ru_maxrss"] < 0
            or metrics["process_peak_rss_bytes"] != receipt["ru_maxrss"] * scale):
        raise RuntimeError("invalid/incomplete process observations: " + str(path))
    metrics["process_cpu_seconds"] = metrics["process_user_seconds"] + metrics["process_sys_seconds"]
    return metrics


def run_observed(command, observer, prefix, *, cwd, env, timeout):
    paths = paths_for(prefix)
    wrapped = [observer["path"], paths["receipt"], "--", *command]
    with open(paths["stdout"], "xb") as stdout, open(paths["stderr"], "xb") as stderr:
        ran = run_command(wrapped, timeout=timeout, cwd=cwd, env=env,
                          stdout=stdout, stderr=stderr)
    result = subprocess.CompletedProcess(command, ran.returncode,
        Path(paths["stdout"]).read_bytes().decode("utf-8"),
        Path(paths["stderr"]).read_bytes().decode("utf-8"))
    if result.returncode:
        raise RuntimeError(f"workload failed ({result.returncode}): {paths}")
    return result, read_metrics(paths["receipt"], expected_returncode=0), {
        key: {"path": path, "sha256": sha256(path)} for key, path in paths.items()
    }
