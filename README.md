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

The goal is for native pcc1 built from the latest source to outperform
CPython asyncio on equivalent work, preserving Python semantics, child-task
cleanup and all five GC contracts.

**Latest-source measurement is pending.** A matching compiler/runtime pair
must pass native admission and execution before a controlled, same-machine
comparison can establish throughput, latency and memory results.

At gateway revision `87c427af`, [host CI](https://github.com/ikshengmin/pcc-gateway/actions/runs/38679074097)
passed **394 tests**, with **23 integration tests deselected**. This checks
host contracts and benchmark reporting, not native throughput. Current-source
native execution and full five-GC qualification remain open; see the
[CI scope](docs/ci.md).

See [benchmark methods and historical receipts](benchmarks/README.md) for
reproduction requirements and earlier experiments.
