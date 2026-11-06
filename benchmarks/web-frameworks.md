# Web Frameworks Benchmark

`web_frameworks_app.py` implements the upstream API through `App`, `Router`,
the normal HTTP/1 codec and `GatewayServer`: `GET /` returns an empty body,
`GET /user/{id}` returns the supplied path parameter, and `POST /user` returns
an empty body. It listens on `0.0.0.0:3000` with one carrier. Ordinary request,
connection, buffer and drain limits remain enabled.

The comparison uses upstream revision
[`6f7869a8ce3a5f456e24e00d3f9f55463745914e`](https://github.com/the-benchmarker/web-frameworks/tree/6f7869a8ce3a5f456e24e00d3f9f55463745914e).
The upstream aiohttp application and dependency manifest are downloaded without
modification.

## Same-Mac comparison

`benchmarks.web_frameworks_macos` runs the native gateway and unchanged upstream
aiohttp sequentially on the same Mac. It uses the same routes, dynamic-ID Lua,
closed-loop keep-alive model, five-second warmup and 15-second measurements as
the container lane below. An available shared port avoids existing services;
the unchanged RSpec suite uses a recorded `Net::HTTP` port shim. macOS CPU
affinity is unavailable and is explicitly reported. Per-run process CPU deltas
and the existing exact-child wait4 observer record utilization and lifetime RSS;
the observer's external C compiler builds measurement tooling only.

The core checkout exposes this through its `benchmarks/webserver.py` entry:

```sh
uv run python ../pcc/benchmarks/webserver.py --output "$EVIDENCE/mac-comparison" \
  --native "$EVIDENCE/web-frameworks-macos" \
  --build-receipt "$EVIDENCE/mac-compile.json" \
  --python /path/to/aiohttp-venv/bin/python --zrk /path/to/zrk \
  --ruby /path/to/ruby --rspec /path/to/rspec --gem-home /path/to/gems \
  --threads 3
```

Build the Mac executable using the frozen-source command below without
`--target`. The core entry provides the performance lock, process-tree watchdog,
2400-second limit and 2 GiB measurement-tree cap. Select the actual reference
Python and dependency versions explicitly; they are recorded in the report.

For a compiler/runtime A/B, replace `--python` with
`--reference-native "$CONTROL_BINARY" --reference-build-receipt "$CONTROL_BUILD"`.
Both native applications must use the same API, carrier count and ordinary
1,000-request connection limit. The runner labels the reference `native-control`,
checks both build receipts and binary identities, and alternates arm order.
Use an even repeat count for balanced ordering; this mode does not produce an
aiohttp comparison.

## Linux Docker comparison

Both server images use the same resolved `python:3.14-slim` base
digest and run sequentially on CPU 0 in one Linux Docker guest. The native
gateway executable does not run under that image's Python interpreter. Load
generation runs on CPUs 1–3 with three zrk threads. Server and client share an
isolated network namespace and its loopback, avoiding host port collisions
without bridge/NAT/port-forwarding on the measured path. Each server has a 1 GiB
container memory limit. Docker must provide at least four CPUs.

Before and after each arm, an independent live probe checks changing IDs,
zero-padding, POST body consumption, same-socket keep-alive and fragmentation.
The unchanged upstream RSpec route suite must pass all six examples. The
upstream five-second C50 warmup precedes 15-second closed-loop keep-alive runs
at C10/64/256/512 on all three routes. The dynamic ID route uses the unchanged
upstream Lua script. Three repetitions alternate arm order. Error counters,
non-2xx responses, interruptions and mismatched load models reject a result.

One deliberate harness correction: the pinned upstream `config.rake` retains
the Lua `script` argument after `GET /user/42`, so a later `POST /user` would
still send dynamic GETs. This runner builds fresh arguments for each route;
`test_dynamic_get_script_cannot_replace_subsequent_post_workload` guards it.
It reads zrk 3.0.0's native JSON schema and validates whole-run counts, elapsed
seconds and microsecond latency units directly.

The unchanged upstream saturation probe records cgroup CPU use for each run.
Read its verdict alongside throughput: a mixed or server-idle run cannot
establish a server throughput ceiling. Summary percentiles are medians of
per-run percentiles, not pooled latencies. These are local Linux guest results,
not submissions to or rankings against the published dashboard.

## Reproduce

Build the application from a frozen PCC source snapshot using the owned self
backend, an isolated matching threaded runtime, and a process-tree watchdog.
For a Docker arm64 guest, the application compiler command is:

```sh
PCC_NO_AUTO_PCC1=1 PCC_WITH_THREADS=1 PCC_RUNTIME_BUILD=owned \
PCC_SOURCE_ROOT="$PCC_SOURCE" PCC_REPO_ROOT="$PCC_SOURCE" \
PCC_RUNTIME_DIR="$PCC_SOURCE/pcc/runtime" PYTHONPATH="$PCC_SOURCE" \
uv run python -m pcc --backend self --target=aarch64-unknown-linux-gnu \
  web_frameworks_app.py -o "$EVIDENCE/web-frameworks-linux"
```

Use `x86_64-unknown-linux-gnu` for an x86-64 guest. Retain the compiler command,
source hashes, runtime provenance, binary hash and the successful watchdog
receipt. A fresh host-pcc0 build is not a pcc1 or fixed-point qualification.
The runner accepts an ELF matching the guest architecture and never silently
rebuilds or replaces it. It records the supplied compilation receipt without
turning that receipt into a toolchain qualification claim.

Run from the gateway checkout under core's existing guard, using a fresh output
directory outside the repository:

```sh
uv run python ../pcc/scripts/run_process_tree_sample.py \
  --result "$EVIDENCE/comparison-watchdog.json" \
  --samples "$EVIDENCE/comparison.samples.tsv" \
  --stdout "$EVIDENCE/comparison.stdout" --stderr "$EVIDENCE/comparison.stderr" \
  --timeout 2400 --max-tree-rss-bytes 2147483648 -- \
  uv run python -m benchmarks.web_frameworks \
    --native "$EVIDENCE/web-frameworks-linux" \
    --build-receipt "$EVIDENCE/compile-watchdog.json" \
    --output "$EVIDENCE/comparison"
```

The report retains every raw zrk JSON, RSpec contract, cgroup saturation result,
command log, upstream file hash, image digest and installed reference version.
The runner removes only its uniquely named containers, including on failure.
Raw receipts remain outside Git. Full suites and bootstrap are separate gates.

## Current boundary

### Accepted same-Mac single-carrier baseline

Source: gateway `582c8f5`, core `782821067` (host-pcc0 compilation, owned self
backend and threaded atomic pcc-Python runtime, GC0). Hardware: Apple M2 Max,
12 logical CPUs, macOS 26.5.1. Reference: CPython 3.14.7 / aiohttp 3.14.5;
load generator: zrk 3.0.0, three threads. Both servers use one carrier/event
loop, without CPU affinity. Each row below is **one** 15-second C10 run, not
a repeated-run median or an official leaderboard result.

| Route | pcc-gateway requests/s | aiohttp requests/s | pcc p99 ms | aiohttp p99 ms |
| --- | ---: | ---: | ---: | ---: |
| GET / | 2,655.0 | 22,463.7 | 8.948 | 0.786 |
| GET /user/:id (changing IDs) | 2,624.6 | 20,312.6 | 5.926 | 0.921 |
| POST /user | 2,674.9 | 21,564.8 | 8.308 | 0.817 |

All six measured runs have zero transport/HTTP errors and pass the selected
load-model checks. Each server passes all six original RSpec examples, the
live body/framing contract, 1,001-request connection recycling and concurrent
dynamic-ID checks. Both processes exit cleanly. Exact-child peak RSS over the
whole arm (startup, probes, warmup and all three routes included) is 361,594,880
bytes for gateway and 47,775,744 bytes for aiohttp. This is not a steady-state
per-request memory measurement.

Native binary SHA-256:
`3f93314506675fe3a704e4d76c4b7b37949defb16960f9c3c0d0cc9181a58048`.
Raw report SHA-256:
`fb69a5cb6864859bd025ef8286390f43bce71301e0effaf9162c869c9e242794`.
Raw receipts are retained outside Git. Reproduce the selected matrix with
the Mac command above plus `--repeats 1 --concurrencies 10`.

### Accepted C256/C512 after mixed-waiter repair

With the same gateway `582c8f5` and core `8c604da53`, all 12 measurements at
C256/C512 complete without transport/HTTP errors, timeouts or server-idle
intervals. Both arms pass the upstream contract and live preflights and exit
cleanly. The core repair changes lock notification/retry semantics; this run
retains one carrier, the same resource limits and the same Mac/reference setup
above. Each row is one 15-second measurement, not a repeated-run median.

| Route | Concurrency | pcc-gateway requests/s | aiohttp requests/s | pcc p99 ms |
| --- | ---: | ---: | ---: | ---: |
| GET / | 256 | 2,823.9 | 22,263.8 | 1,149.440 |
| GET / | 512 | 2,770.1 | 21,919.5 | 3,032.064 |
| GET /user/:id (changing IDs) | 256 | 2,606.3 | 21,139.9 | 1,178.112 |
| GET /user/:id (changing IDs) | 512 | 2,604.7 | 20,802.0 | 3,027.968 |
| POST /user | 256 | 2,761.1 | 22,313.0 | 1,154.560 |
| POST /user | 512 | 2,656.6 | 21,745.3 | 3,060.736 |

The stall is fixed; throughput and tail latency still need optimization.
Exact-child lifetime peak RSS is 699,121,664 bytes for gateway and 53,428,224
bytes for aiohttp, including probes, warmup and all six route/concurrency runs.
Native binary SHA-256:
`f26e99d761c581dbeecf7db7fd2712603fb2d1af4b01ab906c84dc124239aa69`.
Raw report SHA-256:
`b5575b28df7f12b258a49be7242b7f43a5c6f1250725fb60d6a935996b5f07fa`.
Reproduce with `--repeats 1 --concurrencies 256 512`.

### Deferred-method optimization: matched native A/B

The core patch published as `92d73d8ab` is measured on the common core
`8c604da53` baseline, with gateway `582c8f5` in both arms. The frozen candidate
contains that method-call patch and its ABI chunk correction; the independently
rebased GC4 selector changes are excluded from this paired experiment. Both
arms use the owned host-pcc0/self/threaded-atomic pipeline, GC0 and one carrier.
This is a compiler/runtime comparison, not another aiohttp run.

Four repeats alternate candidate/control order at C10. Each measurement lasts
15 seconds with three load threads. All 24 measured rows are server-bound with
zero transport/HTTP errors; all contract/preflight checks and process exits pass.
The table contains medians of four runs (including per-run p99 medians).

| Route | Before requests/s | After requests/s | Change | Before p99 ms | After p99 ms |
| --- | ---: | ---: | ---: | ---: | ---: |
| GET / | 2,705.9 | 3,006.0 | +11.1% | 7.628 | 4.880 |
| GET /user/:id (changing IDs) | 2,556.9 | 2,811.9 | +10.0% | 6.488 | 5.052 |
| POST /user | 2,702.4 | 3,034.6 | +12.3% | 6.854 | 4.718 |

Candidate QPS ranges are 2,991.7–3,193.8, 2,733.1–2,955.4 and
2,902.6–3,199.7 respectively. Exact-child lifetime peak RSS medians are
398,991,360 bytes for the candidate and 363,233,280 bytes for the control.
These fixed-duration runs complete different request counts; they do not
establish an equal-work memory improvement. The remaining aiohttp gap is open.

Candidate binary SHA-256:
`f829ce3cff30e94f878ecce3f03cfc8a2b62757c7f5e7e10a00b364412554975`.
The control is the `f26e99d7...` binary in the C256/C512 table above.
Raw report SHA-256:
`34f1e0d4d52d898d1b71547956102a6023725c0d6cc2973cdfa9984da220f8b7`.
Reproduce the native-control mode with `--repeats 4 --concurrencies 10`.

### Merged source: C64/C256/C512 versus aiohttp

Core `92d73d8ab` (including the peers' GC4 selector commits), gateway `582c8f5`,
and runner `21cd016` were rebuilt and measured with the same Mac, GC0, one
carrier/event loop, three load threads and reference versions above. All 18
15-second measurements are server-bound with zero HTTP/transport errors;
both processes pass the contracts/preflights and exit cleanly. This is one
repeat per row, not the four-repeat matched A/B above.

| Route | Concurrency | pcc-gateway requests/s | aiohttp requests/s | pcc p99 ms | aiohttp p99 ms |
| --- | ---: | ---: | ---: | ---: | ---: |
| GET / | 64 | 2,932.5 | 22,723.2 | 45.520 | 3.445 |
| GET / | 256 | 2,833.3 | 22,611.7 | 1,209.856 | 12.916 |
| GET / | 512 | 2,914.1 | 22,193.7 | 2,694.144 | 28.456 |
| GET /user/:id (changing IDs) | 64 | 2,817.7 | 21,876.3 | 29.336 | 3.541 |
| GET /user/:id (changing IDs) | 256 | 2,573.4 | 21,404.7 | 1,208.832 | 13.396 |
| GET /user/:id (changing IDs) | 512 | 2,720.5 | 20,860.6 | 2,941.952 | 29.960 |
| POST /user | 64 | 2,944.0 | 22,966.3 | 39.152 | 3.399 |
| POST /user | 256 | 3,033.7 | 22,381.5 | 1,041.152 | 12.924 |
| POST /user | 512 | 2,945.7 | 21,872.3 | 2,755.584 | 27.480 |

The gateway remains at roughly 12–14% of same-machine aiohttp throughput.
High-concurrency tail latency and memory remain open performance work.
Exact-child lifetime peak RSS, including startup/probes/warmup/all nine native
measurements, is 1,052,622,848 bytes for gateway and 53,411,840 for aiohttp.
This does not identify retained live objects or establish a leak diagnosis.

Native binary SHA-256:
`1328d429926fde247ac12db2d68c7a6285198cb77f15db22bba749ac0b41bb6d`.
Raw report SHA-256:
`3436c7c3986eb3b74eaac826589d98b20710fe29bf9b6b61c6ddd03b0654f408`.
Reproduce with `--repeats 1 --concurrencies 64 256 512`.

### Earlier failures and remaining qualification

At gateway `f88b173` and core `782821067`, the Mac native application passes
all six upstream RSpec examples and the additional live HTTP contract. The
first load run was rejected for read errors at the ordinary 1,000-request
connection limit: the server closed without advertising that decision.
Buffered, streaming and proxy responses now announce `Connection: close`
before committing the final allowed response, while retaining the limit.
The preflight now checks 1,001 sequential requests and automatic reconnection.

155 focused transport/proxy/streaming/benchmark host checks pass. The wider
matrix with core `782821067` subsequently stalled after its first C256 route,
with the main thread and carrier waiting on the connection-state lock. That
earlier matrix is not accepted; the repaired run above is separate evidence.
Core's numeric
method fix passed its CPython differential under GC0–4; the separately recorded
pre-existing callback-finalizer count mismatch remains an open core boundary.
Full suites, native pcc1 and bootstrap qualification are not established here.
