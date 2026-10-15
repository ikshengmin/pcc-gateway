"""Synthetic orchestration/receipt controls; these never execute a compiler."""

import argparse
from contextlib import contextmanager
import copy
import importlib.util
import json
import math
from pathlib import Path
import re
import subprocess
import sys
from types import SimpleNamespace

import pytest


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("ci_native_comparison", ROOT / "scripts/ci_native_comparison.py")
ci = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = ci
SPEC.loader.exec_module(ci)
BUILD_SPEC = importlib.util.spec_from_file_location("gateway_native_build", ROOT / "scripts/ci_native_build.py")
build = importlib.util.module_from_spec(BUILD_SPEC)
BUILD_SPEC.loader.exec_module(build)
COMMIT, TREE = "a" * 40, "b" * 40


def matrix(artifact):
    report = {"status": "COMPLETE", "complete": True, "repeats": 5,
              "warmup_batches": 2, "runs": [], "summary": [],
              "compilers": {"pcc1": {"command": ["synthetic-pcc1", "-o", str(artifact)],
                                       "artifact_sha256": ci.sha(artifact)}}}
    for delay in (0, 100):
        for concurrency in (1, 10, 100):
            rounds = max(10, math.ceil(5000 / concurrency)) if delay == 0 else 10
            for label in ("pcc1", "asyncio"):
                elapsed = 1000 if label == "pcc1" else 1100
                report["summary"].append({"implementation": label, "delay_ms": delay,
                    "concurrency": concurrency, "requests_per_second_median": concurrency * rounds * 1000 / elapsed,
                    "p50_ms": delay, "p95_ms": delay, "p99_ms": delay,
                    "process_peak_rss_bytes_median": 1048576})
                for repetition in range(5):
                    report["runs"].append({"implementation": label, "delay_ms": delay,
                        "concurrency": concurrency, "repetition": repetition, "rounds": rounds,
                        "requests": concurrency * rounds, "warmup_requests": concurrency * 2,
                        "elapsed_ms": elapsed, "latencies_ms": [delay] * (concurrency * rounds),
                        "resource_receipt": {"path": "synthetic", "sha256": "f" * 64},
                        "process_peak_rss_bytes": 1048576})
    return report


