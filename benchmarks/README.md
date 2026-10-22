# Reproduce and interpret benchmarks

The scripts and each run's receipts define the workload and execution path.
Use Python **3.15.0rc1**, a compatible compiler/runtime pair, a quiet machine
and a new output name. The runners acquire the core performance lock and
reject source/archive changes during a measurement.

Current handler comparison, layer and lifetime drivers select the threaded
pcc-Python runtime with atomic reference counts (`PCC_WITH_THREADS=1`,
`PCC_REFCOUNT_KIND=atomic`) and record that configuration. The native handler
still runs one carrier and the asyncio workload one event loop; runtime thread
support does not change the workload's carrier count. Historical threads-off
measurements below retain their original source and configuration identities.

## Measurement status

Current-source native performance remains unqualified. A passing host CI or
benchmark-reporting test does not establish pcc1 execution or a win over
asyncio; see the [current qualification scope](../docs/ci.md).

### Recorded six-arm comparison — 2026-09-26

The most recent recorded comparison has
[six arms and 180 validated runs](results/2026-09-26-side-slots-branch-layout/README.md):
zero-wait C100 medians were 65,914 requests/s for host pcc, 66,779 for pcc1,
30,225 for the pcc1 asyncio/vthread prototype, and 86,504 for CPython asyncio
TaskGroup. Both native compilers used the same prebuilt pcc-Python runtime
built from core `22a1a62c`; the native compiler was a Stage1 pcc1 of that
source and compiled byte-identical executables. Its source and qualification
limits are recorded alongside the results. Native execution used GC0. Its
results do not describe current compiler performance.

### Recorded handler comparison — 2026-09-18

The committed [comparison](results/2026-09-18-selfhost-gates.md)
contains **90 validated runs**. Zero-wait C100 medians are 19,245.5 requests/s
for host pcc, 18,998.1 for pcc1 and 86,584.7 for CPython asyncio TaskGroup.
These are handler batches on Apple M2 Max, macOS 26.5.1 and CPython 3.15.0rc1,
with five repeats, two children per request, validated JSON, GC0 and one
carrier/event loop. HTTP sockets, compilation and startup are outside the
batch timer.

The [raw receipt](results/2026-09-18-selfhost-gates.json) records clean gateway
source `2d260f82`, core base `5b318560` plus dirty source, and the exact native
compiler and application-runtime identities.
Both application compiler commands selected self/no-libpython. The runtime
hash does not identify its member emitters, and this comparison is not a
fresh runtime-build, full Stage1, fixed-point or five-GC qualification.
The receipt predates p99 reporting; missing p99 remains unavailable.
Its results do not describe current compiler performance.

### Earlier six-arm comparison — 2026-09-14

[Six arms, 180 validated runs](results/2026-09-14-six-arm/README.md): zero-wait
C100 medians were 18,075 requests/s for host pcc, 18,092 for pcc1, 9,087 for
the pcc1 asyncio/vthread prototype, and 82,007 for CPython asyncio TaskGroup.
The host-pcc and pcc1 compiler arms used the same prebuilt, self-emitted
runtime. The native compiler was an experimental U artifact; its source and
qualification limits are recorded alongside the results. This run did not
rebuild the runtime.

## Prepare the runtime

The optimized-runtime reproduction needs an archive and its matching
`build_py/*.ll` inputs. From the adjacent core checkout, prepare them with
the same source and Python environment:

```bash
env -u LC_ALL uv run python scripts/run_process_tree_sample.py \
  --result build/runtime-reproduce.json \
  --samples build/runtime-reproduce.samples \
  --stdout build/runtime-reproduce.stdout --stderr build/runtime-reproduce.stderr \
  --timeout 1800 --max-tree-rss-bytes 4294967296 -- \
  make -B -j4 -C pcc/py_runtime PCC="$PWD/.venv/bin/pcc" \
  PYTHON="$PWD/.venv/bin/python" PCC_REPO_ROOT="$PWD" \
  PCC_WITH_THREADS=0 libpy_runtime_pcc_py.a
```

