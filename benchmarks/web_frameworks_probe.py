"""Independent live HTTP gate, run before and after each benchmark arm."""

import http.client
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


if __name__ == "__main__":
    verify()
