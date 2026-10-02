"""Bounded, single-owner native TLS stream over the canonical gateway adapters.

Create the client context before entering latency-sensitive work. connect()
accepts an already-resolved numeric address; its certificate identity remains
TlsClientConfig.server_name. DNS and HTTP framing are separate owners.

One virtual thread owns connect/read/write/shutdown/close. Concurrent operation
attempts fail explicitly; other threads may cancel() the shared token. Native
waits park that virtual thread in finite slices, so cancellation is observed
without closing/reusing an fd under an outstanding readiness registration.
"""

from threading import Lock
import pcc.virtual_thread as virtual_thread

from .dns import normalize_numeric_address
from .models import Cancellation
from .server import (
    NativeSocketTransport,
    PCC_IO_READ,
    PCC_IO_WRITE,
    PCC_SOCKET_CONNECTED,
    PCC_SOCKET_WOULD_BLOCK,
)
from .tls import (
    TLS_CLOSED, TLS_ERROR, TLS_OK, TLS_WANT_READ, TLS_WANT_WRITE,
    TLS_ERR_CANCELLED, TLS_ERR_CONFIGURATION, TLS_ERR_DEADLINE,
    TLS_ERR_IO, TLS_ERR_PROVIDER_CONTRACT, TLS_IO_CHUNK_BYTES,
    TlsClientContext, TlsProviderError, TlsResult, tls_error_name,
)


class TlsClientError(TlsProviderError):
    def __init__(self, error_code: int, phase: str):
        self.error_code = error_code
        self.phase = phase
        super().__init__(phase + ": " + tls_error_name(error_code))


class _ConnectEndpoint:
    def __init__(self, host: str, port: int):
        self.host = host
        self.port = port


