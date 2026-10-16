"""Compile the live HTTP workload only; never provision a runtime implicitly."""

import argparse
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import platform
import sys

try:
    from .compare import ROOT, compile_arm, digest, save, source_tree_digest
except ImportError:
    from compare import ROOT, compile_arm, digest, save, source_tree_digest


def source_identities():
    return {str(path.resolve()): digest(path) for path in (
        ROOT / "benchmark_http_native.py", ROOT / "benchmarks/http_contract.py",
        *sorted(ROOT.glob("pcc_gateway/**/*.py")))}


def verify_threaded_runtime(archive, compiler_source):
    import pcc
    from pcc.tools.runtime_archive_provenance import (
        manifest_is_stale_for_current_codegen, verify_runtime_archive_manifest,
    )
    if Path(pcc.__file__).resolve().parents[1] != compiler_source.resolve():
        raise RuntimeError("runtime validation must import the selected frozen compiler source")
    runtime = verify_runtime_archive_manifest(archive,
        runtime_root=compiler_source / "pcc/runtime")
    if manifest_is_stale_for_current_codegen(runtime):
        raise RuntimeError("runtime was not produced by the selected compiler source identity")
    members = runtime["members"]
    if not all(row.get("runtime_build_config", {}).get("threads") is True for row in members):
        raise RuntimeError("live HTTP requires a consistently threaded runtime archive")
    return runtime


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    selection = parser.add_mutually_exclusive_group(required=True)
    selection.add_argument("--host-python", type=Path)
    selection.add_argument("--pcc1", type=Path)
    parser.add_argument("--pcc1-receipt", type=Path)
    parser.add_argument("--compiler-source", type=Path, required=True)
    parser.add_argument("--runtime-archive", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    source = args.compiler_source.resolve()
    archive = args.runtime_archive.resolve()
    sys.path.insert(0, str(source))
    verify_threaded_runtime(archive, source)
    label = "host-pcc" if args.host_python else "pcc1"
    compiler = (args.host_python or args.pcc1).resolve()
    pcc1_receipt = None
    if args.pcc1:
        if not args.pcc1_receipt:
            parser.error("native pcc1 requires its matching build receipt")
        pcc1_receipt = json.loads(args.pcc1_receipt.read_text())
        if (pcc1_receipt.get("status") != "SUCCEEDED"
                or pcc1_receipt.get("compiler_sha256") != digest(compiler)):
            parser.error("pcc1 needs a successful matching native compiler build receipt")
        manifest_path = args.pcc1_receipt.resolve().parent / str(pcc1_receipt.get("source_manifest", ""))
        if not manifest_path.is_file() or digest(manifest_path) != pcc1_receipt.get("source_manifest_sha256"):
            parser.error("pcc1 source manifest does not match its build receipt")
        manifest = json.loads(manifest_path.read_text())
        manifest_files = manifest.get("files", {})
        declared_python = {name: identity for name, identity in manifest_files.items()
                           if name.startswith("pcc/") and name.endswith(".py")}
        actual_python = {str(path.relative_to(source)): digest(path)
                         for path in sorted((source / "pcc").rglob("*.py"))}
        if not declared_python or declared_python != actual_python:
            parser.error("pcc1 build source differs from the selected frozen compiler source")
    build = args.output_dir.resolve()
    build.mkdir(parents=True, exist_ok=False)
    output = build / "http-native"
    report_path = build / "compile.json"
    provenance = archive.with_suffix(archive.suffix + ".provenance.json")
    sources = source_identities()
    report = {"schema": "pcc-gateway.http-compile.v1", "started_utc": datetime.now(timezone.utc).isoformat(),
              "platform": platform.platform(), "cpu_model": platform.processor(),
              "status": "RUNNING", "complete": False, "compilers": {}, "summary": [],
              "implementation": label, "sources": sources,
              "compiler_source": str(source), "compiler_source_sha256": source_tree_digest(source),
              "runtime_archive": str(archive), "runtime_archive_sha256": digest(archive),
              "runtime_provenance_sha256": digest(provenance),
              "pcc1_build_receipt": pcc1_receipt}
    env = dict(os.environ)
    env.pop("LC_ALL", None)
    env.pop("PCC_PACKAGE_SITE", None)
    env.update(PYTHONPATH=str(source), PCC_SOURCE_ROOT=str(source), PCC_REPO_ROOT=str(source),
               PCC_NO_AUTO_PCC1="1", PCC_WITH_THREADS="1", PCC_GC_BACKEND="0",
               PCC_RUNTIME_HIGH="py", PCC_RUNTIME_ARCHIVE=str(archive), PCC_RUNTIME_CC="/usr/bin/false",
               PCC_RUNTIME_DIR=str(source / "pcc/runtime"))
    if args.pcc1:
        env.update(PCC_HOST_PCC="/usr/bin/false", PCC_HOST_PYTHON="/usr/bin/false")
    report["environment"] = {key: value for key, value in env.items() if key.startswith("PCC_") or key == "PYTHONPATH"}
    save(report_path, report)
    import pcc
    core = Path(pcc.__file__).resolve().parents[1]
    sys.path.insert(0, str(core / "scripts"))
    from run_pcc_compile_ab import _performance_lock
    try:
        with _performance_lock():
            compile_arm(label, str(compiler), ROOT / "benchmark_http_native.py", output,
                build / "compile.log", env=env, report=report, report_path=report_path,
                compiler_args=("-m", "pcc") if args.host_python else ())
            if (source_identities() != sources
                    or source_tree_digest(source) != report["compiler_source_sha256"]
                    or digest(archive) != report["runtime_archive_sha256"]
                    or digest(provenance) != report["runtime_provenance_sha256"]
                    or digest(compiler) != report["compilers"][label]["sha256"]):
                raise RuntimeError("compile input identity changed")
            report.update(status="COMPLETE", complete=True)
    except BaseException as error:
        report.update(status="FAILED", complete=False, error=type(error).__name__ + ": " + str(error))
        raise
    finally:
        save(report_path, report)


if __name__ == "__main__":
    main()
