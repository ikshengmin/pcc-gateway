"""Standalone gateway test setup; native archives remain compiler-owned."""

import os
import json
from pathlib import Path
import sys

import pytest


ROOT = Path(__file__).resolve().parents[1]

# The compiler checkout can be supplied through PYTHONPATH; it need not be
# adjacent to the gateway checkout. Import helpers from that same source tree.
import pcc

PCC_CORE = Path(pcc.__file__).resolve().parents[1]
sys.path.insert(0, str(PCC_CORE / "tests" / "python"))
_DESELECTED = []


def pytest_deselected(items):
    _DESELECTED.extend(item.nodeid for item in items)


def pytest_collection_finish(session):
    destination = os.environ.get("PCC_GATEWAY_COLLECTION_REPORT")
    if destination:
        Path(destination).write_text(json.dumps({
            "selected_count": len(session.items), "deselected_count": len(_DESELECTED),
            "selected": [item.nodeid for item in session.items],
            "deselected": _DESELECTED,
        }, indent=2) + "\n")


@pytest.fixture(autouse=True)
def package_site(monkeypatch):
    sites = [str(ROOT)]
    existing = os.environ.get("PCC_PACKAGE_SITE")
    if existing:
        sites.append(existing)
    monkeypatch.setenv("PCC_PACKAGE_SITE", os.pathsep.join(sites))


def _runtime_archive(*, threaded: bool) -> Path:
    name = "PCC_THREADED_RUNTIME_ARCHIVE" if threaded else "PCC_RUNTIME_ARCHIVE"
    explicit = os.environ.get(name, "").strip()
    if threaded and not explicit:
        explicit = os.environ.get("PCC_RUNTIME_ARCHIVE", "").strip()
    if explicit:
        from tests.runtime_fixture_provenance import _verified_test_runtime_archive

        archive, _ = _verified_test_runtime_archive(explicit, threads=threaded)
        return archive
    if os.environ.get("PCC_GATEWAY_REQUIRE_PREBUILT") == "1":
        pytest.fail(f"{name} is required; gateway CI never builds a runtime")
    from tests.runtime_build_cache import (
        cached_pcc_python_runtime, cached_threaded_pcc_python_runtime,
    )
    builder = cached_threaded_pcc_python_runtime if threaded else cached_pcc_python_runtime
    return builder() / "libpy_runtime_pcc_py.a"


@pytest.fixture(autouse=True)
def host_ci_never_compiles(monkeypatch):
    if os.environ.get("PCC_GATEWAY_HOST_ONLY") != "1":
        return
    from pcc.frontends.python import pipeline
    from tests import runtime_build_cache

    def forbidden(*args, **kwargs):
        pytest.fail("host CI reached a native build; mark and select it as integration")

    monkeypatch.setattr(pipeline, "compile_python", forbidden)
    monkeypatch.setattr(pipeline, "compile_python_multi", forbidden)
    monkeypatch.setattr(runtime_build_cache, "cached_pcc_python_runtime", forbidden)
    monkeypatch.setattr(runtime_build_cache, "cached_threaded_pcc_python_runtime", forbidden)


@pytest.fixture(scope="session")
def pcc_py_runtime_archive():
    return _runtime_archive(threaded=True)


@pytest.fixture(scope="session")
def threaded_pcc_py_runtime_archive():
    return _runtime_archive(threaded=True)
