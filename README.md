# pcc-gateway

CI: [host contracts and explicit native admission](docs/ci.md). Host CI uses
the declared CPython version and a pinned PCC source commit; a green host check
does not qualify native pcc1 or establish a performance win over asyncio.

An HTTP/1.1 gateway and web framework written in Python for
[pcc](https://github.com/allstoalls/pcc), with native virtual threads,
structured concurrency, streaming, routing, reverse proxying, DNS and a TLS
provider ABI. Compiled applications run without libpython.

## Run

Install a qualified `pcc1` through the
[core installation guide](https://github.com/allstoalls/pcc#one-installed-compiler-for-multiple-projects),
then run from this checkout:

```bash
pcc1 local_http_app.py -o local_http_app
./local_http_app

pcc1 dashboard_app.py -o dashboard_app
./dashboard_app
```

Use the shared `~/.local/bin/pcc1` through PATH. The compiler resolves
`pcc_gateway/` from the checkout; `PCC_PACKAGE_SITE` is not needed here.
Default pcc1 options are sufficient.

The dashboard uses `TaskScope` to run two child operations concurrently,
join their results, and cancel/drain children on failure. See
[dashboard_app.py](dashboard_app.py) for the complete example.

## Develop and test

Clone `pcc` beside `pcc-gateway`. Both projects use **Python 3.15.0rc1**;
uv resolves the compiler from `../pcc`.

```bash
uv sync --locked
uv run pcc --backend self --python-libpython off local_http_app.py -o local_http_app
uv run pytest -q

# Compile and execute examples with both pcc and pcc1:
uv run pytest -q -x -m integration tests/test_native_examples.py
```

Native integration tests run separately;
`PCC_TEST_PCC1=/path/to/pcc1` selects a candidate compiler.

## Performance and qualification

At gateway revision `87c427af`, [host CI](https://github.com/ikshengmin/pcc-gateway/actions/runs/38679074097)
passed **394 tests**, with **23 integration tests deselected**. This checks
host contracts and benchmark reporting, not native throughput. Current-source
native admission/execution, five-GC qualification and a controlled comparison
with CPython asyncio remain separate gates; see the [CI scope](docs/ci.md).
There is no current-source measurement establishing a native pcc1 performance
win over asyncio.

### Recorded handler benchmark — 2026-09-18

The most recent committed [handler comparison](benchmarks/results/2026-09-18-selfhost-gates.md)
contains **90 validated runs** on Apple M2 Max, macOS 26.5.1 and
CPython 3.15.0rc1. At zero child wait and concurrency 100, medians across five
repeats were:

| Host pcc requests/s | pcc1 requests/s | CPython asyncio TaskGroup requests/s |
|---:|---:|---:|
| 19,245.5 | 18,998.1 | 86,584.7 |

This historical run left the high-concurrency target unmet. Each request ran
two children, joined them and validated the same JSON bytes. It measured
handler batches on one carrier/event loop, excluding HTTP sockets,
compilation and startup; process peak RSS includes startup and warmups.

The [raw receipt](benchmarks/results/2026-09-18-selfhost-gates.json) identifies
a dirty core source snapshot and the recorded pcc1/runtime pair. Applications
used the self backend, no libpython and GC0. The receipt does not qualify
today's compiler, a fresh runtime build, runtime-emitter ownership, all five
collectors or a self-hosted fixed point. It also predates p99 reporting.

See [benchmark methods and historical receipts](benchmarks/README.md) for
reproduction requirements, earlier comparisons and their artifact identities.