class NativeTlsClient:
    """One verified stream. This object owns its socket and channel only.

    The supplied context/provider remain caller-owned and reusable. Every
    failed operation aborts and releases this stream; exceptions retain their
    original cause even if release itself fails. close() is an immediate abort;
    shutdown(deadline_ms) exchanges close-notify under a finite deadline.
    """

    def __init__(self, context: TlsClientContext, transport=None,
                 cancellation=None, chunk_bytes: int = 16384,
                 max_write_bytes: int = 16777216, cancel_poll_ms: int = 25):
        if not isinstance(context, TlsClientContext):
            raise TypeError("native TLS client requires TlsClientContext")
        if (chunk_bytes <= 0 or chunk_bytes > TLS_IO_CHUNK_BYTES
                or max_write_bytes < chunk_bytes
                or cancel_poll_ms <= 0 or cancel_poll_ms > 1000):
            raise ValueError("invalid TLS client bounds")
        self.context = context
        self.transport = NativeSocketTransport() if transport is None else transport
        self.cancellation = Cancellation() if cancellation is None else cancellation
        self.chunk_bytes = chunk_bytes
        self.max_write_bytes = max_write_bytes
        self.cancel_poll_ms = cancel_poll_ms
        self.fd = -1
        self.channel = None
        self.connected = False
        self.closed = False
        self._busy = False
        self._state_lock: Lock = Lock()

    def _begin(self, phase: str) -> None:
        self._state_lock.acquire()
        try:
            if self._busy:
                raise TlsClientError(TLS_ERR_CONFIGURATION, "concurrent TLS operation")
            if self.closed:
                raise TlsClientError(TLS_ERR_CONFIGURATION, phase + " on closed client")
            self._busy = True
        finally:
            self._state_lock.release()

    def _end(self) -> None:
        self._state_lock.acquire()
        try:
            self._busy = False
        finally:
            self._state_lock.release()

    def _budget(self, deadline_ms: int, phase: str) -> int:
        if deadline_ms <= 0:
            raise TlsClientError(TLS_ERR_CONFIGURATION, phase)
        if self.cancellation.is_cancelled():
            if self.channel is not None:
                self.channel.cancel()
            raise TlsClientError(TLS_ERR_CANCELLED, phase)
        token_deadline = self.cancellation.deadline_ms
        if token_deadline > 0 and token_deadline < deadline_ms:
            deadline_ms = token_deadline
        now = self.transport.now_ms()
        if now < 0:
            raise TlsClientError(TLS_ERR_CONFIGURATION, phase)
        remaining = deadline_ms - now
        if remaining <= 0:
            raise TlsClientError(TLS_ERR_DEADLINE, phase)
        return remaining

    def _require_stream(self, phase: str) -> None:
        if not self.connected or self.channel is None or self.fd < 0:
            raise TlsClientError(TLS_ERR_CONFIGURATION, phase + " before connect")

    def _release(self) -> TlsResult:
        # Only the operation owner enters this path. Clear ownership before
        # invoking cleanup: neither an exception nor a repeat can reuse an fd.
        channel = self.channel
        fd = self.fd
        self.channel = None
        self.fd = -1
        self.connected = False
        self.closed = True
        result = TlsResult(TLS_CLOSED)
        try:
            if channel is not None:
                result = channel.close()
        finally:
            if fd >= 0:
                status = self.transport.close(fd)
                if status < 0 and result.status != TLS_ERROR:
                    result = TlsResult(TLS_ERROR, error_code=TLS_ERR_IO)
        return result

    def _abort(self) -> None:
        try:
            self._release()
        except BaseException:
            # The operation's original exception must win over cleanup.
            pass

    def connect(self, address: str, port: int, deadline_ms: int) -> None:
        return virtual_thread.call(_connect_tls_client, self, address, port, deadline_ms)

    def read(self, limit: int, deadline_ms: int) -> bytes:
        return virtual_thread.call(_read_tls_client, self, limit, deadline_ms)

    def write_all(self, data: bytes, deadline_ms: int) -> int:
        return virtual_thread.call(_write_tls_client, self, data, deadline_ms)

    def shutdown(self, deadline_ms: int) -> None:
        return virtual_thread.call(_shutdown_tls_client, self, deadline_ms)

    def cancel(self) -> None:
        # Cancellation may come from a different thread. It never releases the
        # fd/session while the owner is using or parked on them.
        self.cancellation.cancel("TLS client cancelled")

    def close(self) -> TlsResult:
        self._state_lock.acquire()
        try:
            if self._busy:
                raise TlsClientError(TLS_ERR_CONFIGURATION, "cancel active TLS operation before close")
            if self.closed:
                return TlsResult(TLS_CLOSED)
            self._busy = True
        finally:
            self._state_lock.release()
        try:
            return self._release()
        finally:
            self._end()


def _wait_tls_client(client: NativeTlsClient, events: int,
                     deadline_ms: int, phase: str) -> None:
    remaining = client._budget(deadline_ms, phase)
    wait_ms = min(remaining, client.cancel_poll_ms)
    if client.transport.native_virtual_threads:
        # Compiler-visible top-level may-park edge, shared runtime scheduler.
        virtual_thread.block_current_on_fd(client.fd, events, wait_ms)
    else:
        client.transport.wait(client.fd, events, wait_ms)


def _wait_tls_result(client: NativeTlsClient, result: TlsResult,
                     deadline_ms: int, phase: str) -> None:
    if result.status == TLS_WANT_READ:
        _wait_tls_client(client, PCC_IO_READ, deadline_ms, phase)
    elif result.status == TLS_WANT_WRITE:
        _wait_tls_client(client, PCC_IO_WRITE, deadline_ms, phase)
    elif result.status == TLS_ERROR:
        raise TlsClientError(result.error_code, phase)
    else:
        raise TlsClientError(TLS_ERR_PROVIDER_CONTRACT, phase)