`-B` is not optional. Every runtime module is compiled BY the pcc frontend,
and `make` has no dependency edge from `pcc/py_frontend/**` to
`build_py/*.o` -- it compares source timestamps only. A frontend change
therefore rebuilds nothing, and the archive keeps objects emitted by an older
compiler while looking current.

That is not hypothetical. A compiler regression on 2026-09-09 left two
freestanding modules uncompilable, and because no runtime source had changed,
incremental builds kept linking pre-regression objects for a day: benchmarks
measured a runtime that could no longer be built, and the breakage only
surfaced when a content-hash cache forced a real rebuild. Force the rebuild,
or the identity you record is not the identity you measured.

Use an up-to-date runtime: the builder verifies recorded IR hashes, and the
geometry-cache result requires the core allocator source containing that cache.
The published September 10 reference used external LLVM for runtime IR
merging and object emission. Host pcc executed the owned passes; this does
not establish native toolchain independence or current default performance.
Its `optimization_level=0` disabled LLVM module passes, while the target
machine still used the default `opt=2` for machine-code generation. Do not
interpret that historical "O0" label as unoptimized machine code. Check the
selected emitter and returned artifact receipts with the current compiler.
Do not edit inputs while measuring.
`benchmarks/reproduce.py` records the current artifact identities, GC checks,
QPS, peak process RSS and raw repetitions. Exact timings vary by machine/load.

## Six-arm handler comparison

[compare.py](compare.py) builds [benchmark_native.py](../benchmark_native.py)
with host pcc and native pcc1, and runs
[benchmark_asyncio.py](../benchmark_asyncio.py) under CPython. Add
`--include-asyncio-vthread` to also compile the asyncio-on-virtual-threads
prototype with both compilers and run CPython's asyncio gather workload:

```bash
env -u LC_ALL PCC_NO_AUTO_PCC1=1 uv run python benchmarks/compare.py \
  --pcc /path/to/host-pcc --pcc1 /path/to/pcc1 \
  --compiler-source /path/to/frozen/pcc \
  --runtime-archive /path/to/libpy_runtime_pcc_py.a \
  --pcc1-binary /path/to/pcc1 --include-asyncio-vthread \
  --output benchmarks/results/my-six-arm.json
```

Inspect the script's current options. `--pcc1-binary` and `--pcc1-receipt`
bind the native compiler to its build receipt when needed. Explicit compiler
flags/environment are part of an experiment; historical settings are not
proof of today's defaults or installed toolchain qualification.
The host entry must run `python -m pcc`; `PCC_NO_AUTO_PCC1=1` prevents its
automatic redirection to the installed native compiler. Run the command under
core's `scripts/run_process_tree_sample.py` with a tree-RSS cap and
`--no-performance-lock`, because `compare.py` acquires the shared lock itself.

Both workloads start two children, join and validate identical sorted JSON.
Concurrency is batch width: complete C requests before starting the next batch.
Defaults are C=1/10/100, child wait=0/100 ms, two warmup batches and five repeats
with rotating arm order. This is handler throughput, excluding HTTP sockets,
compilation and process startup. CPU/RSS totals include startup and warmups.
With the prototype enabled, the default matrix contains 180 validated runs.
The prototype implements diagnostic `run`/`gather`/`sleep` behavior; it does
not establish full asyncio compatibility. Compilation is capped at 300 seconds
per arm, and each benchmark process at 60 seconds.

Reports retain QPS ranges, latency samples/percentiles, process counters and
source/compiler identities. Only complete, validated reports support a result.
Batch QPS is not a steady-load HTTP server benchmark or a CPU-thread count.

`compare.py` reports p50, p95 and p99 in milliseconds from all measured-request
latencies pooled across repetitions of the same arm, delay and concurrency.
Each percentile linearly interpolates between sorted samples at index
`(sample_count - 1) * fraction`; it is not an average of per-run percentiles.
Warmup requests are excluded, and every run must pass exact workload/count and
latency validation before its samples reach a summary. Existing fields and raw
samples are retained. Rendering an older receipt without `p99_ms` shows `n/a`
for p99, without changing or extrapolating that receipt.

### Process observation

`compare.py` records each workload process's CPU time and peak RSS with
`/usr/bin/time -lp` on macOS and with GNU time on Linux
([`resource_usage.py`](resource_usage.py)), one hashed resource receipt per
run. Linux artifact dependencies are inspected with `readelf -d`, without
running `ldd`; macOS uses `otool -L`.

