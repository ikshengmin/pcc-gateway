# Same-run Linux native comparison

The `Native pcc1 versus asyncio` workflow builds one Linux x86_64 Stage1 from
the immutable commit and tree in `.ci/pcc-native-source.json`. It consumes the
actual `pcc.platform-bootstrap.v1` producer receipt through the verifier in
that same clean PCC checkout. The existing host-contract source pin remains
independent. A native pin must include the portable receipt verifier itself;
an older compiler receipt cannot be transplanted to a newer checkout.

Pushes changing the native pin, workflow or either native runner activate the
lane. Manual dispatch uses the same committed pin. Coordinate a pin activation
after any already-running core bootstrap reaches a terminal state. The workflow
serializes its own runs and never cancels an active native comparison.

## What executes

Before bootstrap, CPython 3.15.0rc1 runs the 175 exact platform-admission,
shared-bootstrap, failure-receipt and Stage1 build-tool controls. The frozen
test-only core lock subset is checked, and the core helper preserves its
default six-worker/loadgroup schedule, 120-second / 16-GiB guard, exact test
counts and zero-skip requirement. These are source controls, not native proof.

1. The existing core helper builds one owned, single-thread, atomic-refcount
   runtime under its 1,200-second / 16-GiB process-tree guard.
2. `bootstrap_platform.py --gc 0 --stage 1` builds one shared Stage1, using that
   explicit runtime. Its existing caps are 7,200 seconds for Stage1, 6,000 seconds
   per canary compile, 16 GiB and four CPUs. It owns the performance lock.
3. The portable verifier checks the full clean source closure, compiler,
   runtime members/configuration, native canary, logs and resource receipts.
   Compiler and runtime bytes are retained before the hosted runner disappears.
4. With CPython 3.15.0rc1 as the asyncio baseline, the selected native compiler
   builds and executes the structured failure/cancellation/rejected-fork canary.
   It then builds the ordinary `benchmark_native.py`. Both emitted programs
   must be static ELF artifacts. Host Python and runtime rebuilding are disabled
   for those native compilation commands. Their execution environment explicitly
   enables `PCC_DIRECT_INDEXED_KERNEL_CAPTURE`, `PCC_DIRECT_INDEXED_KERNEL_EMIT`
   and native-object output, matching the platform producer's native-canary
   route. Admission keeps the original baseline profile. Both report layers
   record the selected emission flags; this is not an ordinary text-route
   compile-speed measurement or a larger compile-time allowance.
5. Native pcc1 and asyncio TaskGroup execute the same two-child / sorted-JSON
   work at concurrency 1, 10 and 100, with 0 and 100 ms waits. There are five
   repeats per cell, rotating arm order, two warmup batches, at least 5,000
   zero-wait requests per repeat and ten nonzero-wait batches. Every request
   checks its response bytes; the harness checks work counts and every latency.

The comparison keeps the existing 1,800-second / 2-GiB whole-process-tree cap,
300-second application compile caps and 60-second command caps. Its own core
performance lock spans native application compilation and measurements. The
outer watchdog checks whole-tree termination before the final report becomes
`MEASURED` and before the strict comparison becomes `COMPLETE`. The producer
source and full admitted file inventory are checked
again, along with the emitted application hashes.

## Reading the evidence

`native-comparison/report.json` records source identities, admitted artifacts,
cleanup results, watchdog receipt and per-cell native/asyncio median QPS ratios.
`comparison.json` and `comparison.md` retain all raw request latencies, QPS
ranges, pooled p50/p95/p99, whole-command CPU times and peak RSS. Linux uses the
verified native GNU time observer; missing collection fails the lane. RSS
includes startup and warmups, is a high-water mark rather than a tree sum, and
may include descendants the command itself waited for. It is not request-only
memory. Hardware instruction counters are not collected by this lane.

`MEASURED` means the required comparison completed. It does not mean pcc1 won.
`performance_outcome` separately says whether the native median was higher in
every selected cell. A slower native result is still retained and identifies
the next performance work; no host-compiler arm can substitute for pcc1.

This is a Stage1/native-canary and matched-workload measurement. It does not
establish full GC0–4 qualification, a Stage2/Stage3 fixed point, full asyncio
compatibility, live HTTP/HTTPS throughput, or a performance advantage before an
actual successful run produces the corresponding results. Receipt/format unit
tests and a green host workflow alone do not establish native execution.
