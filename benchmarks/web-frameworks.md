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

Build from the current core checkout with its normal entry:

```sh
uv run pcc --backend self ../pcc-gateway/web_frameworks_app.py \
  -o "$EVIDENCE/web-frameworks-macos"
```

Record that command under the existing build watchdog. The core measurement
entry provides the performance lock, process-tree watchdog,
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

Use the current PCC checkout, the owned self backend and the process-tree
watchdog. For a Docker arm64 guest, run this from the core checkout:

```sh
uv run pcc --backend self --target=aarch64-unknown-linux-gnu \
  ../pcc-gateway/web_frameworks_app.py -o "$EVIDENCE/web-frameworks-linux"
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

### Latest same-Mac retry — C512 remains blocked (2026-11-13)

The third user-authorized batch stopped after five rounds. Gateway `5527492`
keeps accepted-socket admission and task publication in one resumable batch,
including cancellation cleanup before task transfer and close-then-raise
ownership. Its server/streaming checks are **109 passed**. The change removes
per-socket helper continuations; it is not a demonstrated throughput gain.

The final build uses ordinary current-directory `uv run pcc --backend self`
at core `bc6743593`, including the recorded uncommitted dependency-closure
work. Compiler and gateway input hashes match before/after compilation. Binary
SHA-256 is `3dbf74440fa4e0a758f80205694845f4a0e5626b25928fc3b46ac46fe7c484db`.
The original RSpec, 1,001-request recycling and C512 concurrent-ID checks pass.
The first timed `GET /` row has zero errors and **1,333.3 requests/s**, but the
next dynamic GET has **285 connect, 7 read and 115 write errors**. The runner
rejects it, accepting only **1 of 30** planned rows. **There is no accepted
complete current QPS comparison or leaderboard rank.** This is one-carrier,
GC0, local Apple M2 Max / macOS 27.2.1 evidence, not native-pcc1 qualification.

An earlier artifact in this batch recorded 3,767.1 requests/s on `GET /` and
then failed the dynamic GET with 8 connect, 43 read and 227 write errors.
Different uncommitted runtime inputs and single samples prevent treating that
as an A/B performance result. The final run does not renew the older figure.

The bounded diagnostics establish narrower facts:

- The preceding failed artifact reports read errno -54 (ECONNRESET); the eight
  observed read failures are not EINTR or EBADF. Debugger timing is not QPS
  evidence and does not identify the initiator of the reset.
- An independent Python listener actually accepts 8/128/128 queued sockets
  for requested backlogs 8/128/4,096 with 512 connection attempts. Counting
  completed client connects alone overstates queue capacity. This establishes
  the local queue constraint, not the gateway failure's exact cause.
- A native 512-connection test verifies 4,577 responses. One connection closes
  at request 1,000 while the other 511 stay open. Connections are established
  in batches for this counter-isolation diagnostic; it does not replace C512
  throughput or concurrent-establishment acceptance.

The unresolved failure remains new connection traffic overlapping connection
admission/cleanup at the route transition. The original consecutive-route
protocol, timeouts and error rejection remain unchanged. Full suites,
bootstrap and live TLS qualification are unrun. Raw logs remain outside Git.

### Second ten-round retry

The second user-authorized ten-round batch has also stopped. Its final artifact
uses gateway `5d478b9` and a current-directory host-pcc0/self build at core
`cdfffdea7`, including the recorded uncommitted dependency-closure work. The
original C512 concurrent-ID preflight still reports connection resets, before
any of the planned 30 timed rows. **There is no accepted complete current QPS
comparison.** This is local Apple M2 Max / macOS 27.2.1 evidence, not a published
leaderboard rank or a native-pcc1 qualification.

Published changes cover bounded I/O scheduling, separating disconnect cleanup
from the I/O priority queue, exact-identity owner retirement, releasing task
handles outside the accept lock, and dropping completed task captures only
after their owning resume and continuation lease end. Gateway server/streaming
checks are **106 passed**; the final core ownership/model selection is **66
passed**. A C ABI reference probe executes the capture-lifetime change on all
five collectors, and five native I/O reference cases pass with `auto` on GC0–4.
Those reference drivers use external C tooling against the verified owned
runtime; they do not establish native-pcc1 compiler ownership. They retain six
pytest workers and the 90-second/1-GiB guard while reusing the freshly built,
provenance-verified archive. Earlier cold-build memory-limit failures remain
recorded, not waived or relabeled as passes.

Intermediate candidates produced valid **single** C512 `GET /` rows, including
3,736 requests/s, but subsequent dynamic-route rows failed. Running the dynamic
route alone, or adding a diagnostic one-second gap after `GET /`, passed; the
official comparison retains consecutive routes without that gap. Inspection of
the pinned upstream `.tasks/config.rake` confirms one warmup followed by
consecutive route runs. No timing/connection/error criterion was weakened.
Full suites, bootstrap and live TLS qualification remain unrun.

### Earlier retry boundary

Gateway `c2ca245`, compiled by the current core checkout at `bd81bf994` with
`uv run pcc --backend self`, builds and executes on Apple M2 Max / macOS 27.2.1.
This is host-pcc0/self evidence, not native-pcc1 or fixed-point qualification.
The gateway changes drain ready accepts, move session initialization to the
connection task, and retain socket/admission/generation ownership through
cancellation and drain. The focused server/streaming selection is **103 passed**.

The original C512 comparison still fails its concurrent dynamic-ID preflight,
before any of the planned 30 timed rows. **There is no valid new C512 QPS.**
Basic HTTP, upstream RSpec and 1,001-request connection recycling pass. The
same preflight fails under GC0–4; changing collector, shortening the carrier
ready batch, waiting after warmup, or experimentally forcing an I/O scheduling
edge did not resolve it. These runtime experiments were not published changes.

The unchanged aiohttp 3.14.5 / CPython 3.14.7 control passes the original
preflight. Native also passes when all 512 connections are established before
two concurrent dynamic-ID requests per connection, but fails when requests
overlap continued connection establishment. That barrier is diagnostic only;
it does not replace the original gate. Five sampled native bursts lose 115–220
clients during connection establishment. The root cause remains unresolved.
Work stopped at the requested ten-round limit. Full suites/bootstrap and live
TLS qualification were not run. Raw diagnostics remain outside Git; the older
accepted measurements below describe their recorded sources only.

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

### Queue pressure: matched native C512 A/B

Core scheduler patch `32b9aaa12` is applied to the same compiler/runtime source
as the `92d73d8ab` control (peer `68d7e1288` GC4 tuning is excluded from this
paired measurement). Gateway `582c8f5`, one carrier, GC0, three load threads and
the original resource limits are retained. Two repeats alternate arm order;
all 12 measured 15-second rows are server-bound with zero HTTP/transport errors,
successful preflights/contracts and clean process exits.

| Route | Before requests/s | After requests/s | Change | Before p99 ms | After p99 ms |
| --- | ---: | ---: | ---: | ---: | ---: |
| GET / | 2,896.5 | 3,003.0 | +3.7% | 2,878.464 | 276.128 |
| GET /user/:id (changing IDs) | 2,617.5 | 2,718.4 | +3.9% | 2,982.912 | 359.808 |
| POST /user | 2,835.0 | 2,801.5 | -1.2% | 2,838.528 | 279.648 |

These are two-run medians. Tail latency improves by roughly 88–90%; throughput
does not improve uniformly. The runtime retains its 256-entry local queues and
64-step IO polling batch, but shares service with a live injection backlog and
uses FIFO under a large ready set. The separate 400-task native reproducer
reaches every task in 512 steps, versus 9,113 before the change.

Candidate binary SHA-256:
`b5f5df555c8d0bfa460e11425ec86fc4f709989be0dad031c0c02891a1cfef64`.
Control binary: the `1328d429...` merged artifact above. Raw report SHA-256:
`357ab61e7a53084d92b690de70c651a002a48e4c8ea9b1339cddc10b8c71c87f`.
Reproduce the native-control mode with `--repeats 2 --concurrencies 512`.

### Native ownership repairs: fixed-work memory

Core `2085bf26c` includes the chained-receiver, bound-callback, special-method
receiver and slice-delete ownership repairs, together with the merged peer
changes through `79ccda713`. The application remains gateway `582c8f5`, compiled
by host pcc0 with the owned self backend and matching threaded runtime.

The uninstrumented native application handles four batches of 5,000 ordinary
GET requests, each using ten new connections with 500 keep-alive requests per
connection. A bounded read-only debugger census between batches records live
allocator bytes and tracked objects. These pauses exclude this experiment from
throughput comparison. HTTP checks before/after and clean shutdown pass.

| Point | Tracked objects | Live requested bytes | RSS bytes |
| --- | ---: | ---: | ---: |
| Initial | 1,812 | 3,510,657 | 30,326,784 |
| 5,000 requests | 1,812 | 3,597,873 | 31,227,904 |
| 10,000 requests | 1,812 | 3,597,873 | 31,227,904 |
| 15,000 requests | 1,812 | 3,597,873 | 31,227,904 |
| 20,000 requests | 1,812 | 3,597,873 | 31,227,904 |

The queue-pressure control above reaches 30,500,654 live requested bytes and
78,856,192 RSS bytes after the same 20,000-request workload. The repaired
artifact shows no further growth after its first batch; this bounded result
does not establish every workload's lifetime behavior. Thirty-five focused
core checks cover the latest special-call/comparison and slice-delete repairs,
including native execution under GC0–4. Full suites/bootstrap remain unrun.

Native binary SHA-256:
`bcf2735819b25ba4292492d3b38f54aa19967ff65cf248951c86d251be1e9437`.
Fixed-work report SHA-256:
`f365183eb2f9b59439e1075a1f53e2c75bd8bc573faa29fa602ea5c547d107e2`.
Throughput must be measured separately with the native-control runner above.
An earlier callback-only C10/C512 matrix failed its final HTTP postflight after
a server-idle POST interval. Three diagnostic cycles did not reproduce that
stall; non-reproduction does not turn the failed matrix into an accepted score.

### Ownership repair: native C512 A/B

The same `2085bf26c` binary is compared with the queue-pressure candidate
`b5f5df555...` above. This is a cumulative merged-source comparison, including
the intervening peer root-span/GC changes, not attribution to a single patch.
Two alternating repeats retain one carrier, GC0, three load threads and all
ordinary connection limits. All 12 rows are server-bound, have zero HTTP or
transport errors, pass the upstream and additional HTTP checks, and exit cleanly.

| Route | Control requests/s | Latest requests/s | Latest p99 ms |
| --- | ---: | ---: | ---: |
| GET / | 2,884.1 | 2,958.9 | 268.896 |
| GET /user/:id (changing IDs) | 2,648.0 | 2,567.4 | 298.848 |
| POST /user | 2,529.9 | 2,800.2 | 309.664 |

These are two-run medians, with variation between runs; they do not demonstrate
a uniform throughput improvement. The native process peak RSS is
44,728,320/44,695,552 bytes for the latest arm, versus
402,718,720/376,832,000 for the control. This lifetime peak includes startup,
preflights, warmup and all three timed routes, separately from the fixed-work
live-allocation census above. Same-machine aiohttp has not been rerun in this
native-control comparison; the earlier aiohttp numbers remain separate evidence.

A preceding C10/C512 matrix completed all 24 rows, contracts and shutdowns,
but four first-arm rows were not server-bound. Its overall medians are not
accepted as throughput-ceiling evidence. The independently repeated C512
matrix above retains all of its rows. A failure-only diagnostic wrapper can
capture the owned server before teardown; it did not run during successful
timed intervals and does not change the workload.

Accepted raw report SHA-256:
`42804874e7910fb088aafebf25ea7e7c0021819fcf07437a10aa42b5fa39894c`.
Completed mixed-saturation report SHA-256:
`6e32251743bf7b707b5fdf0c3e1e46234fc8cd1614a55f6a22eb43784456b0df`.
Reproduce with the native-control mode and `--repeats 2 --concurrencies 512`.

### Latest codec conversion: native C512 A/B

Three longer profiles of the ownership-repaired executable attribute roughly
9–12% of filtered native samples to the handwritten Latin-1 conversion loops.
A separate, untimed application-IR counter build records approximately
20,700 / 22,664 / 21,413 direct calls per handled request on the three routes.
For plain GET, the two conversion functions account for about 2,090 of those
calls. Counters are diagnostic only; completed handler entries, including
the final ten in-flight requests, are the normalization denominator.

Gateway `b83d215` replaces those loops with ordinary `decode("latin-1")` and
`encode("latin-1")`, preserving the existing HTTP error for values outside
Latin-1. Fifty host HTTP/route checks and five isolated native codec cases
under GC0–4 pass, including every byte value, empty values, invalid Unicode,
collection and request/response round trips. Full application execution is
verified separately by the benchmark. Core/compiler/runtime remain the same
frozen `2085bf26c` inputs used by the control; no benchmark-only handler changes
or resource-limit changes are involved.

Two alternating C512 repeats complete all 12 server-bound rows with successful
upstream/additional HTTP checks, zero transport errors and clean shutdown:

| Route | Control requests/s | Codec requests/s | Change | Codec p99 ms |
| --- | ---: | ---: | ---: | ---: |
| GET / | 3,191.3 | 3,446.3 | +8.0% | 198.272 |
| GET /user/:id (changing IDs) | 2,882.1 | 3,201.2 | +11.1% | 198.784 |
| POST /user | 2,954.1 | 3,374.8 | +14.2% | 185.984 |

These are same-run, two-repeat medians. Earlier tables have different run
conditions and are not the denominator for these percentages. Aiohttp was not
rerun; full suites and native-pcc1/bootstrap qualification remain unrun.

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
