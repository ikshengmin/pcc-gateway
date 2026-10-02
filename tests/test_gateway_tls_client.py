"""Fixture-free client state, ABI staging and source controls. No TLS claim.

No test here builds a provider/runtime, opens a socket, calls host ssl or runs
an external endpoint. The scripted provider is permanently test-only. Native
and real local TLS verification remain separate opt-in acceptance gates.
"""
import ast
import ctypes
from pathlib import Path

import pytest

import pcc_gateway.tls as tls
import pcc_gateway.server as server
from pcc_gateway.tls_client import NativeTlsClient, TlsClientError

ROOT = Path(__file__).resolve().parents[1]


class Provider:
    name = "client-scripted-test-only"
    abi_version = 1
    link_boundary = "host-model-only"
    license_id = "test"
    security_boundary = "no-crypto"
    production_ready = False

    def __init__(self):
        self.contexts = 0
        self.sessions = 0
        self.freed_contexts = 0
        self.freed_sessions = 0
        self.names = []
        self.handshakes = [tls.TlsResult(tls.TLS_OK)]
        self.reads = [tls.TlsResult(tls.TLS_OK, 2)]
        self.writes = []
        self.write_results = []
        self.closes = [tls.TlsResult(tls.TLS_CLOSED)]
        self.alpn = "http/1.1"
        self.fail_session = False

    def create_client_context(self, config):
        self.contexts += 1
        return object()

    def new_client_connection(self, context, fd, name):
        if self.fail_session:
            raise RuntimeError("test session failure")
        self.sessions += 1
        self.names.append(name)
        return object()

    def handshake(self, session):
        return self.handshakes.pop(0)

    def selected_alpn(self, session):
        return self.alpn

    def read(self, session, output, limit):
        result = self.reads.pop(0)
        if result.status == tls.TLS_OK and result.count <= limit:
            output[:result.count] = b"ok"[:result.count]
        return result

    def write(self, session, data, length):
        self.writes.append((data, length))
        if self.write_results:
            return self.write_results.pop(0)
        return tls.TlsResult(tls.TLS_OK, length)

    def close_notify(self, session):
        return self.closes.pop(0)

    def free_connection(self, session):
        self.freed_sessions += 1

    def free_context(self, context):
        self.freed_contexts += 1


class Transport:
    native_virtual_threads = False

    def __init__(self):
        self.time = 1
        self.waits = []
        self.closed = []
        self.connect_results = [server.PCC_SOCKET_CONNECTED]
        self.opened = []
        self.on_wait = None

    def now_ms(self):
        return self.time

    def open_upstream(self, endpoint, address):
        self.opened.append((endpoint.host, endpoint.port, address))
        return 41

    def connect_observe(self, fd):
        return self.connect_results.pop(0)

    def wait(self, fd, events, timeout):
        self.waits.append((fd, events, timeout))
        self.time += timeout
        if self.on_wait:
            self.on_wait()

    def close(self, fd):
        self.closed.append(fd)
        return 0


def make_client():
    provider = Provider()
    context = tls.TlsClientContext(provider, tls.TlsClientConfig("Example.TEST."))
    transport = Transport()
    return NativeTlsClient(context, transport=transport, chunk_bytes=4), provider, context, transport


@pytest.mark.parametrize("name", ["", "127.0.0.1", "::1", "*.example.test", "bad..name", "é.example", "-bad.test", "bad_.test"])
def test_client_identity_fails_closed(name):
    with pytest.raises(ValueError):
        tls.TlsClientConfig(name)


def test_client_verification_configuration_has_no_insecure_mode():
    config = tls.TlsClientConfig("EXAMPLE.test.")
    assert config.server_name == "example.test"
    assert config.ca_file == "" and config.alpn == ("http/1.1",)
    with pytest.raises(TypeError):
        tls.TlsClientConfig("example.test", verify=False)
    for path in ("relative.pem", "/ca\x00file", "/" + "é" * 2048):
        with pytest.raises(ValueError):
            tls.TlsClientConfig("example.test", ca_file=path)
    with pytest.raises(ValueError):
        tls.TlsClientConfig("example.test", alpn=())


