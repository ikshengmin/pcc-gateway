"""Bounded gateway CI, with host evidence separate from prebuilt native gates.

Never install/build PCC here. Native admission consumes a complete successful
core Stage1 v3 receipt and exact-source runtime archives; it never finds a
compiler by PATH, mtime or an unpinned 'latest' artifact.
"""

from __future__ import annotations

import argparse
from contextlib import contextmanager
from datetime import datetime, timezone
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import platform
import subprocess
import struct
import sys
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[1]
PIN = ROOT / ".ci" / "pcc-source.json"
NATIVE_NODES = (
    "tests/test_gateway_nonblocking_socket.py::test_current_pcc1_self_no_libpython_virtual_thread_tcp_echo",
    "tests/test_gateway_buffers.py::test_current_pcc1_self_no_libpython_slow_peer_backpressure_gc_matrix",
    "tests/test_gateway_tls_provider.py::test_current_pcc1_self_no_libpython_tls_provider_abi_fixture",
    "tests/test_gateway_http1_codec.py::test_current_pcc1_self_no_libpython_http1_origin_and_security_corpus",
    "tests/test_gateway_reverse_proxy.py::test_current_pcc1_self_no_libpython_streaming_reverse_proxy",
    "tests/test_gateway_dns.py::test_current_pcc1_self_no_libpython_async_dns_proxy_path",
    "tests/test_gateway_server.py::test_current_pcc1_self_no_libpython_product_shaped_gateway_core",
    "tests/test_pcc_web_framework.py::test_current_pcc1_self_no_libpython_declarative_app",
    "tests/test_native_examples.py::test_documented_native_example[local_http_app.py-PCC1_GATEWAY_HTTP1_LOCAL_OK-pcc1]",
    "tests/test_native_examples.py::test_documented_native_example[dashboard_app.py-PCC1_DASHBOARD_STRUCTURED_OK-pcc1]",
    "tests/test_native_examples.py::test_documented_native_example[tests/fixtures/gateway/structured_scope_app.py-PCC1_STRUCTURED_FAILURE_CLEANUP_OK-pcc1]",
)
OUTSIDE_NATIVE_SCOPE = (
    "core test_async_await.py and full async-for/async-with/await coverage",
    "core coroutine ownership/closures and exception-root qualification",
    "core full GC0-4 runtime and self-host qualification",
    "live HTTPS, certificate reload and product drain canary",
    "external clang socket-reference probes",
    "host-pcc example arm",
    "throughput comparison, uvloop and any performance victory claim",
)


