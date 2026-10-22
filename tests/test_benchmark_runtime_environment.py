"""Active diagnostic drivers pass production runtime settings to compilation."""

import contextlib
import importlib.util
import json
from pathlib import Path
import sys
from types import SimpleNamespace

import pytest


@pytest.mark.parametrize('runner', ('layers', 'lifetime'))
def test_diagnostic_compile_uses_threaded_atomic_runtime(tmp_path, monkeypatch, runner):
    repository = Path(__file__).resolve().parents[1]
    monkeypatch.syspath_prepend(str(repository / 'benchmarks'))
    spec = importlib.util.spec_from_file_location('runtime_environment_' + runner,
                                               repository / 'benchmarks' / (runner + '.py'))
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    root = tmp_path / 'gateway'
    root.mkdir()
    (root / 'benchmark_native.py').write_bytes((repository / 'benchmark_native.py').read_bytes())
    (root / 'benchmark_asyncio.py').write_bytes((repository / 'benchmark_asyncio.py').read_bytes())
    archive = tmp_path / 'libpy_runtime_pcc_py.a'
    archive.write_bytes(b'synthetic runtime fixture')
    core = tmp_path / 'core'
    core.mkdir()
    output = tmp_path / 'report.json'
    monkeypatch.setattr(module, 'ROOT', root)
    if runner == 'layers':
        monkeypatch.setattr(module, 'source_tree_digest', lambda path: 'synthetic source')
    else:
        monkeypatch.setattr(module, 'source_identity', lambda path: 'synthetic source')
    monkeypatch.setitem(sys.modules, 'run_pcc_compile_ab',
                        SimpleNamespace(_performance_lock=contextlib.nullcontext))
    command = [runner, '--pcc', 'synthetic-pcc', '--runtime-archive', str(archive),
               '--output', str(output)]
    if runner == 'lifetime':
        command.extend(['--compiler-source', str(core)])
    monkeypatch.setattr(sys, 'argv', command)

    class CompileBoundaryReached(Exception):
        pass

    observed = []

    def compile_probe(command, **kwargs):
        assert command[0] == 'synthetic-pcc'
        observed.append(kwargs['env'])
        raise CompileBoundaryReached()

    monkeypatch.setattr(module.subprocess, 'run', compile_probe)
    with pytest.raises(CompileBoundaryReached):
        module.main()
    assert observed[0]['PCC_WITH_THREADS'] == '1'
    assert observed[0]['PCC_REFCOUNT_KIND'] == 'atomic'
    report = json.loads(output.read_text())
    environment = report['runtime_environment' if runner == 'layers' else 'optimization_environment']
    assert environment['PCC_WITH_THREADS'] == '1'
    assert environment['PCC_REFCOUNT_KIND'] == 'atomic'
