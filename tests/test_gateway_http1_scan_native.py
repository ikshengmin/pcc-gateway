"""Run fragmented parser boundaries with current host pcc0 and all collectors."""

import os
from pathlib import Path
import subprocess
import sys

import pytest


PROBE = r"""
def main():
    payload = (b"POST /upload HTTP/1.1\r\nHost: x\r\nTransfer-Encoding: chunked\r\n\r\n"
               b"3;name=value\r\nabc\r\n0\r\nX-Tail: yes\r\n\r\n"
               b"GET /next HTTP/1.1\r\nHost: x\r\n\r\n")
    codec = Http1ServerCodec()
    index = 0
    heads = 0
    ends = 0
    body = b""
    while index < len(payload):
        events = codec.feed(payload[index:index + 1])
        for event in events:
            if isinstance(event, RequestHead):
                heads += 1
                if event.target != ("/upload" if heads == 1 else "/next"):
                    raise RuntimeError("head order")
            elif isinstance(event, BodyChunk):
                body = body + event.data
                event.release()
            elif isinstance(event, RequestEnd):
                ends += 1
                if ends == 1 and event.trailers != [("x-tail", "yes")]:
                    raise RuntimeError("trailer")
        index += 1
    if heads != 2 or ends != 2 or body != b"abc" or len(codec.buffer) != 0:
        raise RuntimeError("fragmented pipeline")
    limited = Http1ServerCodec(max_request_line=16)
    try:
        limited.feed(b"GET /abcdefghijklmnop")
    except Http1Error as error:
        if error.status != 414:
            raise RuntimeError("line limit status")
    else:
        raise RuntimeError("line limit missing")
    print("HTTP_SCAN_OK")
main()
"""


@pytest.mark.integration
def test_native_fragmented_delimiters_match_cpython_on_all_collectors(tmp_path):
    root = Path(__file__).resolve().parents[1]
    codec = (root / "pcc_gateway/http1.py").read_text()
    assert codec.count("from .buffer import BufferSegment\n") == 1
    source = tmp_path / "http_scan.py"
    source.write_text((root / "pcc_gateway/buffer.py").read_text()
                      + codec.replace("from .buffer import BufferSegment\n", "", 1) + PROBE)
    reference = subprocess.run([sys.executable, str(source)], capture_output=True,
                               text=True, timeout=5)
    assert (reference.returncode, reference.stdout, reference.stderr) == (0, "HTTP_SCAN_OK\n", "")
    binary = tmp_path / "http_scan"
    build = subprocess.run([sys.executable, "-m", "pcc", "--backend", "self",
                            str(source), "-o", str(binary)], cwd=root,
                           capture_output=True, text=True, timeout=60)
    assert build.returncode == 0, build.stdout + build.stderr
    for backend in range(5):
        run = subprocess.run([str(binary)], capture_output=True, text=True, timeout=5,
                             env=dict(os.environ, PCC_GC_BACKEND=str(backend)))
        assert (run.returncode, run.stdout, run.stderr) == (
            reference.returncode, reference.stdout, reference.stderr,
        ), (backend, run.stdout, run.stderr)
