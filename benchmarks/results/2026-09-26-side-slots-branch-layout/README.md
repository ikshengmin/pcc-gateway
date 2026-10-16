# Gateway six-arm comparison — 2026-09-26

**COMPLETE: 180/180 validated runs.** Started 2026-09-25T17:23:44Z (September 26
in Asia/Singapore). Apple M2 Max, 12 logical CPUs, macOS 26.5.1, arm64,
CPython 3.15.0rc1. Load average 5.18 / 9.05 / 16.76 at the start and
4.60 / 6.39 / 13.59 after the last run.

## Results

Zero child wait, median handler requests/s across five rotating repeats:

| Implementation | C1 requests/s | C10 requests/s | C100 requests/s | C100 peak RSS |
|---|---:|---:|---:|---:|
| host pcc · virtual threads | 45,587 | 64,494 | 65,914 | 5.80 MiB |
| pcc1 · virtual threads | 45,141 | 64,370 | 66,779 | 5.81 MiB |
| host pcc · asyncio/vthread prototype | 23,109 | 30,642 | 30,441 | 25.48 MiB |
| pcc1 · asyncio/vthread prototype | 23,190 | 30,670 | 30,225 | 25.48 MiB |
| CPython asyncio TaskGroup | 9,153 | 48,225 | 86,504 | 27.75 MiB |
| CPython asyncio gather | 8,814 | 48,267 | 82,313 | 27.55 MiB |

At C100, pcc1 virtual threads reach **77.2%** of asyncio TaskGroup throughput
(66,779 versus 86,504 requests/s); the high-concurrency target remains open.
pcc1 is ahead at C1 (4.93x) and C10 (1.33x), and every native arm peaks at
about a fifth of asyncio's RSS. With 100 ms child waits the C100 medians are
972.5 (pcc1), 972.3 (host pcc), 962.1 (TaskGroup) and 971.3 (gather)
requests/s.

The host-pcc and pcc1 arms compiled **byte-identical executables**
(`5193b6881a4efa11…` ordinary, `e4803bc4f9cec208…` prototype; full hashes in the
raw report), so the differences between their rows are run-to-run variation,
about 1.3% at C100.

The full [36-row table](comparison.md) and [raw report](comparison.json) include
C=1/10/100, child wait=0/100 ms, five repeats and six implementations. At zero
wait each repeat measures at least 5,000 requests; with 100 ms waits, ten
batches. Every process performs two warmup batches, every request runs two child
operations and validates the JSON bytes, and the runner checks each latency
array and request/warmup count. No HTTP sockets; native runs use GC0 and one
carrier, CPython one event loop; RSS and process counters include startup and
warmups.

Against the [2026-09-14 run](../2026-09-14-six-arm/README.md) (pcc1 C100 18,092,
22.1% of TaskGroup) ordinary pcc1 is 3.7x higher at C100. Compiler, runtime and
pcc1 binary all differ between the two runs, so this is an end-to-end snapshot,
not an attribution to any one change.

## Toolchain and scope

- Host compiler: core commit `22a1a62c`. The run started from the identical
  working tree just before that commit was made; its `pcc/**/*.py` digest,
  `de6e79430540b298367c84526d270232813671b7c981cacef24c0403cbe713a7` in the raw
  report, recomputes to the same value on the commit.
- Native compiler: a Stage1 pcc1, `9d266e7fb4b534aba37a4e763530a7f9b12e546cf4c720530a6cc8f34f40a83c`,
  built in 3 min 39 s from a snapshot whose 1,051-file
  [source manifest](pcc1-source-manifest.json) differs from `22a1a62c` only in
  `pcc/backend/self_backend_aarch64_fragments.py` (instruction-family
  statistics; emitted code is unchanged). The same Stage1 then built pcc2, and
  pcc2-compiled smoke programs matched CPython under GC0–4; see the
  [build receipt](pcc1-build-receipt.json) and [Stage2 record](pcc1-stage2-record.json).
- Application runtime: one prebuilt pcc-Python archive for all four native arms,
  `c1ea7667c84989e0ab5afa38a93f69ce8961408990b7cdb7b83f12721ed8bbc9`, built from the
  runtime sources of `22a1a62c` (the core no longer contains a C runtime); see
  the [member provenance](runtime-provenance.json).
- Compiler entry flags: `--backend self --python-libpython off --ir-scaffold on`.
  Environment: `PCC_GC_BACKEND=0`, `PCC_WITH_THREADS=0`, `PCC_RUNTIME_HIGH=py`,
  `PCC_DISABLE_BULK_GENERATOR_FRAME_INIT=1`, the fixed `PCC_RUNTIME_ARCHIVE` and
  `PCC_RUNTIME_CC=/usr/bin/false`. The pcc1 arm runs the binary through a wrapper
  that sets `PCC_NO_AUTO_PCC1=1` and points `PCC_HOST_PYTHON` and `PCC_HOST_PCC`
  at `/usr/bin/false`, so it cannot fall back to the host compiler.
- Compile time: host pcc 6.1 s, pcc1 13.9 s (prototype arms 6.1 s / 14.2 s);
  compiler caches were not cleared, so these are not cold builds. Logs:
  [host-pcc](host-pcc-compile.log), [pcc1](pcc1-compile.log),
  [host-pcc prototype](host-pcc-asyncio-vthread-prototype-compile.log),
  [pcc1 prototype](pcc1-asyncio-vthread-prototype-compile.log).
- All four executables link only `/usr/lib/libSystem.B.dylib`.
- Gateway source: commit `4932c97`; the working tree also modified
  `tests/test_gateway_tls_provider.py` and `uv.lock`, which no benchmark reads.
  Digests of every benchmark source are in the raw report.
- Scope: GC0, one carrier, no network transport. This is not a five-GC,
  cold-toolchain or self-host fixed-point qualification. The prototype is the
  checked-in asyncio-on-vthreads `run`/`gather`/`sleep` experiment, not general
  asyncio compatibility.

## Reproduction

The unmodified [compare.py](../../compare.py) ran with default matrix sizes
(10 rounds, at least 5,000 zero-wait requests, 5 repeats, concurrency
1,10,100, waits 0,100 ms):

```bash
env -u LC_ALL python benchmarks/compare.py \
  --pcc <core>/.venv/bin/pcc \
  --pcc1 <wrapper around the pcc1 binary> \
  --pcc1-binary <pcc1> \
  --compiler-source <core checkout at 22a1a62c> \
  --runtime-archive <libpy_runtime_pcc_py.a> \
  --include-asyncio-vthread \
  --output <new result path>.json
```