def test_client_context_reuses_generation_leases_and_closes_once():
    client, provider, context, transport = make_client()
    channel = context.new_channel(42)
    assert context.references == 2
    assert context.close() == 0
    with pytest.raises(tls.TlsProviderError, match="closed"):
        context.new_channel(43)
    assert provider.freed_contexts == 0
    assert channel.close().status == tls.TLS_CLOSED
    assert channel.close().status == tls.TLS_CLOSED
    assert context.close() == 0
    assert (provider.freed_contexts, provider.freed_sessions) == (1, 1)
    assert provider.names == ["example.test"]


def test_failed_session_creation_restores_context_lease_and_fd_owner():
    client, provider, context, transport = make_client()
    provider.fail_session = True
    with pytest.raises(tls.TlsProviderError, match="creation failed"):
        client.connect("127.0.0.1", 443, 1000)
    assert context.references == 1 and transport.closed == [41]
    context.close()
    assert provider.freed_contexts == 1 and provider.freed_sessions == 0


def test_connect_read_partial_write_retry_shutdown_and_exact_cleanup():
    client, provider, context, transport = make_client()
    transport.connect_results = [server.PCC_SOCKET_WOULD_BLOCK, server.PCC_SOCKET_CONNECTED]
    provider.handshakes = [tls.TlsResult(tls.TLS_WANT_WRITE), tls.TlsResult(tls.TLS_WANT_READ), tls.TlsResult(tls.TLS_OK)]
    client.connect("127.0.0.1", 443, 1000)
    assert client.connected and provider.names == ["example.test"]
    assert transport.opened == [("127.0.0.1", 443, "127.0.0.1")]
    provider.reads = [tls.TlsResult(tls.TLS_WANT_WRITE), tls.TlsResult(tls.TLS_OK, 2)]
    assert client.read(4, 1000) == b"ok"
    provider.write_results = [tls.TlsResult(tls.TLS_WANT_READ), tls.TlsResult(tls.TLS_WANT_WRITE), tls.TlsResult(tls.TLS_OK, 2)]
    assert client.write_all(b"abcdef", 1000) == 6
    assert provider.writes[:3] == [(b"abcd", 4)] * 3
    assert provider.writes[0][0] is provider.writes[1][0] is provider.writes[2][0]
    assert provider.writes[3:] == [(b"cdef", 4)]
    provider.closes = [tls.TlsResult(tls.TLS_WANT_WRITE), tls.TlsResult(tls.TLS_WANT_READ), tls.TlsResult(tls.TLS_CLOSED)]
    client.shutdown(1000)
    assert [entry[1] for entry in transport.waits] == [4, 4, 1, 4, 1, 4, 4, 1]
    assert all(0 < entry[2] <= 25 for entry in transport.waits)
    assert transport.closed == [41] and provider.freed_sessions == 1
    assert client.close().status == tls.TLS_CLOSED
    context.close()
    assert provider.freed_contexts == 1


@pytest.mark.parametrize("phase", ["connect", "handshake", "read", "write", "shutdown"])
@pytest.mark.parametrize("reason", ["deadline", "cancel"])
def test_wait_failure_is_bounded_and_releases_owner(phase, reason):
    client, provider, context, transport = make_client()
    if phase not in ("connect", "handshake"):
        client.connect("127.0.0.1", 443, 1000)
    if reason == "cancel":
        transport.on_wait = client.cancel
    deadline = 12
    want = tls.TlsResult(tls.TLS_WANT_READ)
    if phase == "connect":
        transport.connect_results = [server.PCC_SOCKET_WOULD_BLOCK]
        operation = lambda: client.connect("127.0.0.1", 443, deadline)
    elif phase == "handshake":
        provider.handshakes = [want]
        operation = lambda: client.connect("127.0.0.1", 443, deadline)
    elif phase == "read":
        provider.reads = [want]
        operation = lambda: client.read(4, deadline)
    elif phase == "write":
        provider.write_results = [want]
        operation = lambda: client.write_all(b"abcd", deadline)
    else:
        provider.closes = [want]
        operation = lambda: client.shutdown(deadline)
    with pytest.raises(TlsClientError) as error:
        operation()
    assert error.value.error_code == (tls.TLS_ERR_CANCELLED if reason == "cancel" else tls.TLS_ERR_DEADLINE)
    assert transport.waits == [(41, 4 if phase == "connect" else 1, 11)]
    assert transport.closed == [41] and client.fd == -1 and client.closed
    assert provider.freed_sessions == (0 if phase == "connect" else 1)
    client.close()
    context.close()
    assert provider.freed_contexts == 1


