"""Observer portability and strict workload receipts; no native pcc builds."""

import json
import os
from pathlib import Path
import shutil
import signal
import subprocess
import sys

import pytest

from benchmarks import compare, observation
from benchmarks.protocol import validate_measurement


@pytest.fixture(scope="module")
def observer(tmp_path_factory):
    return observation.build_observer(tmp_path_factory.mktemp("observer"), env=dict(os.environ))


def test_observer_preserves_workload_streams_and_real_cpu_rss(observer, tmp_path):
    code = "import sys; data=bytearray(32*1024*1024); print('payload'); print('diagnostic',file=sys.stderr)"
    result, metrics, files = observation.run_observed(
        [sys.executable, "-c", code], observer, tmp_path / "streams",
        cwd=compare.ROOT, env=dict(os.environ), timeout=5)
    assert result.stdout == "payload\n"
    assert result.stderr == "diagnostic\n"
    assert metrics["process_peak_rss_bytes"] >= 32 * 1024**2
    assert metrics["process_cpu_seconds"] > 0
    assert metrics["process_real_seconds"] > 0
    for row in files.values():
        assert observation.sha256(row["path"]) == row["sha256"]


@pytest.mark.parametrize("workload", ["benchmark_asyncio.py", "benchmark_asyncio_gather.py"])
@pytest.mark.parametrize("delay", [0, 10])
def test_cpython_workloads_emit_valid_matching_protocol(observer, tmp_path, workload, delay):
    result, metrics, _ = observation.run_observed(
        [sys.executable, str(compare.ROOT / workload), "2", str(delay), "2"],
        observer, tmp_path / "protocol", cwd=compare.ROOT, env=dict(os.environ), timeout=5)
    assert result.stderr == "" and result.stdout.count("\n") == 1
    measured = validate_measurement(json.loads(result.stdout), concurrency=2, delay_ms=delay, rounds=2)
    assert measured["requests"] == measured["warmup_requests"] == 4
    assert metrics["process_cpu_seconds"] > 0


def test_observer_trivial_exec_does_not_inherit_python_rss_floor(observer, tmp_path):
    # A Python wait4 supervisor inherits this resident allocation across fork,
    # making a tiny native command falsely look at least as large as Python.
    allocation = bytearray(64 * 1024**2)
    result, metrics, _ = observation.run_observed(
        [shutil.which("true")], observer, tmp_path / "tiny", cwd=compare.ROOT,
        env=dict(os.environ), timeout=5)
    assert result.stdout == result.stderr == ""
    assert metrics["process_peak_rss_bytes"] < len(allocation) // 2


@pytest.mark.parametrize("platform,unit,scale", [("linux", "KiB", 1024), ("darwin", "bytes", 1)])
def test_observer_verifies_platform_rss_units(monkeypatch, tmp_path, platform, unit, scale):
    path = tmp_path / "receipt.json"
    receipt = {"schema": "pcc-gateway.process-observation.v1", "observer": "wait4-exact-child",
               "child_returncode": 0, "child_pid": 123, "ru_maxrss": 100, "ru_maxrss_unit": unit,
               "process_peak_rss_bytes": 100 * scale, "process_real_seconds": .1,
               "process_user_seconds": .02, "process_sys_seconds": .01,
               "process_voluntary_context_switches": 1, "process_involuntary_context_switches": 0,
               "process_minor_page_faults": 1, "process_major_page_faults": 0}
    monkeypatch.setattr(observation.sys, "platform", platform)
    path.write_text(json.dumps(receipt))
    assert observation.read_metrics(path, expected_returncode=0)["process_peak_rss_bytes"] == 100 * scale
    receipt["ru_maxrss_unit"] = "wrong"
    path.write_text(json.dumps(receipt))
    with pytest.raises(RuntimeError, match="units"):
        observation.read_metrics(path, expected_returncode=0)


def test_observer_failure_retains_exit_status_and_raw_logs(observer, tmp_path):
    prefix = tmp_path / "failure"
    with pytest.raises(RuntimeError, match="workload failed \\(7\\)"):
        observation.run_observed([sys.executable, "-c", "print('before failure'); raise SystemExit(7)"],
            observer, prefix, cwd=compare.ROOT, env=dict(os.environ), timeout=5)
    paths = observation.paths_for(prefix)
    assert Path(paths["stdout"]).read_text() == "before failure\n"
    assert json.loads(Path(paths["receipt"]).read_text())["child_returncode"] == 7


def test_observer_timeout_cleans_workload_descendants(observer, tmp_path):
    pid_file = tmp_path / "grandchild.pid"
    code = ("import subprocess,sys,time; from pathlib import Path; "
            "p=subprocess.Popen([sys.executable,'-c','import time; time.sleep(30)']); "
            "Path(sys.argv[1]).write_text(str(p.pid)); time.sleep(30)")
    try:
        with pytest.raises(subprocess.TimeoutExpired):
            observation.run_observed([sys.executable, "-c", code, str(pid_file)], observer,
                tmp_path / "timeout", cwd=compare.ROOT, env=dict(os.environ), timeout=.4)
        pid = int(pid_file.read_text())
        status = subprocess.check_output(["ps", "-p", str(pid), "-o", "stat="], text=True)
        assert not status.strip() or status.lstrip().startswith("Z")
    except subprocess.CalledProcessError as exc:
        assert exc.returncode == 1  # Already reaped by the system.
    finally:
        if pid_file.exists():
            try:
                os.kill(int(pid_file.read_text()), signal.SIGKILL)
            except ProcessLookupError:
                pass
