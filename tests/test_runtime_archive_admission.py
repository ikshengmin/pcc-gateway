"""Gateway fixtures preserve explicit archive provenance and no-build admission."""

from pathlib import Path

import pytest

import conftest
from tests import runtime_build_cache, runtime_fixture_provenance

# Host CI replaces the builders with a no-native-build guard (conftest's
# host_ci_never_compiles); the refusal test below needs the real ones.
_BUILDERS = {
    "cached_pcc_python_runtime": runtime_build_cache.cached_pcc_python_runtime,
    "cached_threaded_pcc_python_runtime": runtime_build_cache.cached_threaded_pcc_python_runtime,
}


def _explicit_archive_environment(monkeypatch, value):
    monkeypatch.setenv("PCC_RUNTIME_ARCHIVE", value)
    monkeypatch.delenv("PCC_THREADED_RUNTIME_ARCHIVE", raising=False)
    monkeypatch.delenv("PCC_GATEWAY_REQUIRE_PREBUILT", raising=False)


@pytest.mark.parametrize("threaded", [False, True])
def test_explicit_runtime_is_verified_before_any_builder(monkeypatch, threaded):
    selected = Path("/selected/libpy_runtime_pcc_py.a")
    calls = []
    _explicit_archive_environment(monkeypatch, "  /requested/libpy_runtime_pcc_py.a  ")
    monkeypatch.setenv("PCC_TEST_NO_NATIVE_PROVISIONING", "1")
    monkeypatch.setenv("PCC_NO_AUTO_PCC1", "1")

    def verify(explicit, **kwargs):
        calls.append((explicit, kwargs))
        return selected, {}

    def forbidden():
        raise AssertionError("explicit archive reached automatic builder")

    monkeypatch.setattr(runtime_fixture_provenance, "_verified_test_runtime_archive", verify)
    monkeypatch.setattr(runtime_build_cache, "cached_pcc_python_runtime", forbidden)
    monkeypatch.setattr(runtime_build_cache, "cached_threaded_pcc_python_runtime", forbidden)
    assert conftest._runtime_archive(threaded=threaded) is selected
    # A non-threaded fixture requires a non-threaded archive explicitly.
    assert calls == [("/requested/libpy_runtime_pcc_py.a", {"threads": threaded})]


@pytest.mark.parametrize("threaded", [False, True])
def test_bad_explicit_runtime_does_not_fall_back(monkeypatch, threaded):
    _explicit_archive_environment(monkeypatch, "/bad/libpy_runtime_pcc_py.a")
    error = ValueError("source or configuration mismatch")

    def reject(*args, **kwargs):
        raise error

    def forbidden():
        raise AssertionError("rejected archive reached automatic builder")

    monkeypatch.setattr(runtime_fixture_provenance, "_verified_test_runtime_archive", reject)
    monkeypatch.setattr(runtime_build_cache, "cached_pcc_python_runtime", forbidden)
    monkeypatch.setattr(runtime_build_cache, "cached_threaded_pcc_python_runtime", forbidden)
    with pytest.raises(ValueError) as caught:
        conftest._runtime_archive(threaded=threaded)
    assert caught.value is error


@pytest.mark.parametrize("threaded", [False, True])
def test_no_archive_preserves_real_provisioning_refusal(monkeypatch, tmp_path, threaded):
    monkeypatch.delenv("PCC_RUNTIME_ARCHIVE", raising=False)
    monkeypatch.delenv("PCC_THREADED_RUNTIME_ARCHIVE", raising=False)
    monkeypatch.delenv("PCC_GATEWAY_REQUIRE_PREBUILT", raising=False)
    for name, builder in _BUILDERS.items():
        monkeypatch.setattr(runtime_build_cache, name, builder)
    monkeypatch.setenv("PCC_TEST_NO_NATIVE_PROVISIONING", "1")
    monkeypatch.setenv("PCC_NO_AUTO_PCC1", "1")
    monkeypatch.setenv("PCC_TEST_RUNTIME_CACHE_ROOT", str(tmp_path))

    def forbidden(*args, **kwargs):
        raise AssertionError("disabled provisioning reached staging/build")

    monkeypatch.setattr(runtime_build_cache, "_pcc_runtime_cache_key", lambda *a, **k: "uncached")
    monkeypatch.setattr(runtime_build_cache.tempfile, "mkdtemp", forbidden)
    with pytest.raises(RuntimeError, match="provisioning"):
        conftest._runtime_archive(threaded=threaded)
    assert not (tmp_path / "uncached").exists()
