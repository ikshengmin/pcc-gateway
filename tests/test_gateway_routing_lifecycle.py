from pcc_gateway.lifecycle import (
    AdmissionLimits,
    GatewayLifecycle,
    STATE_DRAINING,
    STATE_RUNNING,
    STATE_STOPPED,
)
from pcc_gateway.routing import MethodNotAllowed, Route, RouteConflictError, Router


def _handler(request):
    return request


def test_router_prefers_exact_then_parameter_then_tail() -> None:
    router = Router((
        Route("GET", "/files/{path*}", _handler),
        Route("GET", "/files/{name}", _handler),
        Route("GET", "/files/static", _handler),
    ))
    assert router.match("GET", "/files/static").route.path == "/files/static"
    match = router.match("GET", "/files/readme")
    assert match.params == {"name": "readme"}
    match = router.match("GET", "/files/a/b")
    assert match.params == {"path": "a/b"}


def test_router_reports_405_and_rejects_ambiguous_shapes() -> None:
    router = Router((Route("GET", "/items/{id}", _handler),))
    try:
        router.match("POST", "/items/1")
    except MethodNotAllowed as error:
        assert error.allowed == ["GET"]
    else:
        raise AssertionError("method mismatch did not produce 405 information")
    try:
        Router((
            Route("GET", "/items/{id}", _handler),
            Route("GET", "/items/{name}", _handler),
        ))
    except RouteConflictError:
        return
    raise AssertionError("ambiguous parameter routes were accepted")


def test_router_normalizes_ipv4_dns_and_bracketed_ipv6_host_ports() -> None:
    dns = Route("GET", "/", _handler, host="Example.COM")
    ipv6 = Route("GET", "/v6", _handler, host="[2001:DB8::1]")
    router = Router((dns, ipv6))

    assert router.match("GET", "/", "example.com:8443").route is dns
    assert router.match("GET", "/v6", "[2001:db8::1]:8443").route is ipv6


def test_generation_publish_keeps_old_config_until_connection_releases() -> None:
    lifecycle = GatewayLifecycle({"name": "one"})
    lifecycle.start()
    lifecycle.started()
    assert lifecycle.state == STATE_RUNNING
    held = lifecycle.acquire_generation()
    replacement = lifecycle.publish({"name": "two"})
    assert replacement.generation_id == 2
    assert not held.released
    held.release()
    assert lifecycle.collect_retired() == 1


def test_admission_and_graceful_drain_are_separate_limits() -> None:
    lifecycle = GatewayLifecycle({}, AdmissionLimits(max_connections=1, max_requests=1))
    lifecycle.start()
    lifecycle.started()
    assert lifecycle.admit_connection()
    assert not lifecycle.admit_connection()
    assert lifecycle.admit_request()
    lifecycle.begin_drain()
    assert lifecycle.state == STATE_DRAINING
    assert not lifecycle.finish_drain()
    lifecycle.release_request()
    lifecycle.release_connection()
    assert lifecycle.finish_drain()
    assert lifecycle.state == STATE_STOPPED



def test_router_normalizes_a_plain_target_once_per_match(monkeypatch):
    import pcc_gateway.routing as routing
    original = routing.normalize_path
    calls = []
    def counted(path):
        calls.append(path)
        return original(path)
    monkeypatch.setattr(routing, "normalize_path", counted)
    routes = [Route("GET", "/miss" + str(index) + "/{id}", _handler) for index in range(16)]
    routes.append(Route("GET", "/wanted/{id}", _handler))
    router = Router(routes)
    first = router.match("GET", "/wanted//./42?query=value")
    assert first.params == {"id": "42"}
    assert calls == ["/wanted//./42"]
    second = router.match("GET", "/wanted/43")
    assert second.params == {"id": "43"} and first.params == {"id": "42"}
    assert len(calls) == 2


def test_host_filter_still_precedes_invalid_path_normalization():
    import pytest
    from pcc_gateway.routing import RouteNotFound
    router = Router((Route("GET", "/", _handler, host="expected"),))
    with pytest.raises(RouteNotFound):
        router.match("GET", "/../../escape", "different")
    with pytest.raises(ValueError, match="escapes"):
        router.match("GET", "/../../escape", "expected")


def test_path_subclass_callbacks_are_not_cached_between_candidates():
    calls = []
    class Path(str):
        def split(self, separator=None, maximum=-1):
            calls.append(str(self))
            return super().split(separator, maximum)
    router = Router((Route("GET", "/miss/{id}", _handler),
                     Route("GET", "/wanted/{id}", _handler)))
    assert router.match("GET", Path("/wanted/42")).params == {"id": "42"}
    assert len(calls) == 2