@pytest.fixture
def orchestration(tmp_path, monkeypatch):
    root, core = tmp_path / "gateway", tmp_path / "core"
    root.mkdir()
    core.mkdir()
    compiler, runtime, receipt = (tmp_path / name for name in ("pcc1", "runtime.a", "receipt.json"))
    for path in (compiler, runtime, receipt):
        path.write_text("synthetic fixture, never executed")
    artifact = tmp_path / "benchmark-app"
    artifact.write_text("synthetic benchmark, never executed")
    canary = tmp_path / "cleanup-canary"
    canary.write_text("synthetic canary, never executed")
    args = argparse.Namespace(pcc_source=core, pcc_commit=COMMIT, pcc_tree=TREE,
        pcc1=compiler, receipt=receipt, runtime=runtime, output=tmp_path / "measurements")
    monkeypatch.setattr(ci, "ROOT", root)
    monkeypatch.setattr(ci.sys, "platform", "linux")
    monkeypatch.setattr(ci.platform, "machine", lambda: "x86_64")
    monkeypatch.setattr(ci, "interpreter_identity", lambda: {"version": "synthetic 3.15.0rc1"})

    def source(path, expected=None):
        if expected is not None:
            assert expected == {"commit": COMMIT, "tree": TREE}
        return {"path": str(path), "commit": COMMIT, "tree": TREE, "clean": True}

    monkeypatch.setattr(ci, "source_identity", source)
    monkeypatch.setattr(ci.compare, "linux_timer_identity", lambda: {"collector": "synthetic GNU time"})
    monkeypatch.setattr(ci.compare, "write_markdown", lambda *args: None)
    calls, state = [], {"locked": False, "after_mutation": False, "artifact_mutation": False, "canary_mutation": False}
    proof = {"files": {str(compiler): {"sha256": ci.sha(compiler)}}, "qualification": "synthetic Stage1"}

    @contextmanager
    def lock():
        assert not state["locked"]
        state["locked"] = True
        try:
            yield
        finally:
            state["locked"] = False

    def verify(path, **kwargs):
        assert Path(path) == receipt
        assert kwargs == {"compiler": compiler, "runtime_archive": runtime, "source_root": core,
                          "gc_backend": 0, "threads": False, "refcount": "atomic"}
        assert ci.os.environ["PCC_RUNTIME_CC"] == "pcc"
        assert ci.os.environ["PCC_WITH_THREADS"] == "0"
        calls.append("admit")
        value = copy.deepcopy(proof)
        if state["after_mutation"] and calls.count("admit") == 2:
            value["files"][str(compiler)]["sha256"] = "changed"
        return value

    producer = SimpleNamespace(performance_lock=lock, dependency_receipt=lambda path: {"format": "ELF"})
    verifier = SimpleNamespace(verify_platform_compiler=verify, producer=producer,
                               _static_elf64=lambda data: {"machine": 62})
    monkeypatch.setattr(ci, "load_core_module", lambda *args: verifier)

    def cleanup(selected, env, output, dependencies):
        assert state["locked"] and selected == compiler
        assert env["PCC_RUNTIME_CC"] == "/usr/bin/false"
        assert not Path(env["PCC_HOST_PYTHON"]).exists()
        assert env["PCC_DIRECT_INDEXED_KERNEL_CAPTURE"] == env["PCC_DIRECT_INDEXED_KERNEL_EMIT"] == "1"
        calls.append("cleanup")
        return {"artifact": str(canary), "artifact_sha256": ci.sha(canary)}

    def compare(args, selected, concurrencies, delays, parser, **kwargs):
        assert state["locked"] and selected == core
        assert args.pcc is None and args.pcc1 == str(compiler)
        assert args.runtime_archive == runtime and args.compiler_source == core
        assert args.repeats == 5 and args.rounds == 10 and args.zero_delay_requests == 5000
        assert concurrencies == [1, 10, 100] and delays == [0, 100]
        assert not args.include_asyncio_vthread
        assert args.build_dir == args.output.parent / "build"
        assert kwargs["artifact_validator"](artifact) == {"platform": {"machine": 62},
                                                          "dependencies": {"format": "ELF"}}
        assert kwargs["pending_completion"] is True
        assert "PCC_DISABLE_BULK_GENERATOR_FRAME_INIT" not in kwargs["environment"]
        assert kwargs["environment"]["PCC_DIRECT_INDEXED_NATIVE_OBJECT"] == "1"
        calls.append("compare")
        measured = matrix(artifact)
        measured.update(status="PENDING_PROCESS_CLEANUP", complete=False)
        ci.save(args.output, measured)
        if state["artifact_mutation"]:
            artifact.write_text("changed benchmark")
        if state["canary_mutation"]:
            canary.write_text("changed cleanup canary")

    monkeypatch.setattr(ci, "run_cleanup_canary", cleanup)
    monkeypatch.setattr(ci.compare, "compare", compare)
    return args, calls, state, verifier, artifact


def test_native_measurement_rechecks_exact_artifacts_and_waits_for_guard(orchestration):
    args, calls, state, _, _ = orchestration
    assert ci.run(args) == 0
    assert calls == ["admit", "cleanup", "compare", "admit"] and not state["locked"]
    report = json.loads((args.output / "report.json").read_text())
    assert report["status"] == "MEASURED_PENDING_PROCESS_CLEANUP"
    assert report["native_validation"] == "NATIVE_CLEANUP_AND_MATCHED_WORK_PASSED"
    assert report["performance_outcome"] == "NATIVE_MEDIAN_HIGHER_IN_ALL_CELLS"
    measured = json.loads((args.output / "comparison.json").read_text())
    assert measured["native_source_qualification"]["pcc_commit"] == COMMIT
    assert measured["complete"] is False and measured["status"] == "PENDING_PROCESS_CLEANUP"
    assert measured["native_source_qualification"]["status"] == "PENDING_PROCESS_CLEANUP"


@pytest.mark.parametrize("change,match", [("after_mutation", "admitted native artifacts"),
    ("artifact_mutation", "compiled benchmark"), ("canary_mutation", "cleanup canary")])
