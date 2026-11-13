"""Execute the buffer snapshot owner under host pcc0 and each collector.

The focused single-module input is the unmodified buffer implementation plus
this caller. Live gateway package linkage is covered by the HTTP benchmark.
"""

import os
from pathlib import Path
import subprocess
import sys

import pytest


PROBE = r"""
def main():
    channel = ChannelBuffer(3, 6, 12, 48)
    channel.append(b"abcdefghij")
    held = channel.peek_views()
    channel.consume(1)
    result = channel.peek_bytes(7)
    if result != b"bcdefgh" or len(channel) != 9:
        raise RuntimeError("bounded snapshot")
    if channel.peek_bytes(0) != b"" or channel.read(3) != b"bcd":
        raise RuntimeError("partial read")
    if channel.read() != b"efghij":
        raise RuntimeError("remaining read")
    channel.close()
    if result != b"bcdefgh":
        raise RuntimeError("snapshot lifetime")
    combined = b""
    for view in held:
        combined = combined + view.to_bytes()
        view.release()
    if combined != b"abcdefghij":
        raise RuntimeError("view lifetime")
    owner = BufferSegment(10)
    owner.write(b"0123456789")
    view = owner.view(2, 5)
    if view.to_bytes(1, 3) != b"345":
        raise RuntimeError("view-relative copy")
    view.release()
    owner.release()
    alias = BufferSegment(8)
    alias.write(b"ab")
    if alias.write(alias.data, 0, 6) != 6 or alias.data != bytearray(b"abababab"):
        raise RuntimeError("forward self copy")
    alias.release()
    copied = BufferSegment(4)
    if copied.write(bytearray(b"x012345"), 1, 5) != 4:
        raise RuntimeError("truncated mutable copy")
    if copied.data != bytearray(b"0123"):
        raise RuntimeError("mutable source bytes")
    copied.release()
    print("BUFFER_SNAPSHOT_OK")
main()
"""


@pytest.mark.integration
def test_native_buffer_snapshot_matches_cpython_on_all_collectors(tmp_path):
    root = Path(__file__).resolve().parents[1]
    source = tmp_path / "buffer_snapshot.py"
    source.write_text((root / "pcc_gateway/buffer.py").read_text() + PROBE)
    reference = subprocess.run([sys.executable, str(source)], capture_output=True,
                               text=True, timeout=5)
    assert (reference.returncode, reference.stdout, reference.stderr) == (
        0, "BUFFER_SNAPSHOT_OK\n", "",
    )
    binary = tmp_path / "buffer_snapshot"
    build = subprocess.run([sys.executable, "-m", "pcc", "--backend", "self",
                            str(source), "-o", str(binary)], cwd=root,
                           capture_output=True, text=True, timeout=60)
    assert build.returncode == 0, build.stdout + build.stderr
    for backend in range(5):
        run = subprocess.run([str(binary)], capture_output=True, text=True,
                             timeout=5,
                             env=dict(os.environ, PCC_GC_BACKEND=str(backend)))
        assert (run.returncode, run.stdout, run.stderr) == (
            reference.returncode, reference.stdout, reference.stderr,
        ), (backend, run.stdout, run.stderr)
