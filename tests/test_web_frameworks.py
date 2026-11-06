"""Web Frameworks Benchmark routes, including dynamic IDs and HTTP framing."""

import pytest

from pcc_gateway.lifecycle import GatewayLifecycle
from pcc_gateway.server import GatewayConfig, GatewayConnection
from pcc_gateway.web import Request
from web_frameworks_app import build_app


@pytest.mark.parametrize("method, path, expected", [
    ("GET", "/", b""),
    ("GET", "/user/0", b"0"),
    ("GET", "/user/42", b"42"),
    ("GET", "/user/938475", b"938475"),
    ("GET", "/user/alice?ignored=yes", b"alice"),
    ("POST", "/user", b""),
])
def test_upstream_route_contract(method, path, expected):
    response = build_app().dispatch(Request(method, path))
    assert 200 <= response.status < 300
    assert response.body == expected


def test_routes_do_not_return_benchmark_success_for_unknown_requests():
    app = build_app()
    assert app.dispatch(Request("GET", "/missing")).status == 404
    assert app.dispatch(Request("POST", "/")).status == 405


def test_fragmented_post_body_and_keepalive_use_the_production_codec():
    config = GatewayConfig()
    lifecycle = GatewayLifecycle(config, config.admission)
    lifecycle.start()
    lifecycle.started()
    assert lifecycle.admit_connection()
    generation = lifecycle.acquire_generation()
    connection = GatewayConnection(
        build_app(), -1, None, lifecycle, generation, config,
    )
    try:
        connection.feed_data(
            b"POST /user HTTP/1.1\r\nHost: localhost\r\n"
            b"Content-Type: text/plain\r\nContent-Length: 4\r\n\r\nab"
        )
        assert connection.take_output() == b""
        connection.feed_data(
            b"cdGET /user/1234 HTTP/1.1\r\nHost: localhost\r\n\r\n"
            b"GET / HTTP/1.1\r\nHost: localhost\r\n\r\n"
        )
        output = connection.take_output()
        assert output.count(b"HTTP/1.1 200 OK\r\n") == 3
        assert output.lower().count(b"content-length: 0\r\n") == 2
        assert b"content-length: 4\r\n" in output.lower()
        assert b"\r\n\r\n1234HTTP/1.1" in output
        assert lifecycle.metrics.get("requests_started") == 3
        assert lifecycle.metrics.get("requests_active") == 0
    finally:
        connection.close("contract-complete")
        generation.release()
        lifecycle.release_connection()
