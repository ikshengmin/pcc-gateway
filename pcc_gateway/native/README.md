# pcc OpenSSL TLS provider

This directory contains the in-repository implementation of the
`pcc-native-tls-v1` dynamic provider ABI. It turns the generic ABI in
`../include/pcc_tls_provider_v1.h` into OpenSSL calls; it does not put OpenSSL
types or behavior into the gateway scheduler or HTTP implementation.

The minimum supported build and runtime release is OpenSSL 3.0.0. The adapter
source is MIT licensed. OpenSSL is an external, non-vendored Apache-2.0
dependency, and binary distributors must retain its applicable notices. Public
API declarations in `projects/openssl-3.4.1/include/openssl/` and the
nonblocking/SNI shapes in
`~/pcc_refs/nginx-full-depth1/src/event/ngx_event_openssl.c` and
`~/pcc_refs/nginx-full-depth1/src/http/ngx_http_request.c` were used as
reference oracles; no nginx source is copied into this provider. No BoringSSL
source tree is vendored or dynamically discovered. BoringSSL and LibreSSL
deliberately fail the compile-time identity check because neither promises
OpenSSL 3 ABI compatibility. They require separately named and tested provider
implementations.

This implementation is an explicit external-provider boundary, not evidence
for the future Linux zero-libc runtime claim: OpenSSL and this adapter use the
platform C ABI/libc. They do not use libpython or a host Python interpreter.

Python-cc wheels carry this README, the provider manifest, ABI header,
Makefile, and adapter source as reviewed build inputs. They deliberately do
not carry a prebuilt `.so` or `.dylib`: a library built in a developer checkout
must not leak into a wheel for another target. Plain HTTP needs no provider.
HTTPS requires building this adapter (or another separately named provider)
for the deployment target and passing its absolute library path, lowercase
SHA-256 digest, and a finite artifact-size limit in the listener configuration;
there is no fallback to Python `ssl`, plaintext, or a host web server.  The
digest is computed by the freestanding pcc-Python runtime in 32 KiB streaming
chunks before `dynamic_library_open`; unreadable, oversized, malformed-digest,
and mismatched artifacts all fail listener startup.

An explicitly injected `TlsProviderRegistry` remains a caller-owned trust
boundary for tests and custom providers. If its listener declares a library,
digest, and byte limit, all three values plus the provider's verified digest
must match the registry snapshot or startup fails. If it declares no library,
the gateway makes no artifact-authentication claim for that external registry.

Build with a discoverable OpenSSL 3 installation:

```sh
make -C pcc_gateway/native
```

Or select one explicitly:

```sh
make -C pcc_gateway/native OPENSSL_PREFIX=/opt/openssl-3
```

An explicit prefix is also recorded as the provider artifact's runtime search
path; set `OPENSSL_RUNTIME_PATH_FLAGS=` if packaging supplies its own loader
policy.

The output is `build/libpcc_tls_openssl.dylib` on Darwin or
`build/libpcc_tls_openssl.so` on Linux. Configure a listener with that absolute
output path, provider name `pcc-native-tls-v1`, and a `TlsConfig` whose
certificate inputs are absolute paths. Set `tls_provider_library_sha256` to the
64-character lowercase SHA-256 of that exact output. The default
`tls_provider_max_bytes` is 256 MiB and can be lowered by deployment policy.
The certificate file is a PEM chain
(leaf first), the key is an unencrypted PEM private key, and `client_ca` is a
PEM trust-anchor file required only when client-certificate authentication is
enabled. Encrypted keys are rejected without invoking OpenSSL's terminal
password prompt. Files are parsed synchronously while constructing a new
immutable TLS generation; paths and file buffers are not retained. Failed
reloads never publish a partial generation.

The provider receives sockets that pcc has already made nonblocking and whose
owner has established the platform's no-SIGPIPE policy. The provider does not
mutate process signal dispositions. Every OpenSSL operation is attempted once
and translates `SSL_ERROR_WANT_READ` or `SSL_ERROR_WANT_WRITE` to the ABI. It
never polls, sleeps, schedules, closes an fd, handles HTTP, or invokes
Python/libpython. SNI pauses the OpenSSL
ClientHello state machine and returns the hostname to pcc; pcc applies its
generation policy and explicitly resumes the provider with the selected
context. ALPN is required to overlap the listener's offered protocols.

`provider-manifest.json` is the reviewable ownership, provenance, licensing and
certificate-input record. Its relative source/header/build paths resolve from
this directory, including in an installed wheel. It describes these reviewed
inputs; deployment/release evidence must still record the expected artifact
digest and build identity. The current path-based hash-then-load boundary does
not close concurrent replacement by another writer between verification and
`dynamic_library_open`; production deployment must make the artifact and its
parent directory immutable to the gateway identity. A future same-fd/inode
loader seam is required before claiming that race closed. A successful build
alone is not live HTTPS evidence; the provider ABI canary and current-pcc1
HTTPS gate must also complete.

## Verified outbound client boundary (candidate)

The same v1 dispatcher has additive `CLIENT_CONTEXT_CREATE` (11) and
`CLIENT_CONNECTION_CREATE` (12) operations. Its request remains 160 bytes and
old server operation numbers retain their meaning. Clients require both new
`CLIENT` and `VERIFY_HOSTNAME` capability bits; an old server-only provider is
rejected rather than used as an unauthenticated client. These client bits are
currently advertised only on Linux. Darwin, Windows and ARM hardware execution
have not been qualified; non-Linux client calls fail explicitly.