The live HTTP runner `http_compare.py` instead uses the small
[`process_observer.c`](process_observer.c) wait4 supervisor on both platforms.
The installed host `cc` builds **only this measurement tool**, with a
30-second limit. Its source, compiler, binary, command and build log are
receipted separately. It never compiles or links a pcc compiler, runtime, or
application and is not a native execution dependency. The exact workload
child's `ru_maxrss` is converted from Linux KiB to bytes; macOS already
supplies bytes. CPU user/system seconds and context switches come from that
same child's `wait4` result. These are lifetime observations, including
startup, warmups, retained latency samples, output formatting, and any waited
descendants per OS semantics, **not synchronized process-tree memory**. The
outer watchdog owns that separate safety measurement. A Python supervisor is
deliberately avoided: its inherited pre-exec RSS can falsely impose a
Python-sized floor on a small native process. Hardware instructions/cycles
are explicitly unavailable in wait4, rather than silently recorded as zero.

`--include-asyncio-gather` adds the CPython gather baseline without building the
diagnostic asyncio/vthread prototype. It does not change any arm's workload.

### Bounded current-artifact comparison

Do not run against an old installed name while a new compiler is being
qualified. Obtain the current immutable host entry, pcc1 binary/build receipt,
source tree, and matching application runtime from that qualification first.
On a quiet machine, after its shared performance slot is released, the
following is a bounded three-arm comparison (four with CPython gather):

```bash
# Set these to the qualified artifacts, not an older installed compiler.
: "${PCC_PYTHON:?CPython 3.15.0rc1 executable}"
: "${PCC_HOST:?host entry running python -m pcc with automatic pcc1 disabled}"
: "${PCC_NATIVE:?current pcc1 executable}"
: "${PCC_SOURCE:?frozen compiler source}"
: "${PCC_RUNTIME:?matching application runtime archive}"
: "${PCC_RECEIPT:?matching pcc1 build receipt}"
OUT=benchmarks/results/current-linux-comparison  # Choose a new name each time.
mkdir -p "$(dirname "$OUT")"
env -u LC_ALL UV_NO_SYNC=1 PCC_NO_AUTO_PCC1=1 "$PCC_PYTHON" \
  ../pcc/scripts/run_process_tree_sample.py \
  --result "$OUT.watchdog.json" --samples "$OUT.samples" \
  --stdout "$OUT.stdout" --stderr "$OUT.stderr" \
  --timeout 900 --max-tree-rss-bytes 2147483648 --no-performance-lock -- \
  "$PCC_PYTHON" benchmarks/compare.py \
  --pcc "$PCC_HOST" --pcc1 "$PCC_NATIVE" \
  --compiler-source "$PCC_SOURCE" --runtime-archive "$PCC_RUNTIME" \
  --pcc1-binary "$PCC_NATIVE" --pcc1-receipt "$PCC_RECEIPT" \
  --concurrency 1,10,100 --delays 0,100 --rounds 5 \
  --zero-delay-requests 20000 --repeats 5 --include-asyncio-gather \
  --output "$OUT.json"
```

The runner holds the core performance lock; each native application compile
is limited to 300 seconds, each measured arm to 60 seconds. The outer watchdog
adds a 900-second / 2-GiB process-tree cap and cleans up on interruption.
Start with a separately named smoke using `--concurrency 1,10 --delays 0,10
--rounds 2 --zero-delay-requests 100 --repeats 1` before the full matrix.
Keep the full measured sources and retained latency arrays identical between
arms. Judge the C100 zero-wait target against both same-run asyncio baselines;
report other widths/waits, paired repeat variability, CPU and RSS separately.
Passing these handler batches does not qualify live HTTP, HTTPS, all five GC
backends, or an LLVM-free compiler fixed point. Historical LLVM-assisted
reference results remain historical and must not substitute for this run.

## Runtime and compiler attribution

[runtime_ab.py](runtime_ab.py) holds the workload constant while comparing
explicit runtime archives and compiler sources:

