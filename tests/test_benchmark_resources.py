"""Resource infrastructure contracts; these are not native benchmark results."""

import json
import os
from pathlib import Path
import signal
import subprocess
import sys

import pytest

from benchmarks import resource_usage
from benchmarks.processes import run_command


def receipt(command):
    return {
        "schema": resource_usage.SCHEMA, "collector": resource_usage.COLLECTOR,
        "command_sha256": resource_usage.command_digest(command), "returncode": 0,
        "metrics": {"process_real_seconds": 0.5, "process_user_seconds": 0.25,
                    "process_sys_seconds": 0.125, "process_peak_rss_kib": 1234,
                    "process_voluntary_context_switches": 7,
                    "process_involuntary_context_switches": 3},
    }


def test_linux_resources_use_bytes_and_whole_command_seconds(tmp_path):
    path = tmp_path / "resources.json"
    row = receipt(["pcc1-workload", "2", "0", "3"])
    path.write_text(json.dumps(row))
    metrics = resource_usage.load_metrics(path, ["pcc1-workload", "2", "0", "3"], returncode=0)
    assert metrics["process_peak_rss_bytes"] == 1234 * 1024
    assert metrics["process_real_seconds"] == 0.5
    assert metrics["process_user_seconds"] == 0.25
    assert metrics["process_sys_seconds"] == 0.125
    assert metrics["process_voluntary_context_switches"] == 7
    assert metrics["process_involuntary_context_switches"] == 3


@pytest.mark.parametrize("field,value", [
    ("schema", "unknown"), ("collector", "cumulative-getrusage"),
    ("command_sha256", "wrong-command"), ("returncode", 1), ("returncode", -15),
    ("returncode", False), ("metrics", {}), ("metrics", None),
])
def test_resource_receipt_rejects_wrong_or_incomplete_command(tmp_path, field, value):
    path = tmp_path / "resources.json"
    row = receipt(["workload"])
    row[field] = value
    path.write_text(json.dumps(row))
    with pytest.raises(ValueError):
        resource_usage.load_metrics(path, ["workload"], returncode=0)


@pytest.mark.parametrize("field", resource_usage.TIME_KEYS)
@pytest.mark.parametrize("value", [True, -1, float("nan"), float("inf"), "1"])
def test_resource_receipt_rejects_invalid_timings(tmp_path, field, value):
    row = receipt(["workload"])
    row["metrics"][field] = value
    path = tmp_path / "resources.json"
    path.write_text(json.dumps(row))
    with pytest.raises(ValueError, match="invalid resource timing"):
        resource_usage.load_metrics(path, ["workload"], returncode=0)


@pytest.mark.parametrize("field", resource_usage.COUNTER_KEYS)
@pytest.mark.parametrize("value", [True, -1, 1.5, "1", None])
def test_resource_receipt_rejects_invalid_counters(tmp_path, field, value):
    row = receipt(["workload"])
    row["metrics"][field] = value
    path = tmp_path / "resources.json"
    path.write_text(json.dumps(row))
    with pytest.raises(ValueError, match="invalid resource counter"):
        resource_usage.load_metrics(path, ["workload"], returncode=0)


@pytest.mark.parametrize("change", ["missing", "unknown", "zero-rss"])
def test_resource_receipt_requires_all_observations(tmp_path, change):
    row = receipt(["workload"])
    if change == "missing":
        del row["metrics"]["process_peak_rss_kib"]
    elif change == "unknown":
        row["metrics"]["tree_peak_rss_bytes"] = 1234
    else:
        row["metrics"]["process_peak_rss_kib"] = 0
    path = tmp_path / "resources.json"
    path.write_text(json.dumps(row))
    with pytest.raises(ValueError):
        resource_usage.load_metrics(path, ["workload"], returncode=0)


def test_resource_receipt_must_be_an_object(tmp_path):
    path = tmp_path / "resources.json"
    path.write_text("[]")
    with pytest.raises(ValueError):
        resource_usage.load_metrics(path, ["workload"], returncode=0)


@pytest.mark.parametrize("returncode", [1, 143, -15, False])
def test_successful_raw_metrics_do_not_override_failed_process(tmp_path, returncode):
    path = tmp_path / "resources.json"
    path.write_text(json.dumps(receipt(["workload"])))
    with pytest.raises(ValueError, match="successful command"):
        resource_usage.load_metrics(path, ["workload"], returncode=returncode)


def test_missing_timer_is_explicitly_unavailable(tmp_path):
    with pytest.raises(RuntimeError, match="requires native GNU time"):
        resource_usage.linux_timer_identity(tmp_path / "missing-time")


@pytest.mark.parametrize("header,version,code", [
    (b"#!/bin/sh\n", "GNU Time", 0),
    (b"\x7fELF", "different time", 0),
    (b"\x7fELF", "GNU Time", 1),
    (b"\x7fELF", "", 0),
])
def test_observer_rejects_wrappers_and_unverified_version(tmp_path, monkeypatch, header, version, code):
    path = tmp_path / "time"
    path.write_bytes(header)
    path.chmod(0o700)
    monkeypatch.setattr(resource_usage, "run_command", lambda *a, **k:
                        subprocess.CompletedProcess(a[0], code, version, ""))
    with pytest.raises(RuntimeError):
        resource_usage.linux_timer_identity(path)