def test_cancel_and_deadline_before_connect_never_open_socket():
    for cancelled in (False, True):
        client, provider, context, transport = make_client()
        if cancelled:
            client.cancel()
        with pytest.raises(TlsClientError) as error:
            client.connect("127.0.0.1", 443, 1)
        assert error.value.error_code == (tls.TLS_ERR_CANCELLED if cancelled else tls.TLS_ERR_DEADLINE)
        assert transport.opened == [] and transport.closed == []
        context.close()


@pytest.mark.parametrize("result", [tls.TlsResult(tls.TLS_OK, 0), tls.TlsResult(tls.TLS_OK, 5), tls.TlsResult(tls.TLS_SELECT_SNI, server_name="x.test")])
def test_invalid_write_progress_fails_closed(result):
    client, provider, context, transport = make_client()
    client.connect("127.0.0.1", 443, 1000)
    provider.write_results = [result]
    with pytest.raises(TlsClientError) as error:
        client.write_all(b"abcd", 1000)
    assert error.value.error_code == tls.TLS_ERR_PROVIDER_CONTRACT
    assert transport.closed == [41] and provider.freed_sessions == 1
    context.close()


@pytest.mark.parametrize("kind", ["certificate", "sni", "missing-alpn", "wrong-alpn"])
def test_handshake_authentication_and_alpn_fail_closed(kind):
    client, provider, context, transport = make_client()
    if kind == "certificate":
        provider.handshakes = [tls.TlsResult(tls.TLS_ERROR, error_code=tls.TLS_ERR_CERTIFICATE)]
    elif kind == "sni":
        provider.handshakes = [tls.TlsResult(tls.TLS_SELECT_SNI, server_name="other.test")]
    else:
        provider.alpn = "" if kind == "missing-alpn" else "h2"
    with pytest.raises(TlsClientError):
        client.connect("127.0.0.1", 443, 1000)
    assert provider.freed_sessions == 1 and transport.closed == [41]
    context.close()


def test_cleanup_failure_preserves_original_and_never_recloses_fd():
    client, provider, context, transport = make_client()
    client.connect("127.0.0.1", 443, 1000)
    def fail_free(session):
        provider.freed_sessions += 1
        raise RuntimeError("test free failure")
    provider.free_connection = fail_free
    provider.reads = [tls.TlsResult(tls.TLS_ERROR, error_code=tls.TLS_ERR_TRUNCATED)]
    with pytest.raises(TlsClientError) as error:
        client.read(4, 1000)
    assert error.value.error_code == tls.TLS_ERR_TRUNCATED
    client.close()
    assert provider.freed_sessions == 1 and transport.closed == [41]
    context.close()


def test_concurrent_close_is_rejected_and_cancel_does_not_release_parked_fd():
    client, provider, context, transport = make_client()
    def on_wait():
        with pytest.raises(TlsClientError, match="cancel active"):
            client.close()
        with pytest.raises(TlsClientError, match="concurrent"):
            client.read(1, 1000)
        client.cancel()
        assert transport.closed == [] and provider.freed_sessions == 0
    transport.on_wait = on_wait
    provider.handshakes = [tls.TlsResult(tls.TLS_WANT_READ)]
    with pytest.raises(TlsClientError) as error:
        client.connect("127.0.0.1", 443, 1000)
    assert error.value.error_code == tls.TLS_ERR_CANCELLED
    assert transport.closed == [41]
    context.close()