```bash
uv run python benchmarks/runtime_ab.py \
  --compiler-source /path/to/frozen/pcc \
  --control-runtime /path/to/control/libpy_runtime_pcc_py.a \
  --candidate-runtime /path/to/candidate/libpy_runtime_pcc_py.a \
  --asyncio --output benchmarks/results/my-runtime-ab.json
```

For optimizer comparison, hold pre-pass IR and object emission constant; for
backend comparison, hold optimized IR and target options constant. Record the
actual pass implementation, cache identity and archive members changed.
[build_runtime_variants.py](build_runtime_variants.py) is a diagnostic entry;
audit its selected passes against production rather than assuming parity.
External LLVM references do not establish pcc1-owned compilation.

[profile.py](profile.py) reuses core native and CPython 3.15 sampling tools.
[batch_costs.py](batch_costs.py) analyzes batch overhead. Profiling/counting runs
are separate from uninstrumented throughput; retain instructions per request
as well as QPS when attributing a change.

## Compiler memory follow-up (2026-09-09)

The [recorded owner checkpoint](results/2026-09-09-owner-checkpoint.json) records
the newer tuple/temporary-owner/GC4 fixes, native optimizer gate and failed
compiler builds. The earlier normal-mode [90-run comparison](results/2026-09-09-owner-final-three-way.json)
uses pcc1 `b45582507e80` and runtime `1ee0b1bb5e2b`; C100 is 56,443 versus
asyncio 89,947 QPS. This compiler's separate native-direct smoke failed.
Its normal-mode results do not turn the failed Stage1 receipt into a pass.
The [77,154-QPS owned runtime experiment](results/2026-09-09-owned-cfg-runtime-reference.json)
has a different runtime/pass scope and remains unqualified for default use.

The [string-memory receipt](results/2026-09-09-string-memory-followup.json)
replays the same 36.26 MB server IR through a native standalone optimizer.
After dict-default, comprehension and container ownership fixes, plus early
opcode rejection and lazy SROA name collection, peak RSS is **815.8 MB**;
the earlier dict-default-only source used **1,214.5 MB**. The last parser
change reduces replay time from 62.30 to 52.15 seconds with byte-identical
output. These are optimizer measurements, separate from complete application
compilation and serving RSS. The instrumented allocation run uses an external
C observer and the pinned runtime uses external LLVM object emission.

[Full native qualification](results/2026-09-09-native-memory-qualification.json)
records the isolated compiler and its scope. A Stage1 build alone does not
qualify a fixed point or replace the shared installed compiler. Final HTTP
compilation and handler measurements are recorded separately.

## Recorded results