def sha(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")
    temporary.replace(path)


def git(root, *args):
    return subprocess.check_output(["git", "-C", str(root), *args], text=True,
                                   stderr=subprocess.PIPE, timeout=15).strip()


def source_identity(root, expected=None):
    root = Path(root).resolve(strict=True)
    if Path(git(root, "rev-parse", "--show-toplevel")).resolve() != root:
        raise ValueError("source must be its own Git checkout: " + str(root))
    commit, tree = git(root, "rev-parse", "HEAD"), git(root, "rev-parse", "HEAD^{tree}")
    dirty = git(root, "status", "--porcelain", "--untracked-files=all")
    if dirty:
        raise ValueError("CI requires clean source: " + str(root))
    if expected and (commit != expected["commit"] or tree != expected["tree"]):
        raise ValueError("PCC checkout does not match .ci/pcc-source.json")
    return {"path": str(root), "commit": commit, "tree": tree, "clean": True}


def interpreter_identity():
    declared = (ROOT / ".python-version").read_text().strip()
    actual = platform.python_version()
    if platform.python_implementation() != "CPython" or actual != declared:
        raise ValueError(f"host validation requires CPython {declared}; found {actual}")
    if importlib.metadata.version("pytest") != "9.0.3":
        raise ValueError("use the frozen pytest dependency set")
    return {"executable": sys.executable, "sha256": sha(sys.executable),
            "version": sys.version, "implementation": platform.python_implementation(),
            "dependencies": {name: importlib.metadata.version(name) for name in
                             ("pytest", "pluggy", "iniconfig", "packaging", "pygments")}}


def environment(core, *, host_only):
    if os.environ.get("PYTEST_ADDOPTS"):
        raise ValueError("PYTEST_ADDOPTS must not override gateway pytest configuration")
    # Inherited compiler experiments cannot silently become qualification settings.
    result = {key: value for key, value in os.environ.items() if not key.startswith("PCC_")}
    result.pop("LC_ALL", None)
    result.update(
        PYTHONPATH=os.pathsep.join((str(ROOT), str(core), str(core / "tests/python"))),
        PYTHONDONTWRITEBYTECODE="1", PYTEST_DISABLE_PLUGIN_AUTOLOAD="1",
        PCC_NO_AUTO_PCC1="1", PCC_GATEWAY_REQUIRE_PREBUILT="1",
        PCC_TEST_NO_NATIVE_PROVISIONING="1",
        PCC_GATEWAY_HOST_ONLY="1" if host_only else "0",
        PCC_SOURCE_ROOT=str(core), PCC_REPO_ROOT=str(core),
        PCC_RUNTIME_HIGH="py", PCC_WITH_THREADS="0", PCC_GC_BACKEND="0",
        PCC_REFCOUNT_KIND="atomic", PCC_PY_FRONTEND_IR_CACHE="0",
        PCC_SELF_BACKEND_OBJECT_CACHE="0",
    )
    return result


@contextmanager
def native_admission_environment(env):
    """Core admission reads os.environ; give it the exact subprocess policy."""
    old = {key: value for key, value in os.environ.items() if key.startswith("PCC_")}
    try:
        for key in old:
            del os.environ[key]
        os.environ.update({key: value for key, value in env.items() if key.startswith("PCC_")})
        yield
    finally:
        for key in list(os.environ):
            if key.startswith("PCC_"):
                del os.environ[key]
        os.environ.update(old)


def pytest_command(output, *, native):
    command = [sys.executable, "-m", "pytest", "-x", "-vv", "--tb=short",
               "--strict-markers", "--junitxml", str(output / "junit.xml")]
    if native:
        # This explicit selection does not stand in for core async/GC gates.
        command += ["-m", "integration", *NATIVE_NODES]
    return command


def junit_counts(path):
    root = ET.parse(path).getroot()
    cases = list(root.iter("testcase"))
    counts = {"tests": len(cases), "failures": 0, "errors": 0, "skipped": 0}
    for case in cases:
        for key, tag in (("failures", "failure"), ("errors", "error"), ("skipped", "skipped")):
            counts[key] += int(case.find(tag) is not None)
    return counts


def verify_guard(result, *, timeout):
    if result.get("status") != "COMPLETE" or result.get("returncode") != 0:
        raise ValueError("pytest/process-tree guard did not complete successfully")
    if result.get("timeout_s") != timeout or result.get("max_tree_rss_bytes") != 2147483648:
        raise ValueError("process-tree guard limits changed")
    if not 0 <= result["peak_tree_rss_bytes"] <= 2147483648:
        raise ValueError("process-tree RSS exceeded its admitted limit")
    if result.get("post_exit_cleanup_pids"):
        raise ValueError("pytest exited before its owned children")


def run_tests(core, output, env, *, native):
    timeout = 1800 if native else 180
    command = pytest_command(output, native=native)
    save(output / "command.json", {"argv": command, "timeout_seconds": timeout})
    guard = [sys.executable, str(core / "scripts/run_process_tree_sample.py"),
             "--result", str(output / "process.json"),
             "--samples", str(output / "samples.tsv"),
             "--stdout", str(output / "pytest.stdout"),
             "--stderr", str(output / "pytest.stderr"),
             "--cwd", str(ROOT), "--timeout", str(timeout),
             "--max-tree-rss-bytes", "2147483648", "--", *command]
    result = subprocess.run(guard, cwd=ROOT, env=dict(
        env, PCC_GATEWAY_COLLECTION_REPORT=str(output / "selection.json"),
    ))
    for name in ("pytest.stdout", "pytest.stderr"):
        path = output / name
        if path.exists():
            print(path.read_text(), end="", flush=True)
    counts = junit_counts(output / "junit.xml") if (output / "junit.xml").is_file() else None
    save(output / "test-counts.json", counts)
    verify_guard(json.loads((output / "process.json").read_text()), timeout=timeout)
    if result.returncode or not counts or not counts["tests"]:
        raise ValueError("pytest did not execute a successful nonempty selection")
    if any(counts[key] for key in ("failures", "errors", "skipped")):
        raise ValueError("CI selection contains a failure, error or skipped test")
    if native and counts["tests"] != len(NATIVE_NODES):
        raise ValueError("native selection drifted from the eleven explicit gateway canaries")
    return counts


def artifact_files(paths, archives):
    files = {str(Path(path).resolve()): sha(path) for path in paths}
    for archive in archives:
        for suffix in (".provenance.json", ".target", ".capi_syms"):
            sidecar = Path(str(Path(archive).resolve()) + suffix)
            files[str(sidecar)] = sha(sidecar) if sidecar.is_file() else None
    return files


def verify_artifact_files(files):
    for name, expected in files.items():
        path = Path(name)
        actual = sha(path) if path.is_file() else None
        if actual != expected:
            raise ValueError("admitted artifact or sidecar changed during validation: " + name)


def admit_native(core, *, compiler, receipt, compiler_runtime, runtime, threaded_runtime):
    """Delegate receipt and archive ownership checks to the pinned core."""
    if sys.platform != "darwin" or platform.machine() != "arm64":
        raise ValueError("initial native lane requires a Darwin arm64 Stage1 v3 receipt")
    compiler = compiler.resolve(strict=True)
    with compiler.open("rb") as stream:
        header = stream.read(16)
    if (not os.access(compiler, os.X_OK) or len(header) != 16
            or struct.unpack("<4I", header)[0:2] != (0xFEEDFACF, 0x0100000C)
            or struct.unpack("<4I", header)[3] != 2):
        raise ValueError("pcc1 must be a native Mach-O arm64 executable, never a wrapper")
    # The caller has checked the clean pinned core before importing these tools.
    sys.path.insert(0, str(core))
    sys.path.insert(0, str(core / "scripts"))
    import run_pcc_compile_ab as receipts
    from tests.runtime_fixture_provenance import _verified_test_runtime_archive

    raw = json.loads(receipt.read_text())
    admitted = receipts._load_build_receipt(
        receipt.resolve(strict=True), arm=raw.get("arm"),
        compiler_sha256=sha(compiler), runtime_sha256=sha(compiler_runtime),
        compiler_size_bytes=compiler.stat().st_size,
    )
    expected_files = {path.relative_to(core).as_posix(): sha(path)
                      for path in receipts.build_source_files(core)}
    if admitted["source_manifest"]["files"] != expected_files:
        raise ValueError("pcc1 receipt source does not match the pinned PCC source")
    archives = {}
    for name, path, threads in (("single", runtime, False), ("threaded", threaded_runtime, True)):
        verified, manifest = _verified_test_runtime_archive(path, threads=threads)
        archives[name] = {"path": str(verified), "sha256": sha(verified),
                          "provenance_sha256": sha(str(verified) + ".provenance.json"),
                          "target_triple": manifest["target_triple"]}
    files = artifact_files(
        (compiler, receipt, compiler_runtime, runtime, threaded_runtime,
         admitted["source_manifest_path"], admitted["stage_result_path"]),
        (compiler_runtime, runtime, threaded_runtime),
    )
    return {"files": files, "compiler": {"path": str(compiler), "sha256": sha(compiler)},
            "receipt": {"path": str(receipt.resolve()), "sha256": sha(receipt),
                        "schema": raw["schema"], "source_manifest_sha256": raw["source_manifest_sha256"]},
            "compiler_runtime": {"path": str(compiler_runtime.resolve()), "sha256": sha(compiler_runtime)},
            "application_runtimes": archives}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("phase", choices=("host", "native-admission", "native"))
    parser.add_argument("--pcc-source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    for name in ("pcc1", "receipt", "compiler-runtime", "runtime", "threaded-runtime"):
        parser.add_argument("--" + name, type=Path)
    args = parser.parse_args(argv)
    output = args.output.resolve()
    if output == ROOT or ROOT in output.parents or args.pcc_source.resolve() in output.parents:
        parser.error("keep CI output outside both source checkouts")
    output.mkdir(parents=True, exist_ok=False)
    report = {"schema": "pcc-gateway.ci.v1", "phase": args.phase, "status": "RUNNING",
              "started_utc": datetime.now(timezone.utc).isoformat(),
              "native_validation": "NOT_RUN", "performance_claim": "NONE",
              "outside_native_scope": list(OUTSIDE_NATIVE_SCOPE)}
    save(output / "report.json", report)
    code = 1
    try:
        core = args.pcc_source.resolve(strict=True)
        report["python"] = interpreter_identity()
        report["gateway"] = source_identity(ROOT)
        report["pcc"] = source_identity(core, json.loads(PIN.read_text()))
        env = environment(core, host_only=args.phase == "host")
        report["compiler_environment"] = {key: value for key, value in env.items() if key.startswith("PCC_")}
        if args.phase != "host":
            if any(getattr(args, name) is None for name in
                   ("pcc1", "receipt", "compiler_runtime", "runtime", "threaded_runtime")):
                raise ValueError("native admission requires explicit pcc1, receipt and all three runtime paths")
            # Use the same effective settings for admission and subsequent tests.
            with native_admission_environment(env):
                report["artifacts"] = admit_native(
                    core, compiler=args.pcc1, receipt=args.receipt,
                    compiler_runtime=args.compiler_runtime, runtime=args.runtime,
                    threaded_runtime=args.threaded_runtime,
                )
            artifacts = report["artifacts"]
            env.update(PCC_CURRENT_PCC1=artifacts["compiler"]["path"],
                       PCC_TEST_PCC1=artifacts["compiler"]["path"],
                       PCC_RUNTIME_ARCHIVE=artifacts["application_runtimes"]["single"]["path"],
                       PCC_THREADED_RUNTIME_ARCHIVE=artifacts["application_runtimes"]["threaded"]["path"])
            report["native_validation"] = "ARTIFACT_ADMITTED_TESTS_NOT_RUN"
        save(output / "report.json", report)
        if args.phase != "native-admission":
            if args.phase == "native":
                report["native_validation"] = "RUNNING_SELECTED_GATEWAY_CANARIES"
                save(output / "report.json", report)
            report["test_counts"] = run_tests(core, output, env, native=args.phase == "native")
        if source_identity(ROOT) != report["gateway"] or source_identity(core) != report["pcc"]:
            raise ValueError("source changed during validation")
        if "artifacts" in report:
            verify_artifact_files(report["artifacts"]["files"])
        if args.phase == "native":
            report["native_validation"] = "SELECTED_GATEWAY_CANARIES_PASSED"
        report["status"] = "PASSED" if args.phase != "native-admission" else "ADMITTED_NOT_EXECUTED"
        code = 0
    except Exception as exc:
        report["status"] = "FAILED"
        if report["native_validation"] == "RUNNING_SELECTED_GATEWAY_CANARIES":
            report["native_validation"] = "FAILED_SELECTED_GATEWAY_CANARIES"
        report["error"] = type(exc).__name__ + ": " + str(exc)
        print(report["error"], file=sys.stderr)
    finally:
        for filename, key in (("selection.json", "test_selection"), ("test-counts.json", "test_counts")):
            if (output / filename).is_file():
                report[key] = json.loads((output / filename).read_text())
        report["finished_utc"] = datetime.now(timezone.utc).isoformat()
        save(output / "report.json", report)
    return code


if __name__ == "__main__":
    raise SystemExit(main())
