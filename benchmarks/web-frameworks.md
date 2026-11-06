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

The route/HTTP-codec and runner checks pass (27 focused tests). Native Mac
comparison is in progress. The first current-source Linux build exposed a core CMS TLS
handoff defect; core commit `d345f400b` fixes its cross-module access through the
existing getter and adds nonzero native TLS coverage. The repaired Linux image
links, and both Linux and Mac initially stopped while reading resolver
configuration. A class-method native reproducer traced that failure to raw
buffer arguments declared as `c_ptr` instead of `c_rawptr`. The gateway's DNS,
socket and TLS text adapters now declare raw address arguments explicitly.
119 focused host checks and a native exact-byte system-config regression pass.
The rebuilt Mac server starts, accepts connections and exits on SIGTERM, but
closes the first HTTP request without a response. That request-path failure is
under investigation; no throughput result or whole-runtime qualification is
established yet.
