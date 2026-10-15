"""Build one source-pinned Linux Stage1 with the existing PCC producers.

This is a CI build prerequisite, never a throughput or fixed-point verdict.
Runtime and Stage1 keep the existing core watchdogs, budgets and lock owners.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import importlib.metadata
import os
from pathlib import Path
import subprocess
import sys
import tomllib

from ci_native_comparison import (ROOT, environment, interpreter_identity, load_core_module,
                                  native_admission_environment, save, selection,
                                  sha, source_identity)
from benchmarks.resource_usage import linux_timer_identity

SOURCE_TESTS = (
    "tests/python/test_pcc1_platform_admission.py",
    "tests/python/test_platform_bootstrap_shared.py",
    "tests/python/test_platform_bootstrap_failure_receipts.py",
    "tests/python/test_pcc_stage1_build_tool.py",
)
SOURCE_TEST_COUNTS = (109, 31, 21, 14)


def source_test_dependencies(core):
    names = {"pytest", "pytest-xdist", "execnet", "iniconfig", "packaging", "pluggy", "pygments"}
    lock = tomllib.loads((core / "uv.lock").read_text())
    expected = {row["name"]: row["version"] for row in lock["package"] if row["name"] in names}
    actual = {name: importlib.metadata.version(name) for name in names}
    if actual != expected:
        raise ValueError("source-test dependencies differ from the selected core lock")
    return actual


def run(args):
    core, output = selection(args)
    output.mkdir(parents=True, exist_ok=False)
    source_tests = getattr(args, "validate_source", False)
    report = {"schema": "pcc-gateway.native-source-tests.v1" if source_tests else "pcc-gateway.native-build.v1", "status": "RUNNING",
              "started_utc": datetime.now(timezone.utc).isoformat(),
              "runner_sha256": sha(__file__),
              "qualification": "build prerequisite only; no benchmark or fixed point"}
    save(output / "report.json", report)
    try:
        report["gateway"] = source_identity(ROOT)
        report["pcc"] = source_identity(core, {"commit": args.pcc_commit, "tree": args.pcc_tree})
        report["host_python"] = {"executable": sys.executable, "version": sys.version,
                                  "sha256": sha(sys.executable)}
        if source_tests:
            report["python"] = interpreter_identity()
            report["source_test_dependencies"] = source_test_dependencies(core)
        # Reject an unexecutable comparison lane before the expensive bootstrap.
        report["resource_observer"] = linux_timer_identity()
        sys.path.insert(0, str(core))
        verifier = load_core_module(core, "verify_pcc1_platform")
        gate = load_core_module(core, "ci_worker_size_prior_gate")
        archive = output / "runtime/libpy_runtime_pcc_py.a"
        env = environment(core, archive)
        with native_admission_environment(env):
            env = gate.environment()
        env.update(PYTHONPATH=os.pathsep.join((str(core), str(ROOT))), PYTHONDONTWRITEBYTECODE="1")
        report["environment"] = {key: value for key, value in env.items() if key.startswith("PCC_")}
        save(output / "report.json", report)
        if source_tests:
            env.pop("PCC_RUNTIME_ARCHIVE", None)
            # Keep the selected core's default six-worker/loadgroup schedule.
            # Its own helper verifies every selected node, all three outcomes,
            # zero skips, exact file counts and process-tree termination.
            report["selected_tests"] = gate.run_pytest(
                output, "verifier-contracts", SOURCE_TESTS, env,
                counts=SOURCE_TEST_COUNTS, timeout=120)
            if source_identity(ROOT) != report["gateway"] or source_identity(core) != report["pcc"]:
                raise ValueError("source changed during verifier contracts")
            report["qualification"] = "source/receipt controls only; no native compiler execution"
            report["status"] = "SOURCE_TESTS_PASSED"
            return 0
        # This helper owns a 1200-second / 16-GiB guard and its own lock.
        # It builds one baseline single-thread archive, then checks provenance.
        with native_admission_environment(env):
            report["runtime"] = gate.prepare_runtime(output, archive, env)
        save(output / "report.json", report)
        bootstrap = output / "bootstrap"
        command = [sys.executable, str(core / "scripts/bootstrap_platform.py"),
                   "--gc", "0", "--stage", "1", "--out-dir", str(bootstrap),
                   "--runtime-archive", str(archive), "--timeout", "6000",
                   "--stage1-timeout", "7200", "--rss-limit", "17179869184",
                   "--cpu-budget", "4"]
        report["command"] = command
        save(output / "report.json", report)
        # bootstrap_platform owns its process-tree guard and performance lock;
        # nesting another lock around it would reject the legitimate producer.
        with (output / "bootstrap.stdout").open("w") as stdout, (output / "bootstrap.stderr").open("w") as stderr:
            subprocess.run(command, cwd=core, env=env, stdout=stdout, stderr=stderr, check=True)
        with native_admission_environment(env):
            report["artifacts"] = verifier.verify_platform_compiler(
                bootstrap / "shared/receipt.json", compiler=bootstrap / "shared/pcc1",
                runtime_archive=archive, source_root=core, gc_backend=0,
                threads=False, refcount="atomic")
        if source_identity(ROOT) != report["gateway"] or source_identity(core) != report["pcc"]:
            raise ValueError("source changed during native build")
        report["status"] = "ADMITTED_STAGE1"
        return 0
    except BaseException as exc:
        report["status"] = "FAILED"
        report["error"] = type(exc).__name__ + ": " + str(exc)
        raise
    finally:
        report["finished_utc"] = datetime.now(timezone.utc).isoformat()
        save(output / "report.json", report)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("pcc-source", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    for name in ("pcc-commit", "pcc-tree"):
        parser.add_argument("--" + name, required=True)
    parser.add_argument("--validate-source", action="store_true", help="run only the exact pre-bootstrap receipt controls")
    return run(parser.parse_args(argv))


if __name__ == "__main__":
    raise SystemExit(main())