`TlsClientConfig(server_name, ca_file="", alpn=("http/1.1",))` requires an ASCII
DNS identity. It normalizes case/trailing dot, rejects wildcards and numeric
identities, and does not perform IDNA conversion. A separately resolved numeric
connect address never substitutes for the authenticated name. OpenSSL receives
SNI, `SSL_set1_host`, `SSL_VERIFY_PEER`, and DNS SAN checking with
`NO_PARTIAL_WILDCARDS | NEVER_CHECK_SUBJECT`. There is no insecure mode. A
nonempty absolute `ca_file` selects PEM trust anchors; otherwise OpenSSL's
system default verify paths are used. Trust-store load errors fail context
creation; absent/unusable roots fail certificate verification during handshake.
TLS 1.2–1.3 and security level 2 remain mandatory. Client ALPN must be offered
and selected; absent or unoffered negotiation is an error.

Linux client sessions attach one OpenSSL socket BIO using nonblocking `recv`
and `send(..., MSG_NOSIGNAL)`. It translates EINTR/EAGAIN/EWOULDBLOCK to retry
flags and preserves short reads/writes. It holds only a borrowed fd and frees
its BIO/method after the SSL object, never closes the socket, changes signal
handlers/masks, polls, or creates a thread. Existing server sessions retain
their original process/socket-owner SIGPIPE prerequisite.

### Storage and scheduling lifetime

Each Python adapter operation allocates its own request and staging storage;
initialization helpers receive that storage and return no stack address.
Text is encoded and copied by managed indexing into bounded raw storage before
any provider resource lock. Reads/writes use at most 64 KiB per native call;
the application stream defaults to 16 KiB chunks. No managed string, bytes or
bytearray interior pointer is placed in the dispatcher request. This is
intentionally a bounded-copy implementation, not a zero-copy/performance claim.
Only unmanaged operation-local storage crosses locks or the foreign dispatcher.
After read completion, normal managed indexing copies bytes back to the current
bytearray owner. The adapter does not retain an operation's raw storage after
returning.

A client write owns one immutable `pending` bytes value through all WANT_READ
and WANT_WRITE retries and resubmits the same content and length. New content
is selected only after actual positive progress. `SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER`
permits the new staging address on each retry; it does not permit changing data.
OpenSSL error classification occurs in the same C call/thread as the operation,
before returning to a possibly migrating virtual thread. No asynchronous
OpenSSL engine mode or managed callback is installed. These constraints follow
the [OpenSSL error-queue contract](https://docs.openssl.org/3.0/man3/SSL_get_error/)
and [write retry contract](https://docs.openssl.org/3.0/man3/SSL_write/).

`TlsClientContext` reuses `TlsGeneration` reference counting: closing it prevents
new channels, while existing channel leases keep the native context alive.
`NativeTlsClient` uses the canonical `NativeSocketTransport` and PCC virtual
thread readiness wait, with finite absolute connect/handshake/read/write/close
deadlines. It accepts already-resolved numeric addresses. Only its owning
virtual thread releases the fd/session; a different thread may mark cancellation,
never close a parked descriptor. Concurrent operations fail explicitly. The
current 25 ms cancellation observation slice is an interim latency/performance
boundary, not final virtual-thread parity or throughput acceptance.

### Evidence and remaining gates

The initial 2026-10-02 bounded fixture-free check passed 70 TLS client/provider
and package-surface tests, including the old server TLS lifetime suite. This is
host model/source evidence only. Two later controls for constructor-allocation
lease cleanup and the explicit native probe bring the final set to 72 passing
cases. The unchanged-module owned-IR diagnostic
stopped at the compiler's slot-call ownership boundary for a conditional
keyword argument in `tls.py`; `tls_client.py` and `server.py` were not reached.
No provider build, native handshake, actual certificate validation, socket
execution, five-GC lifetime qualification, or performance measurement has run
for this candidate. The Makefile's default host `cc` remains an explicit build
ownership gap and must not count as a native pcc1-owned build.

There are two concrete core substrate blockers beyond the compiler operand
regression: the production static Linux runtime includes
`freestanding_linux_static_loader.py`, whose `dlopen`/`dlsym` deliberately
reject every request. `owned_elf_link.py` publishes static executables only;
the public shared-library builder routes to Darwin arm64/libSystem-only
`macho_shared.py`. Thus neither loading this provider into the canonical Linux
runtime nor publishing its Linux `.so` with the owned linker is currently
implemented. Do not bypass these gaps with host libdl, host cc or another TLS
stack. The prepared native probe cannot pass until these boundaries are owned.

`tests/fixtures/gateway/current_pcc1_tls_client.py` is an opt-in emitted-program
control. It requires an explicit provider path/SHA-256, test-only CA, DNS name,
loopback port and mode. It only connects to 127.0.0.1. A separate local peer must
supply trusted echo, wrong hostname, untrusted chain, silent handshake, silent
read, abrupt EOF and cancellation cases. Reuse the repository product canary's
clearly test-only certificate setup; do not use credentials or external/live
accounts. Run all controls on the final frozen compiler/runtime and each GC,
then test provider/resource unload, repeated close, SNI/ALPN capture, partial
I/O, default-SIGPIPE reset/disconnect survival, and descriptor/wait registration
cleanup. A local host TLS peer is an oracle only, never the client owner.

This stream is a reusable TLS substrate. DNS policy, HTTP response framing and
lazy SSE decoding/composition still belong to their existing owners. In
particular, this candidate alone does not implement or qualify Harness's
`post_sse` transport or a complete HTTPS application client.
Harness's cancellation token exposes `cancelled`/`require_active()`, while the
gateway token exposes `is_cancelled()`/`deadline_ms`. Later HTTP/SSE composition
requires one shared cancellation adapter; copying token state is not a bridge.
