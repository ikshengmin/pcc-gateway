"""RFC 9110 section 5.5: preserve field octets through the native codec."""

import os
from pathlib import Path
import shutil
import subprocess
import sys

import pytest

pytestmark = [pytest.mark.integration, pytest.mark.xdist_group(name="native_http1_latin1")]

PROGRAM = r'''import gc
from pcc_gateway.http1 import (
    Http1Error, Http1ResponseEncoder, Http1ServerCodec, _latin1_bytes, _latin1_text,
)

def main():
    raw = bytes(range(256))
    for repeat in range(20):
        text = _latin1_text(raw)
        gc.collect()
        assert len(text) == 256
        assert ord(text[0]) == 0 and ord(text[-1]) == 255
        assert _latin1_bytes(text) == raw
    assert _latin1_text(b"") == "" and _latin1_bytes("") == b""
    for text in ("\u0100", "\ud800", "\U0010ffff", "valid\u20ac"):
        try:
            _latin1_bytes(text)
        except Http1Error as error:
            assert error.status == 500 and error.code == "bad-header"
            assert str(error) == "header value is outside Latin-1"
        else:
            raise AssertionError("non-Latin-1 header accepted")
    payload = bytes(range(128, 256))
    events = Http1ServerCodec().feed(
        b"GET /\xff HTTP/1.1\r\nHost: x\r\nX-Raw: " + payload + b"\r\n\r\n"
    )
    head = events[0]
    assert head.target == "/\xff"
    value = head.header("x-raw")
    assert _latin1_bytes(value) == payload
    wire = Http1ResponseEncoder().head(200, [("x-raw", value)], 0)
    assert b"x-raw: " + payload + b"\r\n" in wire
    print("NATIVE_HTTP1_LATIN1_OK")

main()
'''


@pytest.fixture(scope="module")
def native_latin1_program(tmp_path_factory):
    root = tmp_path_factory.mktemp("native-http1-latin1")
    # Compile the unchanged codec/buffer sources as a focused package, without
    # pulling the server/TLS exports from the public package initializer into
    # this codec regression. Live webserver gates cover the full application.
    package = root / "pcc_gateway"
    package.mkdir()
    (package / "__init__.py").write_text("")
    original = Path(__file__).resolve().parents[1] / "pcc_gateway"
    for name in ("http1.py", "buffer.py"):
        shutil.copy2(original / name, package / name)
    source = root / "http1_latin1.py"
    source.write_text(PROGRAM)
    environment = dict(os.environ, PCC_NO_AUTO_PCC1="1", PCC_PACKAGE_SITE=str(root))
    environment["PYTHONPATH"] = os.pathsep.join(
        [str(root), environment.get("PYTHONPATH", "")]
    )
    reference = subprocess.run(
        [sys.executable, str(source)], capture_output=True, text=True,
        timeout=20, env=environment,
    )
    assert reference.returncode == 0, reference.stdout + reference.stderr
    binary = root / "http1_latin1"
    compiled = subprocess.run(
        [sys.executable, "-m", "pcc", "--backend", "self", str(source), "-o", str(binary)],
        capture_output=True, text=True, timeout=180, env=environment,
    )
    assert compiled.returncode == 0, compiled.stdout + compiled.stderr
    return binary, reference.stdout


@pytest.mark.parametrize("collector", range(5))
def test_native_latin1_http_round_trip(native_latin1_program, collector):
    binary, expected = native_latin1_program
    result = subprocess.run(
        [str(binary)], capture_output=True, text=True, timeout=20,
        env=dict(os.environ, PCC_GC_BACKEND=str(collector)),
    )
    assert (result.returncode, result.stdout, result.stderr) == (0, expected, "")
