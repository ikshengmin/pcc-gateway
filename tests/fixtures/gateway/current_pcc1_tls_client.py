"""Opt-in native loopback TLS client control; no provider build or host fallback.

Arguments: provider-path provider-sha256 ca-pem DNS-identity loopback-port mode
Modes: echo, certificate, handshake-timeout, read-timeout, truncated, cancel.
An external test harness supplies a loopback peer and explicitly test-only CA.
Only 127.0.0.1 is contacted. Run the emitted executable, never host Python.
"""
import sys
import pcc.virtual_thread as vt
from pcc_gateway.tls import (
    PccNativeTlsProvider, TlsClientConfig, TlsClientContext,
    TLS_ERR_CANCELLED, TLS_ERR_CERTIFICATE, TLS_ERR_DEADLINE, TLS_ERR_TRUNCATED,
)
from pcc_gateway.tls_client import NativeTlsClient, TlsClientError

PAYLOAD = b"pcc-owned-tls-client-control\n"


def exchange(client, port: int, mode: str) -> int:
    deadline = client.transport.now_ms() + 1000
    try:
        client.connect("127.0.0.1", port, deadline)
        if mode in ("echo", "read-timeout", "truncated", "cancel"):
            client.write_all(PAYLOAD, deadline)
            output = b""
            while len(output) < len(PAYLOAD):
                chunk = client.read(min(client.chunk_bytes, len(PAYLOAD) - len(output)), deadline)
                if not chunk:
                    raise RuntimeError("unexpected clean EOF before echo")
                output += chunk
            if output != PAYLOAD:
                raise RuntimeError("TLS echo payload mismatch")
            client.shutdown(deadline)
        if mode != "echo":
            raise RuntimeError("negative TLS control unexpectedly succeeded")
        return 0
    except TlsClientError as error:
        expected = 0
        if mode == "certificate":
            expected = TLS_ERR_CERTIFICATE
        elif mode in ("handshake-timeout", "read-timeout"):
            expected = TLS_ERR_DEADLINE
        elif mode == "truncated":
            expected = TLS_ERR_TRUNCATED
        elif mode == "cancel":
            expected = TLS_ERR_CANCELLED
        if expected == 0 or error.error_code != expected:
            raise
        return 0
    finally:
        client.close()


def cancel_later(client) -> None:
    vt.sleep_current(20)
    client.cancel()


def main() -> int:
    if len(sys.argv) != 7:
        print("expected provider sha256 test-ca DNS-name loopback-port mode")
        return 2
    mode = sys.argv[6]
    if mode not in ("echo", "certificate", "handshake-timeout", "read-timeout", "truncated", "cancel"):
        return 2
    provider = PccNativeTlsProvider(sys.argv[1], sys.argv[2])
    context = None
    try:
        context = TlsClientContext(provider, TlsClientConfig(sys.argv[4], ca_file=sys.argv[3]))
        client = NativeTlsClient(context)
        task = vt.spawn(exchange, client, int(sys.argv[5]), mode)
        cancel_task = None
        if mode == "cancel":
            cancel_task = vt.spawn(cancel_later, client)
        steps = 0
        while vt.outcome(task) == vt.OUTCOME_PENDING and steps < 40:
            vt.run(1, 100)
            steps += 1
        if vt.outcome(task) == vt.OUTCOME_PENDING:
            client.cancel()
            # Drain through the client's bounded waits; no cross-owner close.
            while vt.outcome(task) == vt.OUTCOME_PENDING and steps < 80:
                vt.run(1, 100)
                steps += 1
        if vt.outcome(task) != vt.OUTCOME_RETURNED or vt.result(task) != 0:
            raise RuntimeError("native TLS control task failed or did not drain")
        if cancel_task is not None and vt.outcome(cancel_task) == vt.OUTCOME_PENDING:
            while vt.outcome(cancel_task) == vt.OUTCOME_PENDING and steps < 100:
                vt.run(1, 100)
                steps += 1
        if cancel_task is not None and vt.outcome(cancel_task) != vt.OUTCOME_RETURNED:
            raise RuntimeError("native TLS cancellation task failed or did not drain")
        if not client.closed or client.fd != -1 or provider.active_sessions != 0:
            raise RuntimeError("native TLS session/socket ownership did not drain")
    finally:
        if context is not None:
            context.close()
        provider.close()
    if provider.active_contexts != 0 or provider.active_sessions != 0 or not provider.closed:
        raise RuntimeError("native TLS provider ownership did not drain")
    print("NATIVE_TLS_CLIENT_CONTROL_OK " + mode)
    return 0


raise SystemExit(main())
