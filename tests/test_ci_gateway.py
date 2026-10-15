"""CI selection/admission tests run without a compiler binary or build."""

import ast
import importlib.util
import json
from pathlib import Path
import re
import sys
import tomllib

import pytest


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("gateway_ci", ROOT / "scripts/ci_gateway.py")
ci = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(ci)


def test_workflow_is_host_only_source_pinned_and_always_retains_evidence():
    text = (ROOT / ".github/workflows/host-ci.yml").read_text()
    assert "pull_request:" in text and "branches: [main]" in text
    assert "contents: read" in text and "write" not in text
    assert "ci_gateway.py host --pcc-source pcc" in text
    assert "if: always()" in text
    assert "--require-hashes" in text
    assert "persist-credentials: false" in text
    assert "pip install -e" not in text and "uv sync" not in text and "bootstrap" not in text
    uses = re.findall(r"uses: (\S+)", text)
    assert len(uses) == 4 and all(re.fullmatch(r"actions/[a-z-]+@[a-f0-9]{40}", item) for item in uses)
    pin = json.loads(ci.PIN.read_text())
    assert pin["repository"] == "ikshengmin/pcc"
    assert re.fullmatch("[a-f0-9]{40}", pin["commit"])
    assert re.fullmatch("[a-f0-9]{40}", pin["tree"])


def test_installer_semver_spelling_matches_exact_declared_python():
    text = (ROOT / ".github/workflows/host-ci.yml").read_text()
    declared = (ROOT / ".python-version").read_text().strip()
    # The pinned setup-python action otherwise normalizes rc1 to -rc1,
    # which cannot match the official python-versions manifest's -rc.1.
    match = re.fullmatch(r"(\d+\.\d+\.\d+)(a|b|rc)(\d+)", declared)
    assert match is not None
    base, release, number = match.groups()
    expected = f"{base}-{release}.{number}"
    assert f"python-version: '{expected}'" in text
    assert "python-version-file:" not in text


def test_requirements_are_the_frozen_pytest_only_subset():
    lock = tomllib.loads((ROOT / "uv.lock").read_text())
    allowed = {"pytest", "iniconfig", "packaging", "pluggy", "pygments", "colorama"}
    expected = {p["name"]: p for p in lock["package"] if p["name"] in allowed}
    text = (ROOT / ".ci/requirements.txt").read_text()
    actual = re.findall(r"^([a-z-]+)==([^\s;]+)", text, re.MULTILINE)
    assert {name for name, _ in actual} == allowed
    for name, version in actual:
        assert version == expected[name]["version"]
        assert expected[name]["wheels"][0]["hash"] in text
    assert "--index-url https://pypi.org/simple" in text and "--only-binary :all:" in text


def test_declared_python_mismatch_fails_before_import_or_build(monkeypatch):
    monkeypatch.setattr(ci.platform, "python_implementation", lambda: "CPython")
    monkeypatch.setattr(ci.platform, "python_version", lambda: "3.13.5")
    with pytest.raises(ValueError, match="requires CPython 3.15.0rc1"):
        ci.interpreter_identity()


@pytest.mark.parametrize("override", ["-m integration", "-k missing", "--override-ini addopts="])
def test_inherited_pytest_selection_cannot_change_ci(monkeypatch, override):
    monkeypatch.setenv("PYTEST_ADDOPTS", override)
    with pytest.raises(ValueError, match="PYTEST_ADDOPTS"):
        ci.environment(Path("/pcc"), host_only=True)