def test_timer_identity_binds_native_bytes_and_version(tmp_path, monkeypatch):
    path = tmp_path / "time"
    path.write_bytes(b"\x7fELF synthetic native observer")
    path.chmod(0o700)
    calls = []

    def version(command, **kwargs):
        calls.append((command, kwargs))
        return subprocess.CompletedProcess(command, 0, "time (GNU Time) test\n", "")

    monkeypatch.setattr(resource_usage, "run_command", version)
    identity = resource_usage.linux_timer_identity(path)
    assert identity["path"] == str(path.resolve())
    assert len(identity["sha256"]) == 64
    assert identity["version"] == "time (GNU Time) test"
    assert identity["numeric_locale"] == "C"
    assert calls[0][0] == [str(path), "--version"]
    assert calls[0][1]["timeout"] == 5


def test_timer_format_binds_command_without_interpolating_its_arguments(tmp_path):
    command = ["native", "percent%M", '"quote"', "slash\\and\nnewline", "unicode\u00e9"]
    path = tmp_path / "resources.json"
    actual = resource_usage.timed_command(command, path, {"path": "/usr/bin/time"})
    assert actual[0:3] == ["/usr/bin/time", "--quiet", "--format"]
    assert actual[4:] == ["--output", str(path), "--", *command]
    format_string = actual[3]
    assert resource_usage.command_digest(command) in format_string
    assert "percent" not in format_string and "quote" not in format_string
    for code, value in {"%x": "0", "%e": "0.5", "%U": "0.25", "%S": "0.125",
                        "%M": "1234", "%w": "7", "%c": "3"}.items():
        format_string = format_string.replace(code, value)
    path.write_text(format_string)
    assert resource_usage.load_metrics(path, command, returncode=0)["process_peak_rss_bytes"] == 1234 * 1024
    with pytest.raises(FileExistsError):
        resource_usage.timed_command(command, path, {"path": "/usr/bin/time"})


@pytest.fixture
def native_time():
    if sys.platform != "linux":
        pytest.skip("GNU time collector smoke is Linux-only")
    if not Path("/usr/bin/time").is_file():
        if os.environ.get("GITHUB_ACTIONS") == "true":
            pytest.fail("supported Linux CI must exercise native GNU time; /usr/bin/time is missing")
        pytest.skip("native GNU time unavailable locally: /usr/bin/time is missing")
    return resource_usage.linux_timer_identity()


def run_timed(path, command, timer, timeout=5):
    env = dict(os.environ, LC_NUMERIC="C")
    env.pop("LC_ALL", None)
    return run_command(resource_usage.timed_command(command, path, timer),
                       timeout=timeout, capture_output=True, text=True, env=env)


def test_linux_observer_preserves_output(tmp_path, native_time):
    path = tmp_path / "resources.json"
    child = [sys.executable, "-c", "import sys; data=bytearray(8*1024*1024); print('workload'); print('diagnostic',file=sys.stderr)"]
    result = run_timed(path, child, native_time)
    assert result.returncode == 0
    assert result.stdout == "workload\n" and result.stderr == "diagnostic\n"
    metrics = resource_usage.load_metrics(path, child, returncode=result.returncode)
    assert metrics["process_peak_rss_bytes"] >= 8 * 1024**2


@pytest.mark.parametrize("code,expected", [
    ("import sys; sys.exit(7)", 7),
    ("import os,signal; os.kill(os.getpid(),signal.SIGTERM)", 143),
])
def test_linux_observer_rejects_failed_command(tmp_path, native_time, code, expected):
    path = tmp_path / "resources.json"
    child = [sys.executable, "-c", code]
    result = run_timed(path, child, native_time)
    assert result.returncode == expected
    # GNU time's %x is not the process wait status for a signal death; the
    # observed outer status must also succeed before metrics are admissible.
    with pytest.raises(ValueError, match="successful command"):
        resource_usage.load_metrics(path, child, returncode=result.returncode)


def test_native_child_rss_excludes_large_python_observer(tmp_path, native_time):
    # A Python wait4 wrapper reports its own pre-exec RSS floor even with
    # posix_spawn. Native GNU time must fork AFTER replacing that Python image.
    retained = bytearray(32 * 1024**2)
    for index in range(0, len(retained), 4096):
        retained[index] = 1
    path = tmp_path / "native-sleep.resources.json"
    child = ["/bin/sleep", "0.05"]
    result = run_timed(path, child, native_time)
    assert result.returncode == 0
    metrics = resource_usage.load_metrics(path, child, returncode=result.returncode)
    assert 0 < metrics["process_peak_rss_bytes"] < len(retained) // 2
    assert retained[0] == 1


def test_timeout_cleans_native_observer_and_command(tmp_path, native_time):
    path, pid_path = tmp_path / "resources.json", tmp_path / "command.pid"
    child = [sys.executable, "-c",
             "import os,time,sys; from pathlib import Path; Path(sys.argv[1]).write_text(str(os.getpid())); time.sleep(30)",
             str(pid_path)]
    try:
        with pytest.raises(subprocess.TimeoutExpired):
            run_timed(path, child, native_time, timeout=0.5)
        pid = int(pid_path.read_text())
        state = subprocess.run(["ps", "-p", str(pid), "-o", "stat="],
                               capture_output=True, text=True, timeout=2).stdout.strip()
        assert not state or state.startswith("Z")
        with pytest.raises((OSError, ValueError)):
            resource_usage.load_metrics(path, child, returncode=0)
    finally:
        if pid_path.exists():
            try:
                os.kill(int(pid_path.read_text()), signal.SIGKILL)
            except ProcessLookupError:
                pass