class RawAbiModel:
    """Test-only raw storage/dispatch, never a native or crypto provider."""
    def __init__(self, monkeypatch):
        self.allocations, self.calls, self.observed = [], [], []
        self.read_count = 2
        self.write_status = tls.TLS_OK
        self.context_status = tls.TLS_OK
        replacements = {
            "stack_alloc": self.allocate,
            "store_i8": lambda p, i, v: setattr(ctypes.c_uint8.from_address(p + i), "value", v),
            "load_i8": lambda p, i: ctypes.c_int8.from_address(p + i).value,
            "store_i64": lambda p, i, v: setattr(ctypes.c_int64.from_address(p + i), "value", v),
            "load_i64": lambda p, i: ctypes.c_int64.from_address(p + i).value,
            "store_ptr": lambda p, i, v: setattr(ctypes.c_void_p.from_address(p + i), "value", v),
            "load_ptr": lambda p, i: ctypes.c_void_p.from_address(p + i).value,
            "ptr_to_int": lambda p: 0 if p is None else p,
            "call_i64_i64_ptr": self.invoke,
            "_py_str_new": lambda p, n: ctypes.string_at(p, n).decode("ascii"),
        }
        for name, function in replacements.items():
            monkeypatch.setattr(tls, name, function)
        self.provider = tls.PccNativeTlsProvider("/test/provider.so", "a" * 64)
        self.provider.activated = True
        self.provider.entrypoint = 8192
        self.provider.capabilities = tls.PCC_TLS_CLIENT_REQUIRED_CAPABILITIES
        monkeypatch.setattr(self.provider, "activate", lambda: None)

    def allocate(self, size):
        value = ctypes.create_string_buffer(size)
        self.allocations.append(value)
        return ctypes.addressof(value)

    def data(self, request, offset, length_offset):
        return ctypes.string_at(tls.load_ptr(request, offset), tls.load_i64(request, length_offset))

    def invoke(self, entrypoint, operation, request):
        assert [tls.load_i64(request, i) for i in (0, 8, 16)] == [160, 1, operation]
        self.calls.append(operation)
        status, count = tls.TLS_OK, 0
        if operation == tls.PCC_TLS_OP_CLIENT_CONTEXT_CREATE:
            self.observed.append((self.data(request, 56, 64), self.data(request, 88, 96)))
            assert tls.load_i64(request, 128) == 0
            status = self.context_status
            tls.store_ptr(request, 40, 12345 if status == tls.TLS_OK else None)
        elif operation == tls.PCC_TLS_OP_CLIENT_CONNECTION_CREATE:
            self.observed.append(self.data(request, 56, 64))
            tls.store_ptr(request, 40, 23456)
        elif operation == tls.PCC_TLS_OP_WRITE:
            self.observed.append(self.data(request, 56, 64))
            status = self.write_status
            count = tls.load_i64(request, 64) if status == tls.TLS_OK else 0
        elif operation == tls.PCC_TLS_OP_READ:
            pointer = tls.load_ptr(request, 104)
            assert tls.load_i64(request, 112) > 0
            ctypes.memmove(pointer, b"\x80\xff", 2)
            self.observed.append(pointer)
            count = self.read_count
        elif operation in (tls.PCC_TLS_OP_CONTEXT_FREE, tls.PCC_TLS_OP_CONNECTION_FREE):
            status = tls.TLS_CLOSED
        tls.store_i64(request, 120, count)
        tls.store_i64(request, 24, status)
        tls.store_i64(request, 32, tls.TLS_ERR_CERTIFICATE if status == tls.TLS_ERROR else 0)
        return status


