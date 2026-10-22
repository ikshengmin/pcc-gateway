"""Deterministic report fixtures, not native executions or performance results."""

import argparse
import asyncio
import json
from pathlib import Path
import subprocess

import pytest

import benchmark_asyncio as oracle
from benchmarks import compare
from benchmarks import resource_usage
from benchmarks.protocol import validate_measurement


@pytest.fixture
def comparison_fixture(tmp_path, monkeypatch):
    """Run the real comparison/report path with synthetic command responses."""
    root, core = tmp_path / "gateway", tmp_path / "core"
    for name in (
        "benchmark_native.py", "benchmark_asyncio.py", "benchmark_asyncio_gather.py",
        "benchmarks/compare.py", "benchmarks/processes.py", "benchmarks/protocol.py",
        "benchmarks/resource_usage.py",
        "benchmarks/prototypes/benchmark_asyncio_gather_vthread.py",
        "benchmarks/prototypes/asyncio_vthread.py",
    ):
        destination = root / name
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes((compare.ROOT / name).read_bytes())
    (core / "pcc").mkdir(parents=True)
    (core / "pcc/__init__.py").write_text("# Synthetic source identity fixture.\n")
    monkeypatch.setattr(compare, "ROOT", root)
    monkeypatch.setattr(compare, "__file__", str(root / "benchmarks/compare.py"))
    monkeypatch.setattr(compare, "git", lambda *args, **kwargs: None)
    monkeypatch.setattr(compare.platform, "processor", lambda: "synthetic CPU")
    # platform.platform() runs `file` through subprocess.check_output on macOS.
    monkeypatch.setattr(compare.platform, "platform", lambda *args, **kwargs: "synthetic platform")
    monkeypatch.setattr(compare.subprocess, "check_output", lambda *args, **kwargs: "synthetic CPU\n")
    timer = root / "synthetic-time"
    timer.write_bytes(b"synthetic timer fixture, never executed")
    monkeypatch.setattr(compare, "linux_timer_identity", lambda: {
        "path": str(timer), "sha256": compare.digest(timer),
        "collector": resource_usage.COLLECTOR, "version": "synthetic GNU Time",
        "numeric_locale": "C",
    })

    args = argparse.Namespace(
        pcc="synthetic-pcc", pcc1="synthetic-pcc1", compiler_source=None,
        runtime_archive=None, pcc1_binary=None, pcc1_receipt=None,
        include_asyncio_vthread=False, rounds=2, zero_delay_requests=10,
        repeats=2, output=root / "synthetic-report.json",
    )
    labels = ["asyncio", "host-pcc", "pcc1"]
    called = []
    amendments = {}

    def compile_arm(label, compiler, source, output, log, **kwargs):
        # No compiler or benchmark subprocess runs in this fixture.
        assert source.is_file()
        return ["synthetic:" + label]

    def run(command, **kwargs):
        active = json.loads(args.output.read_text())["active_run"]
        label, repetition = active["implementation"], active["repetition"]
        assert command[-3:] == ["2", "0", "5"]
        assert kwargs["timeout"] == 60
        called.append((label, repetition))
        offset = labels.index(label) * 100
        values = ([*range(1, 10), 1000] if repetition == 0 else list(range(10, 20)))
        measured = {
            "concurrency": 2, "delay_ms": 0, "rounds": 5,
            "requests": 10, "warmup_requests": 4,
            "elapsed_ms": 2000 * (repetition + 1),
            "latencies_ms": [value + offset for value in values],
        }
        measured.update(amendments)
        if compare.sys.platform == "linux":
            separator = command.index("--")
            resource_path = command[command.index("--output") + 1]
            receipt = {"schema": resource_usage.SCHEMA, "collector": resource_usage.COLLECTOR,
                       "command_sha256": resource_usage.command_digest(command[separator + 1:]),
                       "returncode": 0, "metrics": {
                           "process_real_seconds": 3.0,
                           "process_user_seconds": 0.5,
                           "process_sys_seconds": 0.1,
                           "process_peak_rss_kib": (10 + repetition) * 1024,
                           "process_voluntary_context_switches": 2,
                           "process_involuntary_context_switches": 1,
                       }}
            Path(resource_path).write_text(json.dumps(receipt))
        return subprocess.CompletedProcess(command, 0, json.dumps(measured), "")

    monkeypatch.setattr(compare, "compile_arm", compile_arm)
    monkeypatch.setattr(compare, "run_command", run)
    return args, core, labels, called, amendments


