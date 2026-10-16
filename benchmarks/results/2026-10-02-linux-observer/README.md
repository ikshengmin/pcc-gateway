# Linux comparison preparation, 2026-10-02

This checkpoint validates **observation tooling and selected host models**.
It is not a native pcc performance result or qualification. The current native
compiler/runtime artifacts and coordinator release were still pending; no pcc
or pcc1 application build, handler throughput comparison, live HTTP, real
HTTPS, or native GC0–4 matrix was run here. Historical LLVM references were
not used as current proof.

On Linux x86-64 with CPython 3.15.0rc1:

- **33 observer/receipt/cleanup cases passed**, including real TaskGroup and
  gather protocol checks, strict stdout/stderr and workload counts, rotating
  arms, timeout descendants, failed compile receipts and Linux external
  Python/LLVM dependency rejection
- **31 selected host correctness cases passed**, covering TaskScope ordering,
  failure cancellation and draining, fragmented/framing errors, body ownership,
  backpressure, lifecycle reentrancy, partial I/O, stream deadlines, proxy/TLS
  error cleanup and shutdown ordering
- A tiny host-C wait4 observer supplies exact-child CPU/RSS without requiring
  `/usr/bin/time`, which is absent in this image. It is independently receipted
  measurement tooling and never produces or links a pcc compiler, runtime, or
  application
- The trivial-exec regression keeps a 64-MiB Python allocation live and verifies
  that `/bin/true` remains below 32 MiB. This catches the inherited Python RSS
  floor that would invalidate a Python wait4 supervisor
- Linux KiB and macOS byte normalization are tested. macOS execution itself was
  not performed on this Linux host. Hardware instruction/cycle counts remain
  explicitly unavailable in wait4

See [verification.json](verification.json) for source hashes and test totals;
[final-tests.stdout](final-tests.stdout) and [host-gates.stdout](host-gates.stdout)
list exact test nodes. Their process watchdog receipts and samples are beside
them, retaining 120-second / 768-MiB limits and observed usage.
[observation-smoke.json](observation-smoke.json) records the host observer
compiler/source/artifact identity, tiny-process resource check, and two small
CPython workload protocol checks. All raw workload streams and process
receipts are retained. These smoke timings do not support throughput claims.

The next native smoke/full-matrix commands, quiet-machine/performance-lock
requirements, 900-second / 2-GiB outer bounds and scope limits are in
[the benchmark methods](../../README.md#bounded-current-artifact-comparison).
Use freshly qualified current artifacts; preserve identical child work,
payload validation, cleanup and retained latency samples in every arm.
