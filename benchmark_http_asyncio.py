"""CPython 3.15 TaskGroup HTTP oracle for benchmark_http_native.py.

Uses the exact gateway request codec, response encoder, router and response
objects, with asyncio streams/TaskGroup owning network and task lifetimes.
It is an explicit reference adapter, not a production framework implementation.
"""

import asyncio
import json
import signal
import sys

from pcc_gateway.http1 import (
    BodyChunk, Http1Error, Http1ResponseEncoder, Http1ServerCodec,
    RequestEnd, RequestHead,
)
from pcc_gateway.routing import MethodNotAllowed, RouteNotFound, Router
from pcc_gateway.web import Request, Response, get
from benchmarks.http_contract import (
    FAILURE, notification_value, profile_value, response_body,
)


async def profile_child(request_id, delay_ms, failed, ledger):
    ledger[0] += 1
    try:
        await asyncio.sleep((5 if failed else delay_ms) / 1000)
        if failed:
            raise ValueError(FAILURE)
        return profile_value(request_id)
    finally:
        ledger[2] += 1


async def notification_child(request_id, delay_ms, failed, ledger):
    ledger[1] += 1
    try:
        await asyncio.sleep((1000 if failed else delay_ms) / 1000)
        return notification_value(request_id)
    finally:
        ledger[3] += 1


async def dashboard(request):
    request_id = request.header("x-request-id", "")
    delay_ms = int(request.header("x-delay-ms", "0"))
    failed = request.header("x-fail", "0") == "1"
    if not request_id or delay_ms < 0 or delay_ms > 1000:
        return Response.text("invalid benchmark request", 400)
    ledger = [0, 0, 0, 0]
    observed_failure = False
    profile = notifications = None
    try:
        async with asyncio.TaskGroup() as scope:
            first = scope.create_task(profile_child(request_id, delay_ms, failed, ledger))
            second = scope.create_task(notification_child(request_id, delay_ms, failed, ledger))
        profile = first.result()
        notifications = second.result()
    except ExceptionGroup as error:
        if (not failed or len(error.exceptions) != 1
                or type(error.exceptions[0]) is not ValueError
                or str(error.exceptions[0]) != FAILURE):
            raise
        observed_failure = True
    if observed_failure != failed:
        raise RuntimeError("wrong child failure outcome")
    body = response_body(request_id, profile, notifications, ledger, failed)
    return Response.bytes(body, 503 if failed else 200,
                          [("content-type", "application/json")])


async def health(request):
    return Response.text("ready")


class AsyncioServer:
    def __init__(self):
        self.router = Router((get("/health", health), get("/dashboard", dashboard)))
        self.connections = set()
        self.writers = set()
        self.active_writers = set()
        self.requests_active = 0
        self.requests_started = 0
        self.stopping = False

    async def dispatch(self, head):
        request = Request(head.method, head.target, headers=head.headers)
        try:
            match = self.router.match(request.method, request.target, request.header("host", ""))
            request.path_params = match.params
            return await match.route.handler(request)
        except RouteNotFound:
            return Response.text("not found", 404)
        except MethodNotAllowed as error:
            return Response.text("method not allowed", 405, [("allow", ", ".join(error.allowed))])
        except Exception:
            return Response.text("internal server error", 500)
        finally:
            request.body.close()

    async def connection(self, reader, writer):
        task = asyncio.current_task()
        self.connections.add(task)
        self.writers.add(writer)
        codec = Http1ServerCodec()
        encoder = Http1ResponseEncoder()
        head = None
        try:
            while not self.stopping:
                events = codec.feed(b"", max_messages=1)
                if not events:
                    data = await asyncio.wait_for(reader.read(16384), timeout=30)
                    if not data:
                        break
                    events = codec.feed(data, max_messages=1)
                for event in events:
                    if isinstance(event, RequestHead):
                        head = event
                    elif isinstance(event, BodyChunk):
                        event.release()
                    elif isinstance(event, RequestEnd):
                        if head is None:
                            raise RuntimeError("missing request head")
                        self.requests_started += 1
                        self.requests_active += 1
                        self.active_writers.add(writer)
                        try:
                            response = await self.dispatch(head)
                            body = response.body
                            writer.write(encoder.head(response.status, response.headers,
                                                      len(body), keep_alive=head.keep_alive) + body)
                            await writer.drain()
                        finally:
                            self.requests_active -= 1
                            self.active_writers.discard(writer)
                        if not head.keep_alive:
                            return
                        head = None
        except Http1Error as error:
            body = b"bad request"
            writer.write(encoder.head(error.status, [], len(body), keep_alive=False) + body)
            await writer.drain()
        except (ConnectionError, asyncio.IncompleteReadError, asyncio.TimeoutError):
            pass
        finally:
            try:
                codec.eof()
            except Http1Error:
                pass
            writer.close()
            try:
                await writer.wait_closed()
            except ConnectionError:
                pass
            finally:
                self.writers.discard(writer)
                self.connections.discard(task)

    async def drain(self):
        self.stopping = True
        # Match bounded gateway drain: finish admitted handlers and their
        # responses; close only idle keepalive waiters before the deadline.
        for writer in tuple(self.writers):
            if writer not in self.active_writers:
                writer.close()
        if self.connections:
            done, pending = await asyncio.wait(tuple(self.connections), timeout=3)
            for task in pending:
                task.cancel()
            await asyncio.gather(*done, *pending, return_exceptions=True)

    async def run(self, port):
        stop = asyncio.Event()
        loop = asyncio.get_running_loop()
        loop.add_signal_handler(signal.SIGTERM, stop.set)
        server = await asyncio.start_server(self.connection, "127.0.0.1", port, backlog=128)
        async with server:
            await stop.wait()
        await self.drain()
        print(json.dumps({"connections_active": len(self.connections),
                          "requests_active": self.requests_active,
                          "requests_started": self.requests_started,
                          "writers": len(self.writers), "active_writers": len(self.active_writers)}, sort_keys=True))


if __name__ == "__main__":
    asyncio.run(AsyncioServer().run(int(sys.argv[1])))
