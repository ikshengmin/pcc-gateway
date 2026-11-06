"""Independent live HTTP gate, run before and after each benchmark arm."""

import http.client
import asyncio
import socket
import time


def check(response, expected):
    body = response.read()
    if not 200 <= response.status < 300 or body != expected:
        raise RuntimeError("unexpected HTTP response: " + repr((response.status, body)))


def verify(host="127.0.0.1", port=3000):
    deadline = time.monotonic() + 15
    while True:
        try:
            connection = http.client.HTTPConnection(host, port, timeout=3)
            connection.connect()
            break
        except (ConnectionRefusedError, TimeoutError):
            connection.close()
            if time.monotonic() >= deadline:
                raise
            time.sleep(.05)
    try:
        original_socket = connection.sock
        # Includes the exact upstream contract plus changing, zero-padded IDs.
        for value in ("0", "42", "00000001", "92745103", "alice", "00000000"):
            connection.request("GET", "/user/" + value, headers={"Accept-Encoding": "identity"})
            check(connection.getresponse(), value.encode())
        for body in (b"", b"body must be consumed before the next request"):
            connection.request("POST", "/user", body=body, headers={"Content-Type": "text/plain"})
            check(connection.getresponse(), b"")
            connection.request("GET", "/")
            check(connection.getresponse(), b"")
        if connection.sock is not original_socket:
            raise RuntimeError("keep-alive connection was not preserved")
    finally:
        connection.close()
    # Fragmented input goes through the server's normal socket/codec path.
    with socket.create_connection((host, port), timeout=3) as sock:
        for part in (b"GET /us", b"er/31415926 HTTP/1.1\r\nHo", b"st: local\r\nConnection: close\r\n\r\n"):
            sock.sendall(part)
            time.sleep(.002)
        response = http.client.HTTPResponse(sock)
        response.begin()
        check(response, b"31415926")
    print("WEB_FRAMEWORKS_HTTP_CONTRACT_OK", flush=True)


def verify_connection_recycling(port=3000, expected_limit=0):
    connection = http.client.HTTPConnection("127.0.0.1", port, timeout=3)
    try:
        for index in range(1, 1002):
            connection.request("GET", "/")
            response = connection.getresponse()
            advertised_close = response.getheader("Connection", "").lower() == "close"
            expected_close = expected_limit > 0 and index % expected_limit == 0
            if advertised_close != expected_close:
                raise RuntimeError("incorrect connection-limit response header at request " + str(index))
            check(response, b"")
    finally:
        connection.close()
    print("WEB_FRAMEWORKS_CONNECTION_RECYCLING_OK", flush=True)


def verify_concurrent_ids(port, concurrency):
    """Check fresh response bodies under the same connection width as load."""
    from benchmarks.http_compare import read_response

    nonce = time.monotonic_ns() % 10000000

    async def client(index):
        reader, writer = await asyncio.open_connection("127.0.0.1", port)
        try:
            for turn in range(2):
                value = f"{nonce + turn * concurrency + index:08d}"
                writer.write(("GET /user/" + value + " HTTP/1.1\r\nHost: local\r\n\r\n").encode())
                await writer.drain()
                status, _headers, body = await read_response(reader)
                if not 200 <= status < 300 or body != value.encode():
                    raise RuntimeError("concurrent dynamic-ID response mismatch")
        finally:
            writer.close()
            await writer.wait_closed()

    async def group():
        async with asyncio.TaskGroup() as scope:
            for index in range(concurrency):
                scope.create_task(client(index))

    async def bounded():
        await asyncio.wait_for(group(), 8)

    asyncio.run(bounded())
    print("WEB_FRAMEWORKS_CONCURRENT_IDS_OK", concurrency, flush=True)


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument("--request-limit", type=int, default=0)
    args = parser.parse_args()
    verify()
    verify_connection_recycling(expected_limit=args.request_limit)
