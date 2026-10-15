"""Admit a current Linux Stage1, then measure real pcc1 against asyncio.

The entry point uses PCC's existing 1800-second/2-GiB process-tree watchdog.
This command never builds a compiler or runtime, never substitutes a host
compiler, and never admits a fixed point.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import importlib.util
import json
import math
import os
from pathlib import Path
import platform
import re
import statistics
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))

from benchmarks import compare
from benchmarks.processes import run_command

# Core admission rejects a mixed scripts.* namespace. Keep gateway helpers in
# an explicit file-loaded namespace, including when this file is run directly.
_SPEC = importlib.util.spec_from_file_location("gateway_ci_helpers", ROOT / "scripts/ci_gateway.py")
_HELPERS = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(_HELPERS)
interpreter_identity = _HELPERS.interpreter_identity
native_admission_environment = _HELPERS.native_admission_environment
save, sha, source_identity = _HELPERS.save, _HELPERS.sha, _HELPERS.source_identity

OUTSIDE_SCOPE = ["full GC0-4 qualification", "Stage2/Stage3 fixed point",
                 "full asyncio compatibility", "live HTTP/HTTPS throughput"]


def environment(core, runtime):
    env = {key: value for key, value in os.environ.items() if not key.startswith("PCC_")}
    env.pop("LC_ALL", None)
    env.update(
        PYTHONPATH=os.pathsep.join((str(core), str(ROOT))), PYTHONDONTWRITEBYTECODE="1",
        PCC_SOURCE_ROOT=str(core), PCC_REPO_ROOT=str(core), PCC_NO_AUTO_PCC1="1",
        PCC_GC_BACKEND="0", PCC_WITH_THREADS="0", PCC_REFCOUNT_KIND="atomic",
        PCC_PY_FRONTEND_IR_CACHE="0", PCC_SELF_BACKEND_OBJECT_CACHE="0",
        PCC_RUNTIME_CC="pcc", PCC_RUNTIME_HIGH="py", PCC_RUNTIME_BUILD="owned",
        PCC_SELF_LINK="pcc", PCC_SELF_OBJ="pcc", PCC_IR_TO_OBJ_EMITTER="pcc",
        PCC_PYTHON_IR_PASSES="off", PCC_RUNTIME_ARCHIVE=str(runtime),
        PCC_TEST_NO_NATIVE_PROVISIONING="1",
    )
    # The outer process-tree guard publishes these for worker admission and
    # orphan recovery. They are resource controls, not compiler experiments.
    for name in ("PCC_WORKER_TREE_BUDGET_BYTES", "PCC_WORKER_TREE_STATE_PATH", "PCC_WORKER_TREE_RECOVERY"):
        if name in os.environ:
            env[name] = os.environ[name]
    return env


def native_compile_environment(admitted_environment, output):
    """Use the platform producer's native-canary emission route explicitly.

    The baseline admission profile is unchanged. Capture/emission select the
    owned indexed path rather than the ordinary text render/parse path; native
    object output is the producer's existing default. No diagnostic pass,
    deferred owner or larger resource budget is introduced.
    """
    return dict(admitted_environment,
                PCC_RUNTIME_CC="/usr/bin/false",
                PCC_HOST_PYTHON=str(output / "forbidden-host-python"),
                PCC_DIRECT_INDEXED_KERNEL_CAPTURE="1",
                PCC_DIRECT_INDEXED_KERNEL_EMIT="1",
                PCC_DIRECT_INDEXED_NATIVE_OBJECT="1")


def selection(args):
    core, output = args.pcc_source.resolve(strict=True), args.output.resolve()
    if sys.platform != "linux" or platform.machine().lower() not in ("x86_64", "amd64"):
        raise ValueError("this comparison lane requires Linux x86_64")
    if output == ROOT or ROOT in output.parents or core == output or core in output.parents:
        raise ValueError("keep comparison outputs outside both source checkouts")
    if not all(re.fullmatch("[0-9a-f]{40}", value) for value in (args.pcc_commit, args.pcc_tree)):
        raise ValueError("an exact immutable PCC commit and tree are required")
    return core, output


def load_core_module(core, name):
    # Avoid importing gateway/scripts as core/scripts when executing this file.
    path = core / "scripts" / (name + ".py")
    spec = importlib.util.spec_from_file_location("gateway_core_" + name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def application_receipt(verifier, path):
    # dependency_receipt alone accepts either Linux ELF machine. The selected
    # compiler/runtime lane is specifically x86_64, including emitted apps.
    platform_receipt = verifier._static_elf64(Path(path).read_bytes())
    return {"platform": platform_receipt, "dependencies": verifier.producer.dependency_receipt(path)}


def verify_selection(report, *, pending=False):
    """Only the exact repeated pcc1/TaskGroup matrix can receive an outcome."""
    status = "PENDING_PROCESS_CLEANUP" if pending else "COMPLETE"
    if report.get("status") != status or report.get("complete") is not (not pending):
        raise ValueError("comparison is incomplete")
    if set(report["compilers"]) != {"pcc1"} or report.get("skipped_arms"):
        raise ValueError("comparison must execute pcc1 without a host fallback")
    if report["repeats"] != 5 or report["warmup_batches"] != 2:
        raise ValueError("comparison repetition/warmup contract drifted")
    expected = {(label, delay, concurrency) for label in ("pcc1", "asyncio")
                for delay in (0, 100) for concurrency in (1, 10, 100)}
    actual = {(row["implementation"], row["delay_ms"], row["concurrency"])
              for row in report["summary"]}
    if actual != expected or len(report["summary"]) != len(expected) or len(report["runs"]) != 60:
        raise ValueError("comparison matrix is incomplete or changed")
    for label, delay, concurrency in expected:
        rows = [row for row in report["runs"] if
                (row["implementation"], row["delay_ms"], row["concurrency"]) == (label, delay, concurrency)]
        if len(rows) != 5 or {row["repetition"] for row in rows} != set(range(5)):
            raise ValueError("comparison repetition selection drifted")
        if any("resource_receipt" not in row or type(row.get("process_peak_rss_bytes")) is not int
               or row["process_peak_rss_bytes"] <= 0 for row in rows):
            raise ValueError("comparison lacks command memory evidence")
        rounds = max(10, math.ceil(5000 / concurrency)) if delay == 0 else 10
        for row in rows:
            compare.validate_measurement(row, concurrency=concurrency, delay_ms=delay, rounds=rounds)
        summary = next(row for row in report["summary"] if
                       (row["implementation"], row["delay_ms"], row["concurrency"]) == (label, delay, concurrency))
        samples = [sample for row in rows for sample in row["latencies_ms"]]
        recalculated = {
            "requests_per_second_median": statistics.median(row["requests"] * 1000 / row["elapsed_ms"] for row in rows),
            "p50_ms": compare.percentile(samples, .5), "p95_ms": compare.percentile(samples, .95),
            "p99_ms": compare.percentile(samples, .99),
            "process_peak_rss_bytes_median": statistics.median(row["process_peak_rss_bytes"] for row in rows),
        }
        if any(summary.get(key) != value for key, value in recalculated.items()):
            raise ValueError("comparison summary does not match its retained raw samples")
    outcomes = []
    for delay in (0, 100):
        for concurrency in (1, 10, 100):
            rows = {row["implementation"]: row for row in report["summary"]
                    if row["delay_ms"] == delay and row["concurrency"] == concurrency}
            for row in rows.values():
                for field in ("requests_per_second_median", "p50_ms", "p95_ms", "p99_ms",
                              "process_peak_rss_bytes_median"):
                    value = row[field]
                    if (isinstance(value, bool) or not isinstance(value, (int, float))
                            or not math.isfinite(value) or value < 0
                            or (field in ("requests_per_second_median", "process_peak_rss_bytes_median") and value == 0)):
                        raise ValueError("invalid comparison summary: " + field)
            rate = rows["pcc1"]["requests_per_second_median"] / rows["asyncio"]["requests_per_second_median"]
            outcomes.append({"delay_ms": delay, "concurrency": concurrency,
                             "pcc1_to_asyncio_median_qps_ratio": rate,
                             "native_median_higher": rate > 1})
    return outcomes


def run_cleanup_canary(compiler, env, output, dependency_receipt):
    source = ROOT / "tests/fixtures/gateway/structured_scope_app.py"
    artifact = output / "structured-scope-canary"
    command = [str(compiler), "--backend", "self", "--python-libpython", "off",
               "--ir-scaffold", "on", str(source), "-o", str(artifact)]
    compiled = run_command(command, cwd=ROOT, env=env, timeout=300, text=True, capture_output=True)
    (output / "cleanup-compile.stdout").write_text(compiled.stdout)
    (output / "cleanup-compile.stderr").write_text(compiled.stderr)
    if compiled.returncode:
        raise RuntimeError("native structured failure-cleanup canary compilation failed")
    dependencies = dependency_receipt(artifact)
    ran = run_command([str(artifact)], cwd=ROOT, env=env, timeout=15, text=True, capture_output=True)
    (output / "cleanup-run.stdout").write_text(ran.stdout)
    (output / "cleanup-run.stderr").write_text(ran.stderr)
    if ran.returncode or ran.stdout.strip() != "PCC1_STRUCTURED_FAILURE_CLEANUP_OK":
        raise RuntimeError("native child failure/cancellation/rejected-fork cleanup canary failed")
    return {"command": command, "source_sha256": sha(source), "artifact": str(artifact),
            "artifact_sha256": sha(artifact), "dependencies": dependencies,
            "compile_returncode": compiled.returncode, "run_returncode": ran.returncode,
            "stdout": ran.stdout, "scope": "native failure propagation, sibling cancellation and rejected-fork cleanup"}


def run(args):
    core, output = selection(args)
    output.mkdir(parents=True, exist_ok=False)
    report = {"schema": "pcc-gateway.native-comparison.v1", "status": "RUNNING",
              "started_utc": datetime.now(timezone.utc).isoformat(),
              "native_validation": "NOT_RUN", "performance_outcome": "NOT_MEASURED",
              "outside_scope": OUTSIDE_SCOPE, "runner_sha256": sha(__file__)}
    save(output / "report.json", report)
    comparison_path = output / "comparison.json"
    try:
        report["python"] = interpreter_identity()
        report["gateway"] = source_identity(ROOT)
        report["pcc"] = source_identity(core, {"commit": args.pcc_commit, "tree": args.pcc_tree})
        # Fail before any native compilation when the actual observer is absent.
        report["resource_observer"] = compare.linux_timer_identity()
        sys.path.insert(0, str(core))
        verifier = load_core_module(core, "verify_pcc1_platform")
        producer = verifier.producer
        compiler = args.pcc1.resolve(strict=True)
        runtime = args.runtime.resolve(strict=True)
        env = environment(core, runtime)
        with native_admission_environment(env):
            artifacts = verifier.verify_platform_compiler(
                args.receipt.resolve(strict=True), compiler=compiler, runtime_archive=runtime,
                source_root=core, gc_backend=0, threads=False, refcount="atomic")
        report["artifacts"] = artifacts
        report["native_validation"] = "SOURCE_MATCHED_STAGE1_ADMITTED"
        save(output / "report.json", report)
        # Missing runtime bytes must fail rather than silently provisioning a
        # replacement, and native compilation must not invoke a host Python.
        run_env = native_compile_environment(env, output)
        report["execution_environment"] = {k: v for k, v in run_env.items() if k.startswith("PCC_")}
        validate_application = lambda path: application_receipt(verifier, path)
        with producer.performance_lock():
            report["cleanup_canary"] = run_cleanup_canary(
                compiler, run_env, output, validate_application)
            save(output / "report.json", report)
            comparison_args = argparse.Namespace(
                pcc=None, pcc1=str(compiler), compiler_source=core,
                runtime_archive=runtime, pcc1_binary=compiler, pcc1_receipt=None,
                include_asyncio_vthread=False, rounds=10, zero_delay_requests=5000,
                repeats=5, output=comparison_path, build_dir=output / "build",
            )
            compare.compare(comparison_args, core, [1, 10, 100], [0, 100], argparse.ArgumentParser(),
                            environment=run_env, artifact_validator=validate_application, pending_completion=True)
        measured = json.loads(comparison_path.read_text())
        outcomes = verify_selection(measured, pending=True)
        with native_admission_environment(env):
            after = verifier.verify_platform_compiler(
                args.receipt.resolve(strict=True), compiler=compiler, runtime_archive=runtime,
                source_root=core, gc_backend=0, threads=False, refcount="atomic")
        if after != artifacts or source_identity(ROOT) != report["gateway"] or source_identity(core) != report["pcc"]:
            raise ValueError("source or admitted native artifacts changed during comparison")
        if sha(report["cleanup_canary"]["artifact"]) != report["cleanup_canary"]["artifact_sha256"]:
            raise ValueError("cleanup canary changed during comparison")
        for row in measured["compilers"].values():
            if sha(row["command"][-1]) != row["artifact_sha256"]:
                raise ValueError("compiled benchmark changed during comparison")
        measured["native_source_qualification"] = {
            "status": "PENDING_PROCESS_CLEANUP",
            "receipt_sha256": sha(args.receipt), "pcc_commit": args.pcc_commit,
            "outside_scope": OUTSIDE_SCOPE,
        }
        save(comparison_path, measured)
        compare.write_markdown(comparison_path, measured)
        report["comparison"] = {"path": str(comparison_path), "sha256": sha(comparison_path)}
        report["outcomes"] = outcomes
        report["native_validation"] = "NATIVE_CLEANUP_AND_MATCHED_WORK_PASSED"
        report["performance_outcome"] = ("NATIVE_MEDIAN_HIGHER_IN_ALL_CELLS" if
                                          all(row["native_median_higher"] for row in outcomes)
                                          else "NATIVE_MEDIAN_NOT_HIGHER_IN_ALL_CELLS")
        report["status"] = "MEASURED_PENDING_PROCESS_CLEANUP"
        return 0
    except BaseException as exc:
        report["status"] = "FAILED"
        report["error"] = type(exc).__name__ + ": " + str(exc)
        if comparison_path.is_file():
            try:
                measured = json.loads(comparison_path.read_text())
                measured["complete"] = False
                measured["status"] = "FAILED"
                measured["native_source_qualification"] = "NOT_ESTABLISHED: admission or final verification failed"
                save(comparison_path, measured)
                compare.write_markdown(comparison_path, measured)
            except (OSError, ValueError, KeyError, TypeError) as invalid:
                report["comparison_error"] = type(invalid).__name__ + ": " + str(invalid)
        raise
    finally:
        report["finished_utc"] = datetime.now(timezone.utc).isoformat()
        save(output / "report.json", report)


def guarded_run(args):
    core, output = selection(args)
    # Verify the selected source before executing even its watchdog script.
    gateway_source = source_identity(ROOT)
    core_source = source_identity(core, {"commit": args.pcc_commit, "tree": args.pcc_tree})
    guard = output.with_name(output.name + "-watchdog")
    guard.mkdir(parents=True, exist_ok=False)
    command = [sys.executable, str(Path(__file__).resolve()), "--inside-guard"]
    for name in ("pcc_source", "pcc_commit", "pcc_tree", "pcc1", "receipt", "runtime", "output"):
        value = getattr(args, name)
        command.extend(("--" + name.replace("_", "-"), str(value.resolve() if isinstance(value, Path) else value)))
    argv = [sys.executable, str(core / "scripts/run_process_tree_sample.py"),
            "--result", str(guard / "process.json"), "--samples", str(guard / "samples.tsv"),
            "--stdout", str(guard / "comparison.stdout"), "--stderr", str(guard / "comparison.stderr"),
            "--cwd", str(ROOT), "--timeout", "1800", "--max-tree-rss-bytes", "2147483648",
            "--no-performance-lock", "--", *command]
    save(guard / "command.json", {"argv": argv, "gateway": gateway_source, "pcc": core_source})
    try:
        result = subprocess.run(argv, cwd=ROOT, env=dict(os.environ, PYTHONDONTWRITEBYTECODE="1"))
        for name in ("comparison.stdout", "comparison.stderr"):
            path = guard / name
            if path.is_file():
                print(path.read_text(), end="", flush=True)
        process = json.loads((guard / "process.json").read_text())
        _HELPERS.verify_guard(process, timeout=1800)
        if result.returncode:
            raise ValueError("comparison process-tree guard failed")
        report = json.loads((output / "report.json").read_text())
        if report["status"] != "MEASURED_PENDING_PROCESS_CLEANUP":
            raise ValueError("comparison did not complete the admitted native selection")
        report["process_watchdog"] = {"path": str(guard / "process.json"), "sha256": sha(guard / "process.json")}
        path = output / "comparison.json"
        if sha(path) != report["comparison"]["sha256"]:
            raise ValueError("pending comparison changed before watchdog admission")
        measured = json.loads(path.read_text())
        verify_selection(measured, pending=True)
        measured.update(complete=True, status="COMPLETE")
        measured["native_source_qualification"].update(
            status="CURRENT_SOURCE_PLATFORM_STAGE1_AND_CLEANUP_CANARY",
            process_watchdog=report["process_watchdog"],
        )
        save(path, measured)
        compare.write_markdown(path, measured)
        report["comparison"]["sha256"] = sha(path)
        report["status"] = "MEASURED"
        save(output / "report.json", report)
        return 0
    except BaseException as exc:
        # Even an otherwise complete child report cannot survive a failed
        # whole-tree exit/cleanup contract as qualified comparison evidence.
        report_path = output / "report.json"
        report = json.loads(report_path.read_text()) if report_path.is_file() else {}
        report.update(status="FAILED", performance_outcome="NOT_ESTABLISHED",
                      process_watchdog_error=type(exc).__name__ + ": " + str(exc))
        save(report_path, report)
        path = output / "comparison.json"
        if path.is_file():
            measured = json.loads(path.read_text())
            measured.update(complete=False, status="FAILED",
                            native_source_qualification="NOT_ESTABLISHED: process-tree guard failed")
            save(path, measured)
            compare.write_markdown(path, measured)
        raise


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("pcc-source", "pcc1", "receipt", "runtime", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--pcc-commit", required=True)
    parser.add_argument("--pcc-tree", required=True)
    parser.add_argument("--inside-guard", action="store_true", help=argparse.SUPPRESS)
    args = parser.parse_args(argv)
    return run(args) if args.inside_guard else guarded_run(args)


if __name__ == "__main__":
    raise SystemExit(main())
