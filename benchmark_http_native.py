"""Real production GatewayServer with a request-scoped two-child workload.

Compile with the self backend and a matching PCC_WITH_THREADS=1 runtime.
The command line contains only the loopback port; SIGTERM drains the server.
Every response validates two started and exactly-once-cleaned child tasks.
"""

import json
import sys

import pcc.virtual_thread as vt
from pcc_gateway import GatewayConfig, GatewayServer, ListenerConfig
from pcc_gateway.structured import TaskScope
from pcc_gateway.web import App, Request, Response, get
from benchmarks.http_contract import (
    FAILURE, notification_value, profile_value, response_body,
)


def profile_child(request_id: str, delay_ms: int, failed: bool, ledger):
    ledger[0] += 1
    try:
        # A failed child parks long enough for its sibling to start. The
        # sibling's finally must execute on cancellation before we respond.
        vt.sleep_current(5 if failed else delay_ms)
        if failed:
            raise ValueError(FAILURE)
        return profile_value(request_id)
    finally:
        ledger[2] += 1


def notification_child(request_id: str, delay_ms: int, failed: bool, ledger):
    ledger[1] += 1
    try:
        vt.sleep_current(1000 if failed else delay_ms)
        return notification_value(request_id)
    finally:
        ledger[3] += 1


def dashboard(request: Request):
    request_id = request.header("x-request-id", "")
    delay_ms = int(request.header("x-delay-ms", "0"))
    failed = request.header("x-fail", "0") == "1"
    if not request_id or delay_ms < 0 or delay_ms > 1000:
        return Response.text("invalid benchmark request", 400)
    ledger = [0, 0, 0, 0]
    scope = TaskScope("http-dashboard")
    profile = None
    notifications = None
    observed_failure = False
    try:
        first = scope.fork(vt.spawn(profile_child, request_id, delay_ms, failed, ledger))
        second = scope.fork(vt.spawn(notification_child, request_id, delay_ms, failed, ledger))
        scope.join()
        profile = scope.result(first)
        notifications = scope.result(second)
    except ValueError as error:
        if str(error) != FAILURE or not failed:
            raise
        observed_failure = True
    finally:
        scope.close("HTTP request complete")
    if observed_failure != failed:
        raise RuntimeError("wrong child failure outcome")
    body = response_body(request_id, profile, notifications, ledger, failed)
    return Response.bytes(body, 503 if failed else 200,
                          [("content-type", "application/json")])


def health(request: Request):
    return Response.text("ready")


def main():
    port = int(sys.argv[1])
    config = GatewayConfig(
        listeners=(ListenerConfig("127.0.0.1", port),), carrier_count=1,
        max_requests_per_connection=1000000, drain_timeout_ms=3000,
        control_poll_ms=5, install_signal_handlers=True,
    )
    server = GatewayServer(App(routes=(get("/health", health),
                                      get("/dashboard", dashboard))), config=config)
    result = server.run()
    if result != 0:
        raise RuntimeError("HTTP server did not stop cleanly")
    metrics = server.lifecycle.metrics
    closure = {"connections_active": metrics.get("connections_active"),
               "requests_active": metrics.get("requests_active"),
               "requests_queued": metrics.get("requests_queued"),
               "buffered_bytes": metrics.get("buffered_bytes"),
               "connection_owners": len(server.connection_owners),
               "connections": len(server.connections),
               "generation_references": server.lifecycle.current.references,
               "generation_released": server.lifecycle.current.released,
               "pool_started": server.pool_started,
               "requests_started": metrics.get("requests_started"),
               "waitset_backend": vt.io_backend()}
    print(json.dumps(closure, sort_keys=True))


if __name__ == "__main__":
    main()