@pytest.mark.parametrize("explicit_environment", (False, True))
def test_comparison_uses_the_threaded_atomic_runtime_for_compile_and_run(
    comparison_fixture, monkeypatch, explicit_environment,
):
    args, core, _, _, _ = comparison_fixture
    observed = []
    original_compile = compare.compile_arm
    original_run = compare.run_command

    def compile_arm(*args, **kwargs):
        observed.append(dict(kwargs["env"]))
        return original_compile(*args, **kwargs)

    def run(*args, **kwargs):
        observed.append(dict(kwargs["env"]))
        return original_run(*args, **kwargs)

    monkeypatch.setattr(compare, "compile_arm", compile_arm)
    monkeypatch.setattr(compare, "run_command", run)
    environment = ({"PCC_WITH_THREADS": "1", "PCC_REFCOUNT_KIND": "atomic"}
                   if explicit_environment else None)
    compare.compare(args, core, [2], [0], argparse.ArgumentParser(), environment=environment)
    assert observed
    assert all(env["PCC_WITH_THREADS"] == "1" for env in observed)
    assert all(env["PCC_REFCOUNT_KIND"] == "atomic" for env in observed)
    report = json.loads(args.output.read_text())
    assert report["optimization_environment"]["PCC_WITH_THREADS"] == "1"
    assert report["optimization_environment"]["PCC_REFCOUNT_KIND"] == "atomic"


@pytest.mark.parametrize("prototype", [False, True])
@pytest.mark.parametrize("system", ["linux", "darwin"])
def test_comparison_pools_p99_in_milliseconds_for_each_named_arm(comparison_fixture, monkeypatch, prototype, system):
    monkeypatch.setattr(compare.sys, "platform", system)
    args, core, labels, called, _ = comparison_fixture
    args.include_asyncio_vthread = prototype
    if prototype:
        labels.insert(1, "asyncio-gather")
        labels.extend(["host-pcc-asyncio-vthread-prototype", "pcc1-asyncio-vthread-prototype"])
    compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    report = json.loads(args.output.read_text())
    assert report["schema"] == "pcc-gateway.asyncio-comparison.v1"
    assert report["complete"] is True and report["status"] == "COMPLETE"
    assert report["measurement_scope"]["transport"] == "none"
    assert "not established" in report["native_source_qualification"]
    assert called == [(label, 0) for label in labels] + [(label, 1) for label in labels[1:] + labels[:1]]
    assert len(report["runs"]) == len(labels) * args.repeats
    assert [row["implementation"] for row in report["summary"]] == labels
    for row in report["runs"]:
        validate_measurement(row, concurrency=2, delay_ms=0, rounds=5)
        assert row["requests"] == len(row["latencies_ms"]) == 10
        assert row["warmup_requests"] == 4
    markdown = args.output.with_suffix(".md").read_text()
    assert "| p50 (ms) | p95 (ms) | p99 (ms) |" in markdown
    for index, row in enumerate(report["summary"]):
        offset = index * 100
        # Ten requests / 2 or 4 seconds; latencies already arrive in ms.
        assert row["requests_per_second_min"] == 2.5
        assert row["requests_per_second_max"] == 5.0
        assert row["requests_per_second_median"] == 3.75
        assert row["p50_ms"] == pytest.approx(10.5 + offset)
        assert row["p95_ms"] == pytest.approx(68.05 + offset)
        assert row["p99_ms"] == pytest.approx(813.61 + offset)
        if compare.sys.platform == "linux":
            assert row["process_peak_rss_bytes_median"] == 10.5 * 1024**2
        assert f"| {10.5 + offset:.3f} | {68.05 + offset:.3f} | {813.61 + offset:.3f} |" in markdown


