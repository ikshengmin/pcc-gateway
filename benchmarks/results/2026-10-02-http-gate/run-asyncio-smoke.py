import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

ROOT = Path('/workspace/scratch/ce254c0a0910/pcc-gateway')
sys.path.insert(0, str(ROOT))
from benchmarks.http_compare import run_arm
from benchmarks.compare import digest

out = ROOT / 'benchmarks/results/2026-10-02-http-gate'
observer = json.loads((ROOT / 'benchmarks/results/2026-10-02-linux-observer/observation-smoke.json').read_text())['observer']
for path_key, hash_key in [('path', 'sha256'), ('source', 'source_sha256'), ('compiler', 'compiler_sha256')]:
    if digest(observer[path_key]) != observer[hash_key]:
        raise RuntimeError('observer identity changed: ' + path_key)
command = [sys.executable, str(ROOT / 'benchmark_http_asyncio.py')]
files = [ROOT / 'benchmark_http_asyncio.py', ROOT / 'benchmarks/http_contract.py',
         ROOT / 'benchmarks/http_compare.py', ROOT / 'benchmarks/http_compile.py',
         ROOT / 'benchmarks/compare.py', ROOT / 'benchmarks/processes.py',
         ROOT / 'benchmarks/observation.py', Path(__file__),
         *sorted(ROOT.glob('pcc_gateway/**/*.py'))]
hashes = {str(path): digest(path) for path in files}
row = run_arm('asyncio', command, observer, out / 'asyncio-smoke', dict(os.environ), 3, 0, 4, 'smoke')
process_receipt = json.loads((out / 'asyncio-smoke.process.json').read_text())
cleanup = {}
for pid in [row['observer_pid'], process_receipt['child_pid']]:
    state = subprocess.run(['ps', '-p', str(pid), '-o', 'stat='], capture_output=True, text=True, timeout=2)
    if state.returncode not in (0, 1) or (state.stdout.strip() and not state.stdout.strip().startswith('Z')):
        raise RuntimeError('task-owned process remains live: ' + str(pid))
    cleanup[str(pid)] = 'not present' if not state.stdout.strip() else 'terminal zombie'
for path, identity in hashes.items():
    if digest(path) != identity:
        raise RuntimeError('smoke source changed: ' + path)
report = {'status': 'PASS', 'scope': 'Functional asyncio subprocess/observer/HTTP shutdown smoke only; no throughput claim',
          'command': command, 'observer': observer, 'source_hashes': hashes,
          'python_sha256': digest(sys.executable), 'python_version': sys.version,
          'expected_server_requests': 24, 'cleanup': cleanup, 'run': row}
(out / 'asyncio-smoke-verification.json').write_text(json.dumps(report, sort_keys=True, indent=2) + '\n')
print(json.dumps({'status': report['status'], 'closure': row['closure'], 'cleanup': cleanup}, sort_keys=True))