- [Main README](../README.md#performance-and-qualification): qualification status
  and the recorded 2026-09-18 handler comparison.
- [2026-09-10 LLVM-assisted reference](results/2026-09-10-reproduce-clean/README.md):
  historical external-LLVM runtime construction, with the original measurements
  and scope correction. Related [throughput](results/2026-09-10-object-start-inline/README.md)
  and [memory](results/2026-09-10-ownership-leaks/README.md) receipts retain the
  experiment history; they do not establish current LLVM-free performance.
- [2026-09-08 memory-promotion A/B](results/2026-09-08-owned-mem2reg-runtime-ab.json)
  and [five-pass A/B](results/2026-09-08-owned-five-pass-runtime-ab.json):
  complete recorded runs, with identities and limits in each receipt.
- [Result index](results/README.md): raw experiments, including failed runs.
- [History through 2026-09-07](history-through-2026-09-07.md): earlier tables,
  rejected experiments and superseded implementation descriptions.

Compare arms within one controlled run. A historical result, a host-only gate
or a Stage1 build does not qualify the current pcc1 installation or all five GC
backends. Optimization remains tracked in
[pcc #188](https://github.com/allstoalls/pcc/issues/188).


The 2026-09-09 proven-reference candidate adds `PCC_KNOWN_OBJECT_REFS=1`
to the three recorded virtual-thread flags. Both comparison harnesses record
this setting. Keep the compiler's linked runtime identity separate from the
application runtime: that round's application archive additionally fixes raw
waiter initialization. The standalone reference-check diagnostic enables the
checked lane before main and requires an observed zero counter, including the
local HTTP probe; missing observation is not zero. See
[qualification](results/2026-09-09-known-reference-qualification.json) and
[waiter audit](results/2026-09-09-waiter-initialization-audit.json).

## Fresh-request live HTTP comparison

`benchmark_http_native.py` serves the production `GatewayServer` over loopback
HTTP/1.1. `benchmark_http_asyncio.py` is an explicit CPython TaskGroup reference
adapter using the same request codec, router, response encoder, response types
and child data transformations. Their transport/lifecycle implementations
necessarily differ; the reference adapter is not a second production framework.
Neither arm uses precomputed JSON. Every client request has a unique ID that
must occur in both child results and the final JSON response. Both children
must start, and their `finally` cleanups must execute exactly once before a
response is valid.

This is a separate workload from `compare.py`'s handler batches. Each of C
persistent clients sends another request immediately after validating the
previous one. The common client retains per-request latency samples. Throughput
and latency exclude startup, two warmup requests per connection and functional
gates; exact-child server CPU/RSS includes those phases and shutdown, and excludes
the client. Do not interpret its RSS as a handler-benchmark memory comparison.
The HTTP adapter has no TLS; HTTPS remains a separate named-provider gate.

The native server requires a provenance-verified **threaded** runtime even with
one carrier: production server startup uses `carrier_pool_start`. An archive
with `threads=false` cannot substitute. Build and qualification remain core
responsibilities; this harness never provisions a runtime automatically.

After the central performance slot is released, compile with immutable current
artifacts (run under the core process-tree watchdog: 330 seconds / 2 GiB;
`http_compile.py` acquires the performance lock itself):

```bash
# Host-pcc native execution is a diagnostic, never a pcc1 qualification.
"$PCC_PYTHON" benchmarks/http_compile.py \
  --host-python "$PCC_PYTHON" --compiler-source "$PCC_SOURCE" \
  --runtime-archive "$PCC_THREADED_RUNTIME" \
  --output-dir benchmarks/build/http-current-host

# For the native compiler arm, replace --host-python with:
# --pcc1 "$PCC_NATIVE" --pcc1-receipt "$PCC_RECEIPT"
```

The helper reuses `compare.py`'s 300-second self/no-libpython compile gate,
rejects libpython/libLLVM linkage and writes `compile.json` binding the
executable, compiler, application sources, frozen core source, threaded runtime,
runtime provenance and effective environment. Native pcc1 additionally requires
its matching build receipt; this records that receipt without promoting a
Stage1 claim to a fixed-point qualification.

Start with a separately named functional/small-load smoke, under a 120-second /
2-GiB process-tree watchdog with `--no-performance-lock` because this runner owns
the lock. The runner requires CPython **3.15.0rc1**:

```bash
"$PCC_PYTHON" benchmarks/http_compare.py \
  --native benchmarks/build/http-current-host/http-native --native-label host-pcc \
  --compile-receipt benchmarks/build/http-current-host/compile.json \
  --compiler-source "$PCC_SOURCE" --runtime-archive "$PCC_THREADED_RUNTIME" \
  --concurrency 1,10 --delays 0,10 --rounds 3 --repeats 1 \
  --output benchmarks/results/http-current-smoke.json
```

Each arm independently passes fragmented requests, ambiguous framing rejection,
404 routing, and a failing child whose one-second sibling must be cancelled and
drained before 750 ms. A client disconnect is followed by terminal cleanup;
this proves eventual closure, not immediate disconnect cancellation. SIGTERM
must close connections, request owners, buffers, generation references and the
native carrier pool. Exact server request counts must match the client. Any
failure stops the run and keeps incomplete status and raw streams.

A full same-run comparison uses C=1/10/100, waits=0/10 ms, at least 100 rounds
and five alternating repeats. Match the native label (`host-pcc` or `pcc1`) to
its compile receipt. Store all paired QPS ratios, latency distributions,
process CPU/RSS, source/artifact identities and raw outputs. Hardware
instructions/cycles remain explicitly unavailable with this wait4 observer.
Complete successful measurements, a production no-fallback native compiler and
appropriate GC gates are prerequisites to a performance claim; preparing or
passing the CPython oracle does not satisfy them.