def test_native_adapter_stages_inputs_and_outputs_in_caller_owned_raw_memory(monkeypatch):
    model = RawAbiModel(monkeypatch)
    provider = model.provider
    config = tls.TlsClientConfig("example.test", "/test/ca.pem")
    context = provider.create_client_context(config)
    assert model.observed == [(b"/test/ca.pem", b"8:http/1.1")]
    session = provider.new_client_connection(context, 41, config.server_name)
    assert model.observed[-1] == b"example.test"
    model.write_status = tls.TLS_WANT_READ
    for _ in range(2):
        assert provider.write(session, b"unchanged", 9).status == tls.TLS_WANT_READ
    assert model.observed[-2:] == [b"unchanged", b"unchanged"]
    output = bytearray(4)
    address = ctypes.addressof(ctypes.c_ubyte.from_buffer(output))
    assert provider.read(session, output, 4).count == 2
    assert output == b"\x80\xff\x00\x00" and model.observed[-1] != address
    provider.free_connection(session)
    provider.free_context(context)
    assert provider.active_contexts == provider.active_sessions == 0
    assert session.handle == context.handle == 0


def test_client_capability_and_trust_store_failures_do_not_publish_resource(monkeypatch):
    model = RawAbiModel(monkeypatch)
    config = tls.TlsClientConfig("example.test")
    model.provider.capabilities = tls.PCC_TLS_REQUIRED_CAPABILITIES
    with pytest.raises(tls.TlsProviderError, match="verified client capability"):
        model.provider.create_client_context(config)
    assert model.calls == []
    model.provider.capabilities = tls.PCC_TLS_CLIENT_REQUIRED_CAPABILITIES
    model.context_status = tls.TLS_ERROR
    with pytest.raises(tls.TlsProviderError, match="trust store"):
        model.provider.create_client_context(config)
    assert model.provider._pending_resources == model.provider.active_contexts == 0
    assert model.observed == [(b"", b"8:http/1.1")]


def test_staging_lengths_and_untrusted_native_read_count_are_bounded(monkeypatch):
    model = RawAbiModel(monkeypatch)
    storage = model.allocate(5)
    assert tls._copy_text_to_storage(storage, "é", 5) == 2
    assert ctypes.string_at(storage, 3) == b"\xc3\xa9\x00"
    with pytest.raises(tls.TlsProviderError, match="too long"):
        tls._copy_text_to_storage(storage, "abcde", 5)
    session = tls._PccNativeTlsSession(23456)
    output = bytearray(4)
    model.read_count = 5
    assert model.provider.read(session, output, 4).error_code == tls.TLS_ERR_PROVIDER_CONTRACT
    assert output == bytes(4)
    assert model.provider.write(session, b"large" * 14000, 70000).count == tls.TLS_IO_CHUNK_BYTES
    assert len(model.observed[-1]) == tls.TLS_IO_CHUNK_BYTES


def test_request_helpers_initialize_caller_storage_and_never_return_alloca():
    module = ast.parse((ROOT / "pcc_gateway/tls.py").read_text())
    provider = next(item for item in module.body if isinstance(item, ast.ClassDef) and item.name == "PccNativeTlsProvider")
    helpers = {"_request", "_session_request"}
    for method in provider.body:
        if not isinstance(method, ast.FunctionDef):
            continue
        if method.name in helpers:
            assert not any(isinstance(item, ast.Return) and item.value is not None for item in ast.walk(method))
            assert not any(isinstance(item, ast.Call) and isinstance(item.func, ast.Name) and item.func.id == "stack_alloc" for item in ast.walk(method))
        for item in ast.walk(method):
            if isinstance(item, ast.Call) and isinstance(item.func, ast.Attribute) and item.func.attr in helpers:
                assert isinstance(item.args[0], ast.Name) and item.args[0].id == "request"
    source = ast.unparse(module)
    assert "_py_str_utf8" not in source and "ptr_add" not in source
    assert "dynamic_library_open(path_storage)" in source