def test_mutation_invalidates_even_a_complete_measurement(orchestration, change, match):
    args, calls, state, _, _ = orchestration
    state[change] = True
    with pytest.raises(ValueError, match=match):
        ci.run(args)
    assert calls == ["admit", "cleanup", "compare", "admit"]
    assert json.loads((args.output / "report.json").read_text())["status"] == "FAILED"
    assert json.loads((args.output / "comparison.json").read_text())["complete"] is False


def test_receipt_rejection_prevents_any_native_execution(orchestration, monkeypatch):
    args, calls, _, verifier, _ = orchestration
    def reject(*args, **kwargs):
        raise ValueError("unadmitted native producer receipt")
    monkeypatch.setattr(verifier, "verify_platform_compiler", reject)
    with pytest.raises(ValueError, match="unadmitted"):
        ci.run(args)
    assert calls == []
    assert json.loads((args.output / "report.json").read_text())["native_validation"] == "NOT_RUN"


def test_cleanup_failure_prevents_measurement(orchestration, monkeypatch):
    args, calls, _, _, _ = orchestration
    def fail(*args, **kwargs):
        raise RuntimeError("cleanup failed")
    monkeypatch.setattr(ci, "run_cleanup_canary", fail)
    with pytest.raises(RuntimeError, match="cleanup failed"):
        ci.run(args)
    assert calls == ["admit"] and not (args.output / "comparison.json").exists()


@pytest.mark.parametrize("failure", [None, "compile", "dependencies", "run", "marker"])
def test_cleanup_canary_requires_real_compile_artifact_and_exact_marker(tmp_path, monkeypatch, failure):
    calls = []
    compiler = tmp_path / "selected-pcc1"
    def command(argv, **kwargs):
        calls.append(argv)
        if len(calls) == 1:
            assert argv[0] == str(compiler)
            assert argv[1:7] == ["--backend", "self", "--python-libpython", "off", "--ir-scaffold", "on"]
            assert kwargs["timeout"] == 300
            Path(argv[-1]).write_text("synthetic emitted artifact")
            return subprocess.CompletedProcess(argv, 1 if failure == "compile" else 0, "", "")
        assert argv == [str(tmp_path / "structured-scope-canary")] and kwargs["timeout"] == 15
        marker = "wrong" if failure == "marker" else "PCC1_STRUCTURED_FAILURE_CLEANUP_OK\n"
        return subprocess.CompletedProcess(argv, 1 if failure == "run" else 0, marker, "")
    def dependency(path):
        assert path.is_file() and len(calls) == 1
        if failure == "dependencies":
            raise ValueError("dynamic dependency")
        return {"synthetic": True}
    monkeypatch.setattr(ci, "run_command", command)
    if failure:
        with pytest.raises((ValueError, RuntimeError)):
            ci.run_cleanup_canary(compiler, {}, tmp_path, dependency)
        assert len(calls) == (1 if failure in ("compile", "dependencies") else 2)
    else:
        result = ci.run_cleanup_canary(compiler, {}, tmp_path, dependency)
        assert result["run_returncode"] == 0 and len(calls) == 2
        assert result["artifact_sha256"] == ci.sha(result["artifact"])


@pytest.mark.parametrize("failure", ["timeout", "interruption"])
def test_cleanup_compile_logs_survive_abnormal_exit(tmp_path, monkeypatch, failure):
    calls = []
    compiler = tmp_path / "selected-pcc1"
    stdout = "native compiler progress\n"
    stderr = "native compiler diagnostic\n"

    def command(argv, **kwargs):
        calls.append(argv)
        assert kwargs["timeout"] == 300
        # Model output already emitted by the child before it is stopped.
        # The captured-output implementation loses it on either exception.
        for name, value in (("stdout", stdout), ("stderr", stderr)):
            stream = kwargs.get(name)
            if stream is not None:
                stream.write(value)
                stream.flush()
                assert Path(stream.name).read_text() == value
        if failure == "timeout":
            raise subprocess.TimeoutExpired(argv, 300, output=stdout.encode(), stderr=stderr.encode())
        raise KeyboardInterrupt("stop compile")

    def dependency(path):
        pytest.fail("an incomplete compile must never reach artifact admission")

    monkeypatch.setattr(ci, "run_command", command)
    error = subprocess.TimeoutExpired if failure == "timeout" else KeyboardInterrupt
    with pytest.raises(error):
        ci.run_cleanup_canary(compiler, {}, tmp_path, dependency)
    assert len(calls) == 1
    assert (tmp_path / "cleanup-compile.stdout").read_text() == stdout
    assert (tmp_path / "cleanup-compile.stderr").read_text() == stderr
    assert not (tmp_path / "cleanup-run.stdout").exists()


