# Fresh-request HTTP preparation, 2026-10-02

This is **host-reference/validation evidence only**. Five focused tests passed
under CPython 3.15.0rc1 on Linux x86-64. No native HTTP application was compiled
or benchmarked at this checkpoint, and no performance superiority is claimed.

The [test log](host-v3.stdout) contains the exact five nodes. They exercise:

- Fresh IDs in both child results and exact JSON validation; stale payload rejection
- Both child `finally` cleanups, including TaskGroup sibling cancellation on failure
- Real loopback HTTP with fragmented headers, ambiguous framing rejection, 404,
  client disconnect, keepalive load, active-request graceful drain and terminal owner closure
- Strict response framing and final request/owner counts

The run took 1.05 seconds inside pytest, 1.53 seconds under the process-tree
watchdog, with 67,452,928 bytes peak observed tree RSS. The configured limit was
120 seconds / 1 GiB. [Watchdog receipt](host-v3-watchdog.json),
[samples](host-v3-samples.tsv) and [source identities](host-v3-verification.json)
are retained. An earlier attempt failed collection because the qualified venv
had no installed `pcc`; its [log](host.stdout) and [receipt](host-watchdog.json)
remain. The successful retry used the absolute Python executable and the frozen
v6 core source as the host import root; it built no compiler or runtime.

The native application and runner are new, pending native verification. The
current `runtime-v6-diagnostic-integrated` archive is explicitly unthreaded;
production `GatewayServer.start` needs `carrier_pool_start`, which rejects that
archive. A matching, provenance-verified threaded runtime and a qualified
compiler are required next. The [benchmark methods](../../README.md#fresh-request-live-http-comparison)
contain the compile-only and smoke commands plus resource/claim boundaries.

Performance owner hypothesis from source review, **not measured attribution**:
`_persistent_carrier_worker` still invokes `py_virtual_thread_run_once`, polling
timers and I/O per resumed task. The handler-only driver already batches those
polls in `py_virtual_thread_run_until_idle`. Once live HTTP execution works,
measure its uninstrumented same-run result before modifying the core scheduler;
any optimization must preserve timer fairness, cancellation, FD generations,
root ownership, and all five GC contracts. Current Linux tooling supplies
wait4 CPU/RSS; native sampling scripts are Darwin-specific and hardware
instruction/cycle counts are not available here.

## Observed subprocess smoke

The subsequent [asyncio subprocess smoke](asyncio-smoke-verification.json)
passed with the already-built, hash-verified external wait4 observer. It ran
C3, zero child delay, four measured requests per client, plus the warmup and
functional requests. The server reported exactly **24 requests started**, zero
active requests/connections/writers, and zero active writers. A delayed request
completed successfully while SIGTERM initiated drain. Both the exact server PID
and observer PID were absent after the runner returned. Observer CPU/RSS and
all streams remain in the receipt, but these tiny timings support no throughput
claim. No compiler, runtime, observer rebuild, or native benchmark ran here.

The replay command is [run-asyncio-smoke.py](run-asyncio-smoke.py), launched under
the [120-second / 1-GiB watchdog](asyncio-smoke-watchdog.json). Source, interpreter
and observer identities are preserved in the verification receipt. Native
compile/performance work remains blocked on centrally qualified artifacts and
the shared heavy-run slot.

## Native mixed timer/quiet-FD liveness failure

The minimal [mixed_timer_io_probe.py](mixed_timer_io_probe.py) was then compiled
with the coordinator-approved frozen v8 host compiler and matching unthreaded
pcc-Python archive, self backend, libpython off, GC0. Compilation succeeded;
`readelf -d` reports no dynamic section. With the real epoll backend, the emitted
program produced no output and timed out after five seconds. The watchdog
terminated and reaped its sole observed native child. This is an executed native
liveness failure, not a throughput result or pcc1 qualification.

[Verification and immutable input/artifact hashes](mixed-timer-io-v8/verification.json),
[compile command/options](mixed-timer-io-v8/compile-watchdog.json), and
[execution/cleanup receipt](mixed-timer-io-v8/run-watchdog.json) are retained.
Source inspection indicates `run_until_idle` blocks in `poll_io(-1)` while an
ordinary sleep timer is pending, without passing that timer's deadline into the
waitset. Exact causal attribution still requires a same-artifact control or
corrected-runtime A/B. The source proposal above must now account for this
existing single-carrier correctness issue as well as future persistent-carrier
idle work. The central heavy-run slot was released after the bounded probe.

### Corrected timer deadline: native GC0–4 pass

The bounded runtime fix now passes the **unchanged original probe** under all
five GC backends. The coordinator built the coherent frozen-v10 source and
matching pcc-Python archive, then compiled the same source bytes with host pcc0,
self backend and libpython off. Each native run used epoll, threads=0, an empty
PATH and disabled host-Python/host-pcc fallbacks; each exited zero with exactly
`PCC_MIXED_TIMER_IO_OK` and empty stderr.

The fix bounds an IO wait by the earliest ordinary sleep timer, and sends a
retained wake before publishing a newly earlier timer under the scheduler
mutex. Failed wake/allocation/root registration leaves prior caller state and
wait ownership unchanged, including timed Condition callers. Eleven focused
model/source cases passed before native execution. The first source-only
failure design and the later mis-scoped library-emission/stub finding remain
explicitly retained; neither is promoted into the successful gate.

- [All five native outcomes](mixed-timer-io-v8/v10-native-receipt.json)
- [Exact compile/run flow](mixed-timer-io-v8/v10-run-original.py)
- [Process-tree watchdog](mixed-timer-io-v8/v10-watchdog.json)
- [Caller/failure audit](mixed-timer-io-v8/caller-audit.md)
- Original program SHA-256: `af06ff72933cdad16406032e0081dad021b523631d00f1a104c06615adf6d9c3`
- Corrected runtime SHA-256: `ad7afd5aa1fadcd3e38e560681142a6cfad77f55c39d9453c588b866b2d87e3e`
- Native program SHA-256: `565584d2ad50a459a77f4a6b2c982d9dee8569d48c0b2a5268e08bb5d0646283`

This qualifies the bounded mixed timer/IO liveness correction. It does not
qualify pcc1, the complete five-GC product, event-driven persistent-carrier idle,
threaded live HTTP, HTTPS, or native throughput versus asyncio. Those remain
separate gates; no throughput result has been produced by this checkpoint.
