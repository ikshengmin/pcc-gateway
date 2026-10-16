import pathlib,os,hashlib,json,subprocess,sys
from pcc.frontends.python.pipeline import compile_python
from tests.python.process_timeout import run_process_group_timeout
w=pathlib.Path('/workspace/scratch/ce254c0a0910');o=w/'pcc-cloud-runs/native-v10-timer-astra';source=w/'pcc-gateway/benchmarks/results/2026-10-02-http-gate/mixed_timer_io_probe.py';binary=o/'probe';rt=pathlib.Path(os.environ['PCC_RUNTIME_ARCHIVE'])
assert hashlib.sha256(source.read_bytes()).hexdigest()=='af06ff72933cdad16406032e0081dad021b523631d00f1a104c06615adf6d9c3'
compile_python(str(source),str(binary),backend='self',libpython_mode='off',ir_scaffold_mode='on',runtime_archive=str(rt))
record={'source':str(source),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'binary_sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),'runtime_sha256':hashlib.sha256(rt.read_bytes()).hexdigest(),'compiler_source':os.environ['PCC_SOURCE_ROOT'],'rows':[],'status':'RUNNING'}
for backend in range(5):
 env=dict(os.environ,PATH='',PCC_GC_BACKEND=str(backend),PCC_WITH_THREADS='0',PCC_VTHREAD_IO_BACKEND='epoll',PCC_HOST_PYTHON='/usr/bin/false',PCC_HOST_PCC='/usr/bin/false')
 p=run_process_group_timeout([str(binary)],env=env,timeout=5)
 row={'gc':backend,'returncode':p.returncode,'stdout':p.stdout,'stderr':p.stderr};record['rows'].append(row);(o/'receipt.json').write_text(json.dumps(record,indent=2)+'\n');print(json.dumps(row),flush=True)
 assert p.returncode==0 and p.stdout=='PCC_MIXED_TIMER_IO_OK\n' and p.stderr=='',row
record['status']='COMPLETE';(o/'receipt.json').write_text(json.dumps(record,indent=2)+'\n')