@pytest.mark.parametrize("failure", ["incomplete", "host", "skip", "repeat", "warmup", "missing-cell",
    "duplicate-cell", "missing-run", "repetition", "missing-memory", "bad-count", "bad-latency", "nan-qps", "zero-qps", "no-p99"])
def test_selection_cannot_accept_missing_or_invalid_native_work(tmp_path, failure):
    artifact = tmp_path / "synthetic"
    artifact.write_text("fixture")
    report = matrix(artifact)
    if failure == "incomplete": report["complete"] = False
    elif failure == "host": report["compilers"] = {"host-pcc": {}}
    elif failure == "skip": report["skipped_arms"] = ["pcc1"]
    elif failure == "repeat": report["repeats"] = 4
    elif failure == "warmup": report["warmup_batches"] = 1
    elif failure == "missing-cell": report["summary"].pop()
    elif failure == "duplicate-cell": report["summary"].append(report["summary"][0])
    elif failure == "missing-run": report["runs"].pop()
    elif failure == "repetition": report["runs"][0]["repetition"] = 1
    elif failure == "missing-memory": report["runs"][0].pop("resource_receipt")
    elif failure == "bad-count": report["runs"][0]["requests"] -= 1
    elif failure == "bad-latency": report["runs"][0]["latencies_ms"][0] = float("nan")
    elif failure == "nan-qps": report["summary"][0]["requests_per_second_median"] = float("nan")
    elif failure == "zero-qps": report["summary"][0]["requests_per_second_median"] = 0
    elif failure == "no-p99": report["summary"][0].pop("p99_ms")
    with pytest.raises((ValueError, KeyError)):
        ci.verify_selection(report)


def test_slower_native_measurement_is_retained_without_a_victory(tmp_path):
    artifact = tmp_path / "synthetic"
    artifact.write_text("fixture")
    report = matrix(artifact)
    report["summary"][0]["requests_per_second_median"] = 2500
    for row in report["runs"]:
        if (row["implementation"], row["delay_ms"], row["concurrency"]) == ("pcc1", 0, 1):
            row["elapsed_ms"] = 2000
    outcomes = ci.verify_selection(report)
    assert len(outcomes) == 6 and not outcomes[0]["native_median_higher"]


def test_environment_preserves_guard_but_drops_experiments(monkeypatch):
    monkeypatch.setenv("PCC_DISABLE_BULK_GENERATOR_FRAME_INIT", "1")
    monkeypatch.setenv("PCC_CURRENT_PCC1", "/unrelated/compiler")
    monkeypatch.setenv("PCC_WORKER_TREE_BUDGET_BYTES", "2147483648")
    monkeypatch.setenv("PCC_WORKER_TREE_STATE_PATH", "/guard/state.tsv")
    monkeypatch.setenv("LC_ALL", "unrelated")
    env = ci.environment(Path("/core"), Path("/runtime.a"))
    assert "PCC_DISABLE_BULK_GENERATOR_FRAME_INIT" not in env and "PCC_CURRENT_PCC1" not in env
    assert "LC_ALL" not in env
    assert env["PCC_WORKER_TREE_BUDGET_BYTES"] == "2147483648"
    assert env["PCC_WORKER_TREE_STATE_PATH"] == "/guard/state.tsv"
    assert env["PCC_WITH_THREADS"] == "0" and env["PCC_REFCOUNT_KIND"] == "atomic"