def test_shared_tcp_connect_passes_strings_to_the_owned_lease_abi(monkeypatch):
    calls = []
    monkeypatch.setattr(server, "stack_alloc", lambda n: {0: 41})
    monkeypatch.setattr(server, "load_i64", lambda p, i: p[i])
    monkeypatch.setattr(server, "_py_str_utf8", lambda _: pytest.fail("unleased string projection"))
    monkeypatch.setattr(server, "_platform_tcp_connect_start", lambda host, port, fd: calls.append((host, port)) or 3)
    class Port:
        def __str__(self):
            calls.append("port converted")
            return "443"
    class Endpoint:
        host = "127.0.0.1"
        port = Port()
    assert server.NativeSocketTransport().open_upstream(Endpoint()) == 41
    assert calls == ["port converted", ("127.0.0.1", "443")]
    source = (ROOT / "pcc_gateway/server.py").read_text()
    assert '"pcc_platform_tcp_connect_start", (c_str, c_str, c_rawptr), c_int64' in source


def test_openssl_client_contract_keeps_verification_error_order_and_nosignal():
    source = (ROOT / "pcc_gateway/native/openssl_provider.c").read_text()
    client_context = source.split("static int64_t pcc_tls_client_context_create", 1)[1].split("static int pcc_tls_dns_identity_valid", 1)[0]
    client_connection = source.split("static int64_t pcc_tls_client_connection_create", 1)[1].split("static int64_t pcc_tls_connection_free", 1)[0]
    handshake = source.split("static int64_t pcc_tls_handshake", 1)[1].split("static int64_t pcc_tls_set_context", 1)[0]
    assert "TLS_client_method()" in client_context
    assert "SSL_VERIFY_PEER" in client_context and "SSL_VERIFY_NONE" not in client_context
    assert "SSL_CTX_set_default_verify_paths" in client_context
    for marker in ("SSL_set1_host", "SSL_set_tlsext_host_name", "SSL_set_connect_state", "X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS", "X509_CHECK_FLAG_NEVER_CHECK_SUBJECT"):
        assert marker in client_connection
    failure = handshake[handshake.index("ssl_error = SSL_get_error") :]
    assert failure.index("SSL_get_error") < failure.index("SSL_get_verify_result")
    assert "send(connection->fd, input, (size_t)length, MSG_NOSIGNAL)" in source
    assert "errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR" in source
    assert "BIO_set_retry_read" in source and "BIO_set_retry_write" in source
    assert "sigaction(" not in source and "signal(" not in source
    assert "close(connection->fd)" not in source
    header = (ROOT / "pcc_gateway/include/pcc_tls_provider_v1.h").read_text()
    for symbol, value in (("CLIENT_CONTEXT_CREATE", 11), ("CLIENT_CONNECTION_CREATE", 12)):
        assert f"PCC_TLS_OP_{symbol} = {value}" in header
        assert getattr(tls, "PCC_TLS_OP_" + symbol) == value
    assert "PCC_TLS_PROVIDER_V1_REQUEST_BYTES 160" in header


def test_client_channel_allocation_failure_does_not_leak_context_lease(monkeypatch):
    client, provider, context, transport = make_client()
    def allocation_failure(*arguments):
        raise MemoryError("test channel allocation")
    monkeypatch.setattr(tls, "TlsChannel", allocation_failure)
    with pytest.raises(MemoryError):
        context.new_channel(41)
    assert context.references == 1
    assert context.close() == 1 and provider.freed_contexts == 1


def test_native_loopback_fixture_is_explicit_and_never_builds_or_falls_back():
    source = (ROOT / "tests/fixtures/gateway/current_pcc1_tls_client.py").read_text()
    assert 'client.connect("127.0.0.1", port, deadline)' in source
    assert "PccNativeTlsProvider(sys.argv[1], sys.argv[2])" in source
    assert "context.close()" in source and "provider.close()" in source
    assert "finally:\n        client.close()" in source
    for forbidden in ("subprocess", "import ssl", "import socket", "ctypes", "libcurl", "urllib"):
        assert forbidden not in source