@pytest.mark.parametrize("amendments", [
    {"requests": 9}, {"warmup_requests": 3}, {"concurrency": 1},
    {"delay_ms": 1}, {"rounds": 4}, {"latencies_ms": [1] * 9},
    {"requests": 9, "latencies_ms": [1] * 9},
    {"latencies_ms": [1] * 9 + [float("nan")]},
])
def test_incomplete_work_never_reaches_comparison_summary(comparison_fixture, amendments):
    args, core, _, called, changes = comparison_fixture
    changes.update(amendments)
    with pytest.raises(RuntimeError, match="invalid/incomplete asyncio measurements"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    report = json.loads(args.output.read_text())
    assert called == [("asyncio", 0)]
    assert report["runs"] == report["summary"] == []
    assert report["complete"] is False


@pytest.mark.parametrize("change", ["missing", "malformed", "wrong-command", "missing-rss"])
def test_incomplete_linux_resources_never_reach_summary(comparison_fixture, monkeypatch, change):
    args, core, _, called, _ = comparison_fixture
    monkeypatch.setattr(compare.sys, "platform", "linux")
    run = compare.run_command

    def altered(command, **kwargs):
        result = run(command, **kwargs)
        path = Path(command[command.index("--output") + 1])
        row = json.loads(path.read_text())
        if change == "missing":
            path.unlink()
        elif change == "malformed":
            path.write_text("not json")
        else:
            if change == "wrong-command":
                row["command_sha256"] = resource_usage.command_digest(["another-arm"])
            else:
                del row["metrics"]["process_peak_rss_kib"]
            path.write_text(json.dumps(row))
        return result

    monkeypatch.setattr(compare, "run_command", altered)
    with pytest.raises(RuntimeError, match="invalid/incomplete asyncio resources"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    report = json.loads(args.output.read_text())
    assert called == [("asyncio", 0)]
    assert report["runs"] == report["summary"] == []
    assert report["complete"] is False


def test_linux_resource_receipt_mutation_prevents_complete_report(comparison_fixture, monkeypatch):
    args, core, _, _, _ = comparison_fixture
    monkeypatch.setattr(compare.sys, "platform", "linux")
    run = compare.run_command
    receipts = []

    def mutate_previous(command, **kwargs):
        result = run(command, **kwargs)
        receipts.append(Path(command[command.index("--output") + 1]))
        if len(receipts) == 2:
            receipts[0].write_text("changed after admission")
        return result

    monkeypatch.setattr(compare, "run_command", mutate_previous)
    with pytest.raises(RuntimeError, match="resource receipt changed"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    assert not json.loads(args.output.read_text())["complete"]


def test_unavailable_linux_observer_fails_before_compiling(comparison_fixture, monkeypatch):
    args, core, _, called, _ = comparison_fixture
    monkeypatch.setattr(compare.sys, "platform", "linux")

    def unavailable():
        raise RuntimeError("Linux resource collection requires native GNU time")

    monkeypatch.setattr(compare, "linux_timer_identity", unavailable)
    monkeypatch.setattr(compare, "compile_arm", lambda *a, **k: pytest.fail("must not compile"))
    with pytest.raises(RuntimeError, match="requires native GNU time"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    report = json.loads(args.output.read_text())
    assert not report["complete"] and not report["runs"] and not called


def test_linux_observer_mutation_prevents_complete_report(comparison_fixture, monkeypatch):
    args, core, _, _, _ = comparison_fixture
    monkeypatch.setattr(compare.sys, "platform", "linux")
    run = compare.run_command

    def mutate_observer(command, **kwargs):
        result = run(command, **kwargs)
        Path(command[0]).write_text("changed native observer")
        return result

    monkeypatch.setattr(compare, "run_command", mutate_observer)
    with pytest.raises(RuntimeError, match="resource observer changed"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser())
    assert not json.loads(args.output.read_text())["complete"]


def test_strict_native_adapter_uses_only_pcc1_and_validates_artifact_before_running(comparison_fixture, monkeypatch):
    args, core, _, called, _ = comparison_fixture
    args.pcc = None
    args.build_dir = args.output.parent / "explicit-build-outside-source"
    compiled, validated = [], []
    def compile_arm(label, compiler, source, output, log, **kwargs):
        assert label == "pcc1"
        assert kwargs["env"]["STRICT_FIXTURE"] == "1"
        assert "PCC_DISABLE_BULK_GENERATOR_FRAME_INIT" not in kwargs["env"]
        assert output.parent == args.build_dir
        kwargs["report"]["compilers"][label] = {"synthetic": True}
        compiled.append(output)
        return ["synthetic:" + label]
    def validate(output):
        assert compiled == [output] and called == []
        validated.append(output)
        return {"synthetic_static_elf": True}
    monkeypatch.setattr(compare, "compile_arm", compile_arm)
    compare.compare(args, core, [2], [0], argparse.ArgumentParser(),
                    environment={"STRICT_FIXTURE": "1"}, artifact_validator=validate,
                    pending_completion=True)
    report = json.loads(args.output.read_text())
    assert report["status"] == "PENDING_PROCESS_CLEANUP" and report["complete"] is False
    assert len(validated) == 1 and set(report["compilers"]) == {"pcc1"}
    assert report["compilers"]["pcc1"]["dependencies"] == {"synthetic_static_elf": True}
    assert {label for label, _ in called} == {"asyncio", "pcc1"}


def test_strict_artifact_rejection_prevents_all_benchmark_execution(comparison_fixture, monkeypatch):
    args, core, _, called, _ = comparison_fixture
    args.pcc = None
    def reject(output):
        raise ValueError("artifact is not owned static ELF")
    with pytest.raises(ValueError, match="static ELF"):
        compare.compare(args, core, [2], [0], argparse.ArgumentParser(),
                        environment={}, artifact_validator=reject)
    assert called == [] and not json.loads(args.output.read_text())["complete"]


@pytest.mark.parametrize("p99,expected", [(None, "n/a"), (0.0, "0.000")])
def test_report_accepts_legacy_summary_without_p99(tmp_path, p99, expected):
    row = {
        "implementation": "asyncio", "delay_ms": 0, "concurrency": 1,
        "requests_per_second_median": 3.75, "requests_per_second_min": 2.5,
        "requests_per_second_max": 5.0, "p50_ms": 0.0, "p95_ms": 0.0,
    }
    if p99 is not None:
        row["p99_ms"] = p99
    report = {"started_utc": "synthetic", "platform": "synthetic", "cpu_model": "synthetic",
              "complete": True, "summary": [row]}
    original = json.dumps(report)
    output = tmp_path / "legacy.json"
    compare.write_markdown(output, report)
    assert f"| 0.000 | 0.000 | {expected} | n/a |" in output.with_suffix(".md").read_text()
    assert json.dumps(report) == original


def test_asyncio_request_timer_uses_milliseconds_and_both_children(monkeypatch):
    clock = iter([20.0, 20.125])
    monkeypatch.setattr(oracle.time, "perf_counter", lambda: next(clock))
    sleeps = []

    async def sleep(seconds):
        sleeps.append(seconds)

    monkeypatch.setattr(oracle.asyncio, "sleep", sleep)
    assert asyncio.run(oracle.request(100)) == 125.0
    assert sleeps == [0.1, 0.1]


def test_measured_batch_timer_and_samples_exclude_warmups(monkeypatch):
    calls = []
    clock = iter([20.0, 20.125])

    async def batch(concurrency, delay):
        calls.append((concurrency, delay))
        return [10000.0] * concurrency if len(calls) <= 2 else [1.0, 2.0]

    def timer():
        assert len(calls) in (2, 5)
        return next(clock)

    monkeypatch.setattr(oracle, "batch", batch)
    monkeypatch.setattr(oracle.time, "perf_counter", timer)
    monkeypatch.setattr(oracle.sys, "argv", ["benchmark_asyncio.py", "2", "0", "3"])
    measured = asyncio.run(oracle.benchmark())
    validate_measurement(measured, concurrency=2, delay_ms=0, rounds=3)
    assert calls == [(2, 0)] * 5
    assert measured["elapsed_ms"] == 125.0
    assert measured["latencies_ms"] == [1.0, 2.0] * 3
    assert measured["requests"] == 6 and measured["warmup_requests"] == 4
