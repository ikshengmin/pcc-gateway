"""A listener must not fail shutdown when drain beats generation admission."""

import pytest

from pcc_gateway.lifecycle import GatewayLifecycle, STATE_DRAINING, STATE_STOPPED
from pcc_gateway.server import GatewayServer, PCC_SOCKET_PROGRESS
from pcc_gateway.web import App
from test_gateway_server import FakeScheduler, FakeTransport, host_process_control


@pytest.mark.parametrize(
    ("entry", "accepted_fds"),
    [("accept_once", (52,)), ("accept_ready", (52,)), ("accept_ready", (52, 53))],
)
def test_drain_between_socket_admission_and_generation_lease(
    monkeypatch, entry, accepted_fds
):
    transport = FakeTransport()
    transport.accepts = [
        (PCC_SOCKET_PROGRESS, fd, "10.0.0.8") for fd in accepted_fds
    ]
    scheduler = FakeScheduler()
    server = GatewayServer(App(), transport=transport, scheduler=scheduler)
    server.start()
    generation = server.lifecycle.current
    original_admit = GatewayLifecycle.admit_connection

    def admit(lifecycle):
        admitted = original_admit(lifecycle)
        if lifecycle is server.lifecycle and len(transport.accepts) == 0:
            assert admitted
            assert generation.references == len(accepted_fds)
            server.request_stop()
        return admitted

    monkeypatch.setattr(GatewayLifecycle, "admit_connection", admit)
    assert getattr(server, entry)() == 1
    assert server.lifecycle.state == STATE_DRAINING
    assert transport.closed == list(reversed(accepted_fds))
    assert scheduler.spawned == [("accept", server)]
    assert server.connections == []
    assert server.connection_owners == []
    assert generation.references == 1
    assert server.lifecycle.metrics.get("connections_active") == 0
    with pytest.raises(RuntimeError, match="gateway is not accepting new work"):
        server.lifecycle.acquire_generation()
    assert server._drive_drain()
    assert server.lifecycle.state == STATE_STOPPED


def test_accept_provider_error_propagates_and_releases_pending_socket(monkeypatch):
    transport = FakeTransport()
    transport.accepts = [(PCC_SOCKET_PROGRESS, 52, "10.0.0.8")]
    scheduler = FakeScheduler()
    server = GatewayServer(App(), transport=transport, scheduler=scheduler)
    server.start()
    generation = server.lifecycle.current
    original_accept = transport.accept
    error = OSError("accept provider failed")

    def accept(fd):
        if not transport.accepts:
            raise error
        return original_accept(fd)

    monkeypatch.setattr(transport, "accept", accept)
    with pytest.raises(OSError) as observed:
        server.accept_ready()
    assert observed.value is error
    assert transport.closed == [52]
    assert scheduler.spawned == [("accept", server)]
    assert server.connection_owners == []
    assert generation.references == 1
    assert server.lifecycle.metrics.get("connections_active") == 0
    server.request_stop()
    assert server._drive_drain()
