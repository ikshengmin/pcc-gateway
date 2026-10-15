# Gateway CI and performance evidence

The initial CI is a correctness foundation. A green **Gateway host contracts**
check does not establish native pcc1 execution or that pcc1 beats asyncio.

## Automatic host lane

`.github/workflows/host-ci.yml` runs on pull requests, pushes to `main`, and
manual dispatch. It uses the exact CPython version in `.python-version`
(currently `3.15.0rc1`) and the immutable PCC commit/tree in
`.ci/pcc-source.json`. GitHub Actions are commit-pinned. The hash-locked
pytest-only subset in `.ci/requirements.txt` comes from `uv.lock`; CI imports
PCC and gateway directly from source instead of installing their build hooks.
It does not download a compiler, build a runtime or bootstrap PCC.

The command is:

```sh
python scripts/ci_gateway.py host --pcc-source ../pcc --output ../ci-results/host
```

Use clean Git checkouts and a fresh output directory outside both checkouts.
The runner preserves the project's default `-x -m 'not integration'` selection,
disables native provisioning and implicit pytest plugins, and runs under PCC's
existing process-tree watchdog (180 seconds, 2 GiB). A host-only guard makes
accidental compiler/runtime-builder entry fail. The three clang/socket probes
are marked `integration` because they really compile and execute native code.
They remain available through an explicit integration selection.

The host lane covers the existing deterministic protocol, fragmented framing,
buffer/backpressure, routing, cancellation/draining, error/cleanup, DNS/TLS
adapter and compiler-source contracts. New benchmark tests check two-child
work, identical JSON, measured/warmup counts, cancellation and malformed
results. The scripted native-workload model is explicitly host evidence;
it cannot establish scheduling overlap, native ownership, GC or throughput.

Each run retains `report.json`, exact selected/deselected node IDs, JUnit,
test counts, stdout/stderr and process-tree observations. Reports capture both
clean Git commits/trees, the actual interpreter hash/version and dependency
versions, effective compiler settings and all failures. Missing, skipped or
empty selections fail. Sources are checked again after execution.

## Explicit prebuilt native lane

There is deliberately no automatic second PCC bootstrap in this repository.
Native validation is a separate CLI phase; it is not a skipped green job in
the host workflow. A matching current pcc1 artifact is a prerequisite.

The initial admission adapter accepts the existing **Darwin arm64 Stage1 v3**
receipt contract. Other producer/platform receipt formats are not yet wired.
Supply the real compiler executable, its complete successful core receipt
directory (including immutable source snapshot and evidence), its build
runtime, and separate matching single-carrier/threaded application archives.

```sh
python scripts/ci_gateway.py native-admission \
  --pcc-source ../pcc --output ../ci-results/native-admission \
  --pcc1 /qualified/stage1/pcc1 \
  --receipt /qualified/stage1/build-receipt.json \
  --compiler-runtime /qualified/stage1/runtime-bundle/libpy_runtime_pcc_py.a \
  --runtime /qualified/single/libpy_runtime_pcc_py.a \
  --threaded-runtime /qualified/threaded/libpy_runtime_pcc_py.a
```

Admission delegates to PCC's strict receipt and runtime-provenance validators:
compiler bytes, complete source closure, receipt/build evidence, runtime
inventory, target, threading, codegen and configuration must match. PATH names,
mtime, wrappers and an arbitrary “latest” binary are insufficient. No missing
artifact is repaired by rebuilding. Admission alone reports
`ADMITTED_NOT_EXECUTED`, never a native-test pass.

After admission, the same arguments with phase `native` and a new output
directory run exactly eleven gateway cases: eight current-pcc1 canaries and
three exact pcc1 example parameters. Both `PCC_CURRENT_PCC1` and `PCC_TEST_PCC1`
refer to the admitted executable. Compiler/runtime/receipt/sidecar hashes are
checked again after tests. Any mutation, skip, failure, leaked process or
selection-count drift prevents a pass. This phase is bounded by a 30-minute,
2 GiB process-tree watchdog and does not run as part of ordinary host CI.

The eleven cases do **not** replace these still-separate required gates:

- PCC's complete `test_async_await.py`, async-for/async-with/await behavior,
  coroutine ownership/closures and exception-root tests
- Full core GC0–4 runtime and self-host qualification
- The live HTTPS/product canary, certificate reload and drain behavior
- The three external-clang socket-reference probes and host-pcc example arm
- A controlled same-run native-versus-CPython performance comparison

The native report lists these exclusions explicitly. The live product canary
now consumes the same strict prebuilt threaded-runtime fixture when selected;
it does not silently build a second runtime in CI.

## What “faster than asyncio” must mean

`benchmark_native.py` and `benchmark_asyncio.py` perform two child waits,
join/cleanup and validate the same sorted JSON bytes. They do **not** run an
HTTP server or sockets. `benchmarks/compare.py` labels these results as handler
batch requests/second. CPython `asyncio.TaskGroup` is the primary baseline;
the gather prototype and a future optional uvloop arm remain separately named.

Compilation, process startup and two warmup batches are outside the measured
batch timer. Per-request latency includes the children, join and JSON checks.
Whole-process CPU/RSS counters include startup, warmups and output formatting;
they must not be relabeled as request-only costs or tree-summed memory.
`benchmarks/protocol.py` rejects count/dimension mismatches, missing samples,
negative/non-finite/boolean timings and invalid timer bounds before summary.

A performance verdict still needs matching compiler/runtime/source receipts,
equivalent work/results/error cleanup, same-machine alternating repeated arms,
concurrency/delay and GC/carrier settings, latency distributions and resource
evidence. Live HTTP and HTTPS throughput need their own equal-wire-work tests.
Historical dirty-source or single-collector handler numbers are not current
gateway qualification. A bottleneck attribution requires profiling evidence.