def test_native_compile_route_matches_platform_canary_without_changing_admission(tmp_path):
    admitted = {"PCC_RUNTIME_CC": "pcc", "PCC_WORKER_TREE_BUDGET_BYTES": "2147483648",
                "PCC_PYTHON_IR_PASSES": "off", "PCC_RUNTIME_ARCHIVE": "/exact/runtime.a"}
    before = dict(admitted)
    actual = ci.native_compile_environment(admitted, tmp_path)
    assert admitted == before
    assert {key: value for key, value in actual.items() if key not in before or before[key] != value} == {
        "PCC_RUNTIME_CC": "/usr/bin/false", "PCC_HOST_PYTHON": str(tmp_path / "forbidden-host-python"),
        "PCC_DIRECT_INDEXED_KERNEL_CAPTURE": "1", "PCC_DIRECT_INDEXED_KERNEL_EMIT": "1",
        "PCC_DIRECT_INDEXED_NATIVE_OBJECT": "1",
    }
    assert actual["PCC_WORKER_TREE_BUDGET_BYTES"] == "2147483648"
    assert actual["PCC_PYTHON_IR_PASSES"] == "off"


@pytest.mark.parametrize("accepted", [False, True])
def test_emitted_application_requires_core_x86_64_elf_admission(tmp_path, accepted):
    artifact = tmp_path / "synthetic"
    data = b"synthetic application bytes, never executed"
    artifact.write_bytes(data)
    calls = []
    def strict_elf(value):
        assert value == data
        calls.append("strict-x86_64")
        if not accepted:
            raise ValueError("requires static x86_64 ET_EXEC header")
        return {"machine": 62}
    def dependency(path):
        assert calls == ["strict-x86_64"] and path == artifact
        calls.append("dependencies")
        return {"no_dynamic_dependencies": True}
    verifier = SimpleNamespace(_static_elf64=strict_elf,
                               producer=SimpleNamespace(dependency_receipt=dependency))
    if accepted:
        assert ci.application_receipt(verifier, artifact)["platform"]["machine"] == 62
        assert calls == ["strict-x86_64", "dependencies"]
    else:
        with pytest.raises(ValueError, match="x86_64"):
            ci.application_receipt(verifier, artifact)
        assert calls == ["strict-x86_64"]


@pytest.mark.parametrize("field,value", [("pcc_commit", "main"), ("pcc_tree", ""), ("pcc_commit", "A" * 40)])
def test_mutable_source_selection_is_rejected_before_output(orchestration, field, value):
    args, _, _, _, _ = orchestration
    setattr(args, field, value)
    with pytest.raises(ValueError, match="immutable"):
        ci.run(args)
    assert not args.output.exists()


def test_outputs_inside_sources_are_rejected_before_creation(orchestration):
    args, _, _, _, _ = orchestration
    args.output = args.pcc_source / "output"
    with pytest.raises(ValueError, match="outside both"):
        ci.run(args)
    assert not args.output.exists()


@pytest.mark.parametrize("failure", [None, "timeout", "cleanup", "budget"])
def test_outer_guard_is_required_before_measured_status(orchestration, monkeypatch, failure):
    args, _, _, _, _ = orchestration
    captured = []
    def run(argv, **kwargs):
        captured.append(argv)
        guard = Path(argv[argv.index("--result") + 1])
        process = {"status": "COMPLETE", "returncode": 0, "timeout_s": 1800,
                   "max_tree_rss_bytes": 2147483648, "peak_tree_rss_bytes": 1,
                   "post_exit_cleanup_pids": []}
        if failure == "timeout": process["status"] = "TIMEOUT"
        if failure == "cleanup": process["post_exit_cleanup_pids"] = [123]
        if failure == "budget": process["max_tree_rss_bytes"] += 1
        ci.save(guard, process)
        ci.run(args)
        return subprocess.CompletedProcess(argv, 0)
    monkeypatch.setattr(ci.subprocess, "run", run)
    if failure:
        with pytest.raises(ValueError):
            ci.guarded_run(args)
        assert json.loads((args.output / "report.json").read_text())["status"] == "FAILED"
        assert not json.loads((args.output / "comparison.json").read_text())["complete"]
    else:
        assert ci.guarded_run(args) == 0
        assert json.loads((args.output / "report.json").read_text())["status"] == "MEASURED"
        measured = json.loads((args.output / "comparison.json").read_text())
        assert measured["complete"] and measured["status"] == "COMPLETE"
        assert "process_watchdog" in measured["native_source_qualification"]
    command = captured[0]
    assert "--no-performance-lock" in command and "--inside-guard" in command
    assert command[command.index("--timeout") + 1] == "1800"
    assert command[command.index("--max-tree-rss-bytes") + 1] == "2147483648"
    assert str(args.pcc_source.resolve()) in command


