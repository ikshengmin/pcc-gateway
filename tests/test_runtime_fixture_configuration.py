"""Runtime fixture admission selects the production threaded configuration."""

import importlib.util
from pathlib import Path
import sys

import pytest


@pytest.mark.parametrize("name", ("pcc_py_runtime_archive", "threaded_pcc_py_runtime_archive"))
def test_runtime_fixture_requests_threaded_archive_admission(tmp_path, monkeypatch, name):
    from tests import runtime_fixture_provenance

    archive = tmp_path / 'libpy_runtime_pcc_py.a'
    archive.write_bytes(b'synthetic admission fixture')
    monkeypatch.setenv('PCC_RUNTIME_ARCHIVE', str(archive))
    monkeypatch.delenv('PCC_THREADED_RUNTIME_ARCHIVE', raising=False)
    observed = []

    def verify(path, *, threads):
        observed.append(threads)
        return Path(path), {}

    monkeypatch.setattr(runtime_fixture_provenance, '_verified_test_runtime_archive', verify)
    # Load an independent fixture definition so this control cannot populate
    # the session-scoped archive cache used by real native integration cases.
    monkeypatch.setattr(sys, 'path', list(sys.path))
    path = Path(__file__).with_name('conftest.py')
    spec = importlib.util.spec_from_file_location('gateway_runtime_fixture_probe', path)
    setup = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(setup)
    assert getattr(setup, name).__wrapped__() == archive
    assert observed == [True]