def test_environment_denies_native_provisioning_and_unrelated_experiments(monkeypatch):
    monkeypatch.delenv("PYTEST_ADDOPTS", raising=False)
    monkeypatch.setenv("PCC_CURRENT_PCC1", "/old/compiler")
    monkeypatch.setenv("PCC_RUNTIME_ARCHIVE", "/old/runtime.a")
    monkeypatch.setenv("PCC_EXPERIMENT_UNREQUESTED", "1")
    env = ci.environment(Path("/pcc"), host_only=True)
    assert env["PCC_NO_AUTO_PCC1"] == env["PCC_GATEWAY_REQUIRE_PREBUILT"] == "1"
    assert env["PCC_TEST_NO_NATIVE_PROVISIONING"] == "1"
    assert env["PCC_GATEWAY_HOST_ONLY"] == "1"
    assert env["PYTEST_DISABLE_PLUGIN_AUTOLOAD"] == "1"
    assert "PCC_CURRENT_PCC1" not in env and "PCC_RUNTIME_ARCHIVE" not in env
    assert "PCC_EXPERIMENT_UNREQUESTED" not in env


def test_host_command_preserves_default_selection_and_native_is_explicit(tmp_path):
    host = ci.pytest_command(tmp_path, native=False)
    assert host[:3] == [sys.executable, "-m", "pytest"]
    assert "-x" in host and "--override-ini" not in host and "-o" not in host
    assert "-m" not in host[3:]
    native = ci.pytest_command(tmp_path, native=True)
    assert native[-len(ci.NATIVE_NODES):] == list(ci.NATIVE_NODES)
    assert "-k" not in native
    assert len(ci.NATIVE_NODES) == 11
    assert all(node.endswith("-pcc1]") for node in ci.NATIVE_NODES if "test_native_examples" in node)
    assert "integration" in native
    assert "core test_async_await.py" in " ".join(ci.OUTSIDE_NATIVE_SCOPE)


def test_three_external_clang_probes_are_integration_not_host():
    module = ast.parse((ROOT / "tests/test_gateway_nonblocking_socket.py").read_text())
    names = {"test_gateway_nonblocking_accept_read_write_and_eof",
             "test_gateway_nonblocking_connect_start_preserves_fd_mode",
             "test_gateway_nonblocking_connect_reports_exact_so_error"}
    found = {node.name: node for node in module.body if isinstance(node, ast.FunctionDef) and node.name in names}
    assert set(found) == names
    for node in found.values():
        assert "pytest.mark.integration" in {ast.unparse(value) for value in node.decorator_list}


@pytest.mark.parametrize("dirty,head,tree", [(" M file.py", "a", "b"), ("", "wrong", "b"), ("", "a", "wrong")])
def test_source_identity_rejects_drift(tmp_path, monkeypatch, dirty, head, tree):
    def git(root, *args):
        if args == ("rev-parse", "--show-toplevel"):
            return str(tmp_path)
        if args == ("rev-parse", "HEAD"):
            return head
        if args == ("rev-parse", "HEAD^{tree}"):
            return tree
        return dirty

    monkeypatch.setattr(ci, "git", git)
    with pytest.raises(ValueError):
        ci.source_identity(tmp_path, {"commit": "a", "tree": "b"})


def test_junit_counts_include_failure_error_and_skip(tmp_path):
    path = tmp_path / "junit.xml"
    path.write_text('<testsuites><testsuite><testcase/><testcase><failure/></testcase>'
                    '<testcase><error/></testcase><testcase><skipped/></testcase></testsuite></testsuites>')
    assert ci.junit_counts(path) == {"tests": 4, "failures": 1, "errors": 1, "skipped": 1}


@pytest.mark.parametrize("change", [{"status": "TIMEOUT"}, {"returncode": 1},
    {"timeout_s": 99}, {"max_tree_rss_bytes": 0}, {"peak_tree_rss_bytes": 2147483649},
    {"post_exit_cleanup_pids": [123]}])
def test_guard_failure_or_leftover_children_cannot_pass(change):
    result = {"status": "COMPLETE", "returncode": 0, "timeout_s": 180,
              "max_tree_rss_bytes": 2147483648, "peak_tree_rss_bytes": 1000}
    result.update(change)
    with pytest.raises(ValueError):
        ci.verify_guard(result, timeout=180)