def test_build_uses_one_owned_runtime_and_existing_stage1_caps(orchestration, monkeypatch):
    args, _, _, verifier, _ = orchestration
    args.output = args.output.with_name("native-build")
    calls = []
    monkeypatch.setattr(build, "ROOT", ci.ROOT)
    monkeypatch.setattr(build, "source_identity", ci.source_identity)
    monkeypatch.setattr(build, "linux_timer_identity", ci.compare.linux_timer_identity)
    def prepare(output, archive, env):
        calls.append("runtime")
        assert output == args.output and env["PCC_WITH_THREADS"] == "0"
        assert archive == output / "runtime/libpy_runtime_pcc_py.a"
        return {"path": str(archive)}
    gate = SimpleNamespace(environment=lambda: ci.environment(args.pcc_source,
        args.output / "runtime/libpy_runtime_pcc_py.a"), prepare_runtime=prepare)
    def verify(receipt, **kwargs):
        calls.append("admit")
        assert receipt == args.output / "bootstrap/shared/receipt.json"
        assert kwargs["compiler"] == args.output / "bootstrap/shared/pcc1"
        assert kwargs["runtime_archive"] == args.output / "runtime/libpy_runtime_pcc_py.a"
        assert kwargs["threads"] is False and kwargs["gc_backend"] == 0
        return {"qualification": "synthetic Stage1"}
    verifier.verify_platform_compiler = verify
    monkeypatch.setattr(build, "load_core_module", lambda core, name: verifier if name == "verify_pcc1_platform" else gate)
    def run(command, **kwargs):
        calls.append("stage1")
        for flag, value in (("--gc", "0"), ("--stage", "1"), ("--timeout", "6000"),
            ("--stage1-timeout", "7200"), ("--rss-limit", "17179869184"), ("--cpu-budget", "4")):
            assert command[command.index(flag) + 1] == value
        assert "--allow-dirty" not in command and "--lock-held" not in command
        assert kwargs["check"] is True and kwargs["cwd"] == args.pcc_source
        return subprocess.CompletedProcess(command, 0)
    monkeypatch.setattr(build.subprocess, "run", run)
    assert build.run(args) == 0 and calls == ["runtime", "stage1", "admit"]
    assert json.loads((args.output / "report.json").read_text())["status"] == "ADMITTED_STAGE1"


def test_missing_observer_fails_before_long_bootstrap(orchestration, monkeypatch):
    args, _, _, _, _ = orchestration
    monkeypatch.setattr(build, "ROOT", ci.ROOT)
    monkeypatch.setattr(build, "source_identity", ci.source_identity)
    def unavailable():
        raise ValueError("native GNU time unavailable")
    monkeypatch.setattr(build, "linux_timer_identity", unavailable)
    monkeypatch.setattr(build, "load_core_module", lambda *a: pytest.fail("must reject before core build imports"))
    with pytest.raises(ValueError, match="unavailable"):
        build.run(args)
    assert json.loads((args.output / "report.json").read_text())["status"] == "FAILED"


