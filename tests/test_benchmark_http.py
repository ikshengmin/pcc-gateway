"""Live HTTP comparison contracts. No native compiler/runtime fixtures."""

import asyncio
import json

import pytest

from benchmark_http_asyncio import AsyncioServer, dashboard
from benchmarks.http_contract import notification_value, profile_value, response_body
from benchmarks.http_compare import (
    expected_body, functional_gate, measure, one_request, read_response, request_bytes, validate_closure,
    validate_response,
)
from pcc_gateway.web import Request


def test_http_workload_uses_fresh_ids_and_exact_child_cleanup():
    for request_id in ("first-request", "second-request"):
        assert response_body(request_id, profile_value(request_id),
            notification_value(request_id), [1, 1, 1, 1], False) == expected_body(request_id)
        assert response_body(request_id, None, None, [1, 1, 1, 1], True) == expected_body(request_id, True)
    assert expected_body("first-request") != expected_body("second-request")
    for bad in ([0, 1, 0, 1], [1, 1, 0, 1], [1, 1, 2, 1], [1, 1, 1]):
        with pytest.raises(RuntimeError, match="exactly once"):
            response_body("request", {}, [], bad, False)


def test_http_oracle_success_and_failed_sibling_drain():
    async def run():
        for failed in (False, True):
            request_id = "failure" if failed else "success"
            response = await dashboard(Request("GET", "/dashboard", headers=[
                ("x-request-id", request_id), ("x-delay-ms", "0"), ("x-fail", str(int(failed)))]))
            assert response.status == (503 if failed else 200)
            assert response.body == expected_body(request_id, failed)
    asyncio.run(run())


def test_http_response_validation_rejects_stale_payload_and_bad_framing():
    with pytest.raises(RuntimeError, match="fresh response"):
        validate_response((200, {b"content-type": b"application/json"}, expected_body("old")), "new")
    async def run():
        for head in (b"HTTP/1.1 200 OK\r\nContent-Length: 0\r\nContent-Length: 0\r\n\r\n",
                     b"HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n"):
            reader = asyncio.StreamReader()
            reader.feed_data(head)
            reader.feed_eof()
            with pytest.raises(RuntimeError):
                await read_response(reader)
    asyncio.run(run())


def test_http_live_oracle_fragmentation_failures_measurement_and_cleanup():
    async def run():
        app = AsyncioServer()
        server = await asyncio.start_server(app.connection, "127.0.0.1", 0)
        port = server.sockets[0].getsockname()[1]
        async with server:
            gate = await functional_gate(port, "test")
            assert gate["failed_child_cancelled_and_drained"]
            measured = await measure(port, 3, 0, 4, "test")
            assert measured["requests"] == len(measured["latencies_ms"]) == 12
            assert measured["warmup_requests"] == 6
            assert measured["requests_per_second"] > 0
            await asyncio.sleep(.02)
            draining = asyncio.create_task(one_request(port, request_bytes("drain", 100, close=True)))
            while app.requests_active == 0:
                await asyncio.sleep(.001)
            await app.drain()
            validate_response(await draining, "drain")
        assert not app.connections and not app.writers and not app.active_writers
        assert app.requests_active == 0
        # Four functional requests plus the graceful-drain request. Malformed
        # framing never enters a handler.
        assert app.requests_started == 5 + 18
    asyncio.run(asyncio.wait_for(run(), timeout=5))


def test_http_closure_requires_exact_counts_and_all_owners_closed():
    closure = {"connections_active": 0, "requests_active": 0, "writers": 0, "active_writers": 0, "requests_started": 12}
    assert validate_closure(json.dumps(closure) + "\n", "", "asyncio", 12) == closure
    for key in ("connections_active", "requests_active", "writers", "active_writers", "requests_started"):
        changed = dict(closure)
        changed[key] += 1
        with pytest.raises(RuntimeError):
            validate_closure(json.dumps(changed) + "\n", "", "asyncio", 12)
    for invalid in (json.dumps({**closure, "extra": 1}) + "\n",
                    json.dumps(closure)[:-1] + ', "requests_started": 12}\n'):
        with pytest.raises(RuntimeError):
            validate_closure(invalid, "", "asyncio", 12)
    with pytest.raises(RuntimeError, match="stdout/stderr"):
        validate_closure(json.dumps(closure) + "\n", "warning", "asyncio", 12)