def test_missing_native_inputs_fail_without_invoking_native_or_test_runner(tmp_path, monkeypatch):
    monkeypatch.setattr(ci, "interpreter_identity", lambda: {"version": "test"})
    monkeypatch.setattr(ci, "source_identity", lambda *args: {"commit": "test"})
    monkeypatch.setattr(ci, "admit_native", lambda *a, **k: pytest.fail("native admission was entered"))
    monkeypatch.setattr(ci, "run_tests", lambda *a, **k: pytest.fail("tests were launched"))
    output = tmp_path / "evidence"
    assert ci.main(["native", "--pcc-source", str(ROOT), "--output", str(output)]) == 1
    report = json.loads((output / "report.json").read_text())
    assert report["status"] == "FAILED" and report["native_validation"] == "NOT_RUN"
    assert report["performance_claim"] == "NONE"
    assert "explicit pcc1" in report["error"]


def test_native_admission_rejects_script_before_loading_receipt(tmp_path, monkeypatch):
    monkeypatch.setattr(ci.sys, "platform", "darwin")
    monkeypatch.setattr(ci.platform, "machine", lambda: "arm64")
    binary = tmp_path / "pcc1"
    binary.write_text("#!/bin/sh\nexit 0\n")
    binary.chmod(0o755)
    with pytest.raises(ValueError, match="native Mach-O"):
        ci.admit_native(tmp_path, compiler=binary, receipt=tmp_path / "missing.json",
                        compiler_runtime=tmp_path / "missing.a", runtime=tmp_path / "missing.a",
                        threaded_runtime=tmp_path / "missing.a")


@pytest.mark.parametrize("change", ["compiler", "runtime", "sidecar", "new-sidecar", "deleted"])
def test_mutated_native_artifacts_cannot_be_credited(tmp_path, change):
    compiler, archive = tmp_path / "pcc1", tmp_path / "runtime.a"
    compiler.write_bytes(b"compiler")
    archive.write_bytes(b"runtime")
    sidecar = Path(str(archive) + ".provenance.json")
    sidecar.write_text("{}")
    files = ci.artifact_files((compiler, archive), (archive,))
    ci.verify_artifact_files(files)
    if change == "new-sidecar":
        Path(str(archive) + ".target").write_text("changed target")
    elif change == "deleted":
        archive.unlink()
    else:
        {"compiler": compiler, "runtime": archive, "sidecar": sidecar}[change].write_bytes(b"changed")
    with pytest.raises(ValueError, match="changed during validation"):
        ci.verify_artifact_files(files)


def test_native_admission_environment_is_exact_and_restored(monkeypatch):
    monkeypatch.setenv("PCC_UNREQUESTED_EXPERIMENT", "old")
    monkeypatch.delenv("PCC_NEW_POLICY", raising=False)
    with ci.native_admission_environment({"PCC_NEW_POLICY": "new"}):
        assert "PCC_UNREQUESTED_EXPERIMENT" not in ci.os.environ
        assert ci.os.environ["PCC_NEW_POLICY"] == "new"
    assert ci.os.environ["PCC_UNREQUESTED_EXPERIMENT"] == "old"
    assert "PCC_NEW_POLICY" not in ci.os.environ