def test_source_gate_preserves_exact_default_selection_without_building(orchestration, monkeypatch):
    args, _, _, verifier, _ = orchestration
    args.validate_source = True
    monkeypatch.setattr(build, "ROOT", ci.ROOT)
    monkeypatch.setattr(build, "source_identity", ci.source_identity)
    monkeypatch.setattr(build, "linux_timer_identity", ci.compare.linux_timer_identity)
    monkeypatch.setattr(build, "interpreter_identity", ci.interpreter_identity)
    monkeypatch.setattr(build, "source_test_dependencies", lambda root: {"pytest-xdist": "3.8.0"})
    calls = []
    def run_tests(output, name, nodes, env, **kwargs):
        calls.append("source-tests")
        assert output == args.output and name == "verifier-contracts"
        assert nodes == build.SOURCE_TESTS
        assert kwargs == {"counts": (109, 31, 21, 14), "timeout": 120}
        assert "PCC_RUNTIME_ARCHIVE" not in env and env["PCC_TEST_NO_NATIVE_PROVISIONING"] == "1"
        return ["synthetic selected node"]
    gate = SimpleNamespace(environment=lambda: ci.environment(args.pcc_source, Path("unused")),
                           run_pytest=run_tests)
    monkeypatch.setattr(build, "load_core_module", lambda core, name: verifier if name == "verify_pcc1_platform" else gate)
    monkeypatch.setattr(build.subprocess, "run", lambda *a, **k: pytest.fail("source gate must not build Stage1"))
    assert build.run(args) == 0 and calls == ["source-tests"]
    assert json.loads((args.output / "report.json").read_text())["status"] == "SOURCE_TESTS_PASSED"


@pytest.mark.parametrize("changed", [False, True])
def test_source_gate_checks_installed_test_versions_against_selected_lock(tmp_path, monkeypatch, changed):
    names = ("pytest", "pytest-xdist", "execnet", "iniconfig", "packaging", "pluggy", "pygments")
    (tmp_path / "uv.lock").write_text("\n".join('[[package]]\nname="' + name + '"\nversion="1.2.3"' for name in names))
    monkeypatch.setattr(build.importlib.metadata, "version", lambda name: "wrong" if changed and name == "pytest-xdist" else "1.2.3")
    if changed:
        with pytest.raises(ValueError, match="selected core lock"):
            build.source_test_dependencies(tmp_path)
    else:
        assert build.source_test_dependencies(tmp_path) == {name: "1.2.3" for name in names}


def test_native_workflow_is_pinned_bounded_and_retains_real_binary_bytes():
    text = (ROOT / ".github/workflows/native-comparison.yml").read_text()
    assert "branches: [main]" in text and "workflow_dispatch:" in text
    assert ".ci/pcc-native-source.json" in text and "steps.pcc.outputs.commit" in text
    assert "steps.pcc.outputs.tree" in text
    assert "contents: read" in text and "secrets." not in text
    assert "cancel-in-progress: false" in text and "timeout-minutes: 360" in text
    assert "python-version: '3.13'" in text and "python-version: '3.15.0-rc.1'" in text
    assert "--require-hashes" in text and "persist-credentials: false" in text
    assert "ci_native_build.py" in text and "ci_native_comparison.py" in text
    assert "if: always()" in text and "bootstrap/shared/pcc1" in text
    assert "runtime/libpy_runtime_pcc_py.a*" in text and "bootstrap/shared/*.log*" in text
    assert "bootstrap/shared/*.resources.jsonl" in text and "bootstrap/gc0/*.resources.jsonl" in text
    assert "bootstrap/shared/canary1" in text and "native-comparison-watchdog/" in text
    uses = re.findall(r"uses: (\S+)", text)
    assert len(uses) == 6 and all(re.fullmatch(r"actions/[a-z-]+@[a-f0-9]{40}", value) for value in uses)
    assert "ci_native_build.py --validate-source" in text
    assert text.index("ci_native_build.py --validate-source") < text.index("Build and admit one source-matched")
    requirements = (ROOT / ".ci/requirements-native-source.txt").read_text()
    assert set(re.findall(r"^([a-z-]+)==", requirements, re.MULTILINE)) == {
        "pytest", "pytest-xdist", "execnet", "colorama", "iniconfig", "packaging", "pluggy", "pygments"}
    assert requirements.count("--hash=sha256:") == 8 and "--only-binary :all:" in requirements
    pin = json.loads((ROOT / ".ci/pcc-native-source.json").read_text())
    assert pin["repository"] == "ikshengmin/pcc" and pin["receipt_schema"] == "pcc.platform-bootstrap.v1"
    assert all(re.fullmatch("[0-9a-f]{40}", pin[field]) for field in ("commit", "tree"))


def test_gateway_helpers_do_not_pollute_core_scripts_namespace():
    assert ci._HELPERS.__name__ == "gateway_ci_helpers"
    text = (ROOT / "scripts/ci_native_comparison.py").read_text()
    assert "from scripts.ci_gateway import" not in text
