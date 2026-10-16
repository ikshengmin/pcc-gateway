import hashlib
import json
from pathlib import Path

from pcc.frontends.python.owned_runtime_build import _compile_runtime_module, runtime_ir_passes
from pcc.ir.optimization.driver import optimize_ir
from pcc.backend.owned_object_emit import emit_owned_object

source_root = Path('/workspace/scratch/ce254c0a0910/pcc-cloud-runs/source-v9-annotation-astra')
source = Path('/workspace/scratch/ce254c0a0910/pcc/pcc/runtime/py/py_virtual_thread_runtime.py')
out = Path('/workspace/scratch/ce254c0a0910/pcc-gateway/benchmarks/results/2026-10-02-http-gate/mixed-timer-io-v8')
expected = '245638f70a83ee149ec88a5a8d1dc9f9ab4ce60aa376f666c9bb3d6c9cd059a2'
identity = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
if identity(source) != expected:
    raise RuntimeError('scheduler source differs from approved candidate')
raw = out / 'scheduler.raw.ll'
optimized = out / 'scheduler.optimized.ll'
obj = out / 'scheduler.o'
report = {'status': 'RUNNING', 'scope': 'library IR plus owned Linux object emission only; no native execution',
          'compiler_source': str(source_root), 'source': str(source), 'source_sha256': expected,
          'target': 'x86_64-unknown-linux-gnu'}
receipt = out / 'scheduler-emission.json'
receipt.write_text(json.dumps(report, sort_keys=True, indent=2) + '\n')
try:
    print('Compiling exact scheduler module to library IR', flush=True)
    _compile_runtime_module('py_virtual_thread_runtime', str(source), str(raw), report['target'])
    text = raw.read_text()
    if '_scheduler_wait_deadline_locked' not in text:
        raise RuntimeError('deadline helper is absent from emitted IR')
    passes = runtime_ir_passes(str(source_root / 'pcc/runtime'))
    report['runtime_ir_passes'] = passes
    print('Running production owned runtime passes: ' + passes, flush=True)
    optimized.write_text(optimize_ir(text, passes))
    print('Emitting owned Linux object', flush=True)
    obj.write_bytes(emit_owned_object(optimized.read_text(), report['target']))
    if identity(source) != expected:
        raise RuntimeError('scheduler source changed during emission')
    report.update(status='PASS', artifacts={path.name: {'sha256': identity(path), 'bytes': path.stat().st_size}
                                           for path in [raw, optimized, obj]})
except BaseException as error:
    report.update(status='FAILED', error=type(error).__name__ + ': ' + str(error))
    raise
finally:
    receipt.write_text(json.dumps(report, sort_keys=True, indent=2) + '\n')