def load_gateway_fixtures():
    spec = importlib.util.spec_from_file_location("gateway_fixtures_under_test", ROOT / "tests/conftest.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


@pytest.mark.parametrize("threaded", [False, True])
def test_native_fixture_without_prebuilt_archive_never_builds(monkeypatch, threaded):
    fixtures = load_gateway_fixtures()
    monkeypatch.setenv("PCC_GATEWAY_REQUIRE_PREBUILT", "1")
    monkeypatch.delenv("PCC_RUNTIME_ARCHIVE", raising=False)
    monkeypatch.delenv("PCC_THREADED_RUNTIME_ARCHIVE", raising=False)
    with pytest.raises(pytest.fail.Exception, match="gateway CI never builds a runtime"):
        fixtures._runtime_archive(threaded=threaded)


@pytest.mark.parametrize("threaded", [False, True])
def test_explicit_runtime_always_uses_core_provenance_admission(monkeypatch, tmp_path, threaded):
    from tests import runtime_fixture_provenance as verifier

    fixtures = load_gateway_fixtures()
    monkeypatch.setenv("PCC_RUNTIME_ARCHIVE", str(tmp_path / "single.a"))
    monkeypatch.setenv("PCC_THREADED_RUNTIME_ARCHIVE", str(tmp_path / "threaded.a"))
    calls = []

    def verify(path, **settings):
        calls.append((path, settings))
        return Path(path), {}

    monkeypatch.setattr(verifier, "_verified_test_runtime_archive", verify)
    result = fixtures._runtime_archive(threaded=threaded)
    assert result == tmp_path / ("threaded.a" if threaded else "single.a")
    assert calls == [(str(result), {"threads": threaded})]


def test_invalid_runtime_does_not_fall_back_to_builder(monkeypatch):
    from tests import runtime_fixture_provenance as verifier

    fixtures = load_gateway_fixtures()
    monkeypatch.setenv("PCC_RUNTIME_ARCHIVE", "/stale/archive.a")

    def reject(*args, **kwargs):
        raise ValueError("stale runtime codegen")

    monkeypatch.setattr(verifier, "_verified_test_runtime_archive", reject)
    with pytest.raises(ValueError, match="stale runtime codegen"):
        fixtures._runtime_archive(threaded=False)


def test_live_product_canary_uses_shared_verified_threaded_fixture():
    source = (ROOT / "tests/test_gateway_product_canary.py").read_text()
    assert "cached_threaded_pcc_python_runtime" not in source
    assert "def gateway_product_runtime_archive(threaded_pcc_py_runtime_archive)" in source


@pytest.mark.parametrize("phase,mutate", [("native-admission", False), ("native", False), ("native", True)])
def test_native_report_only_passes_after_test_and_identity_checks(tmp_path, monkeypatch, phase, mutate):
    monkeypatch.setattr(ci, "interpreter_identity", lambda: {"version": "test"})
    monkeypatch.setattr(ci, "source_identity", lambda *args: {"commit": "test"})
    artifact = {"files": {}, "compiler": {"path": "/admitted/pcc1"},
                "application_runtimes": {"single": {"path": "/admitted/single.a"},
                                         "threaded": {"path": "/admitted/threaded.a"}}}
    monkeypatch.setattr(ci, "admit_native", lambda *a, **k: artifact)
    calls = []

    def run(core, output, env, **kwargs):
        calls.append(kwargs)
        assert env["PCC_CURRENT_PCC1"] == env["PCC_TEST_PCC1"] == "/admitted/pcc1"
        assert env["PCC_RUNTIME_ARCHIVE"] == "/admitted/single.a"
        return {"tests": 11, "failures": 0, "errors": 0, "skipped": 0}

    def verify(files):
        if mutate:
            raise ValueError("admitted artifact changed during validation")

    monkeypatch.setattr(ci, "run_tests", run)
    monkeypatch.setattr(ci, "verify_artifact_files", verify)
    output = tmp_path / "evidence"
    command = [phase, "--pcc-source", str(ROOT), "--output", str(output)]
    for name in ("pcc1", "receipt", "compiler-runtime", "runtime", "threaded-runtime"):
        command += ["--" + name, str(tmp_path / name)]
    assert ci.main(command) == (1 if mutate else 0)
    report = json.loads((output / "report.json").read_text())
    if phase == "native-admission":
        assert calls == []
        assert report["status"] == "ADMITTED_NOT_EXECUTED"
        assert report["native_validation"] == "ARTIFACT_ADMITTED_TESTS_NOT_RUN"
    elif mutate:
        assert report["status"] == "FAILED"
        assert report["native_validation"] == "FAILED_SELECTED_GATEWAY_CANARIES"
    else:
        assert report["status"] == "PASSED"
        assert report["native_validation"] == "SELECTED_GATEWAY_CANARIES_PASSED"