def _connect_tls_client(client: NativeTlsClient, address: str,
                        port: int, deadline_ms: int) -> None:
    client._begin("connect")
    try:
        if client.fd >= 0 or client.channel is not None:
            raise TlsClientError(TLS_ERR_CONFIGURATION, "repeated connect")
        normalized = normalize_numeric_address(address)
        if normalized is None or port <= 0 or port > 65535:
            raise TlsClientError(TLS_ERR_CONFIGURATION, "numeric connect address/port required")
        client._budget(deadline_ms, "connect")
        endpoint = _ConnectEndpoint(address, port)
        client.fd = virtual_thread.call(client.transport.open_upstream, endpoint, address)
        if client.fd < 0:
            raise TlsClientError(TLS_ERR_IO, "connect")
        while True:
            client._budget(deadline_ms, "connect")
            outcome = virtual_thread.call(client.transport.connect_observe, client.fd)
            if outcome == PCC_SOCKET_CONNECTED:
                break
            if outcome != PCC_SOCKET_WOULD_BLOCK:
                raise TlsClientError(TLS_ERR_IO, "connect")
            _wait_tls_client(client, PCC_IO_WRITE, deadline_ms, "connect")
        client.channel = client.context.new_channel(client.fd)
        while True:
            client._budget(deadline_ms, "handshake")
            result = virtual_thread.call(client.channel.handshake,
                client.transport.now_ms(), deadline_ms)
            if result.status == TLS_OK:
                client._budget(deadline_ms, "handshake")
                client.connected = True
                return
            _wait_tls_result(client, result, deadline_ms, "handshake")
    except BaseException:
        client._abort()
        raise
    finally:
        client._end()


def _read_tls_client(client: NativeTlsClient, limit: int, deadline_ms: int) -> bytes:
    client._begin("read")
    try:
        client._require_stream("read")
        if limit <= 0 or limit > client.chunk_bytes:
            raise TlsClientError(TLS_ERR_CONFIGURATION, "read bound")
        output = bytearray(limit)
        while True:
            client._budget(deadline_ms, "read")
            result = virtual_thread.call(client.channel.read, output, limit,
                client.transport.now_ms(), deadline_ms)
            if result.status == TLS_OK:
                client._budget(deadline_ms, "read")
                return bytes(output[:result.count])
            if result.status == TLS_CLOSED:
                return b""
            _wait_tls_result(client, result, deadline_ms, "read")
    except BaseException:
        client._abort()
        raise
    finally:
        client._end()


def _write_tls_client(client: NativeTlsClient, data: bytes, deadline_ms: int) -> int:
    client._begin("write")
    try:
        client._require_stream("write")
        if not isinstance(data, bytes) or len(data) > client.max_write_bytes:
            raise TlsClientError(TLS_ERR_CONFIGURATION, "write bound")
        offset = 0
        client._budget(deadline_ms, "write")
        while offset < len(data):
            pending = data[offset:offset + client.chunk_bytes]
            # No new buffer/content/length until this exact SSL write succeeds.
            # Native staging addresses may move; ACCEPT_MOVING_WRITE_BUFFER
            # permits that, while pending bytes remain strongly owned here.
            while True:
                client._budget(deadline_ms, "write")
                result = virtual_thread.call(client.channel.write, pending, len(pending),
                    client.transport.now_ms(), deadline_ms)
                if result.status == TLS_OK:
                    client._budget(deadline_ms, "write")
                    offset += result.count
                    break
                _wait_tls_result(client, result, deadline_ms, "write")
        return offset
    except BaseException:
        client._abort()
        raise
    finally:
        client._end()


def _shutdown_tls_client(client: NativeTlsClient, deadline_ms: int) -> None:
    client._begin("shutdown")
    try:
        client._require_stream("shutdown")
        while True:
            client._budget(deadline_ms, "shutdown")
            result = virtual_thread.call(client.channel.close_notify,
                client.transport.now_ms(), deadline_ms)
            if result.status == TLS_CLOSED:
                break
            _wait_tls_result(client, result, deadline_ms, "shutdown")
        released = client._release()
        if released.status == TLS_ERROR:
            raise TlsClientError(released.error_code, "close")
    except BaseException:
        client._abort()
        raise
    finally:
        client._end()
