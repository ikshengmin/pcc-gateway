"""Contract tests for owned gateway buffers and watermarks.

These tests are intentionally authored with the pcc1 product gate in mind.
They are not a claim that the current worktree has been compiled or executed.
"""

from __future__ import annotations

import os
import subprocess
from pathlib import Path

import pytest

from pcc_gateway.buffer import (
    BACKPRESSURE_HIGH,
    BACKPRESSURE_LOW,
    BACKPRESSURE_NONE,
    BufferLimitError,
    BufferReleasedError,
    BufferSegment,
    ChannelBuffer,
)
from pcc1_gate import find_current_pcc1


import pcc

REPO = Path(__file__).resolve().parents[1]
PCC_CORE = Path(pcc.__file__).resolve().parents[1]


def test_view_retains_segment_until_last_release() -> None:
    segment = BufferSegment(8)
    assert segment.write(b"abcdef") == 6
    view = segment.view(1, 3)
    assert segment.release() == 0
    assert view.to_bytes() == b"bcd"
    assert view.release() == 1
    assert segment.released


def test_view_double_release_fails_closed() -> None:
    segment = BufferSegment(2)
    segment.write(b"xy")
    view = segment.view()
    segment.release()
    view.release()
    try:
        view.release()
    except BufferReleasedError:
        return
    raise AssertionError("double release must fail")


def test_channel_reports_exact_high_and_low_transitions() -> None:
    channel = ChannelBuffer(
        segment_size=3,
        low_watermark=3,
        high_watermark=6,
        max_bytes=12,
    )
    assert channel.append(b"abcde") == BACKPRESSURE_NONE
    assert channel.append(b"f") == BACKPRESSURE_HIGH
    assert channel.backpressured
    assert channel.consume(2) == BACKPRESSURE_NONE
    assert channel.consume(1) == BACKPRESSURE_LOW
    assert not channel.backpressured
    assert channel.read() == b"def"


def test_channel_peek_retains_storage_across_queue_consume() -> None:
    channel = ChannelBuffer(2, 2, 4, 8)
    channel.append(b"abcd")
    views = channel.peek_views(3)
    assert b"".join(view.to_bytes() for view in views) == b"abc"
    channel.consume(4)
    assert b"".join(view.to_bytes() for view in views) == b"abc"
    for view in views:
        view.release()


def test_channel_limit_is_checked_before_mutation() -> None:
    channel = ChannelBuffer(2, 2, 4, 5)
    channel.append(b"abcd")
    try:
        channel.append(b"ef")
    except BufferLimitError:
        pass
    else:
        raise AssertionError("hard byte limit must reject growth")
    assert len(channel) == 4
    assert channel.read() == b"abcd"


def test_close_releases_all_queued_views_once() -> None:
    channel = ChannelBuffer(2, 2, 4, 8)
    channel.append(b"abcdef")
    assert channel.close() == 3
    assert channel.close() == 0
    assert len(channel) == 0


@pytest.mark.integration
def test_current_pcc1_self_no_libpython_slow_peer_backpressure_gc_matrix(
    tmp_path: Path, pcc_py_runtime_archive: Path
) -> None:
    pcc1 = find_current_pcc1(PCC_CORE)
    if pcc1 is None:
        pytest.fail("current pcc1 is required for the gateway buffer gate")
    source = tmp_path / "buffer_app.py"
    source.write_text(
        '''from pcc_gateway.buffer import BACKPRESSURE_HIGH, BACKPRESSURE_LOW, ChannelBuffer

def main() -> int:
    channel = ChannelBuffer(7, 16, 32, 64)
    if channel.append(b"abcdefghijklmnopqrstuvwxyz012345") != BACKPRESSURE_HIGH:
        return 1
    held = channel.peek_views(20)
    if channel.consume(17) != BACKPRESSURE_LOW:
        return 2
    combined = b""
    for view in held:
        combined = combined + view.to_bytes()
        view.release()
    if combined != b"abcdefghijklmnopqrst":
        return 3
    if channel.read() != b"rstuvwxyz012345":
        return 4
    print("PCC1_GATEWAY_BUFFER_OK")
    return 0

main()
''',
        encoding="utf-8",
    )
    executable = tmp_path / "buffer_app"
    environment = dict(os.environ)
    environment.pop("LC_ALL", None)
    environment["PCC_RUNTIME_ARCHIVE"] = str(pcc_py_runtime_archive)
    built = subprocess.run(
        [
            str(pcc1),
            "--backend",
            "self",
            "--python-libpython=off",
            "--ir-scaffold=on",
            str(source),
            "-o",
            str(executable),
        ],
        cwd=tmp_path,
        env=environment,
        text=True,
        capture_output=True,
        timeout=600,
    )
    assert built.returncode == 0, built.stdout + built.stderr
    for backend in range(5):
        run_environment = dict(environment)
        run_environment["PCC_GC_BACKEND"] = str(backend)
        ran = subprocess.run(
            [str(executable)],
            cwd=tmp_path,
            env=run_environment,
            text=True,
            capture_output=True,
            timeout=30,
        )
        assert ran.returncode == 0, "GC" + str(backend) + ": " + ran.stdout + ran.stderr
        assert "PCC1_GATEWAY_BUFFER_OK" in ran.stdout


@pytest.mark.parametrize("segment_size", [1, 3, 9])
@pytest.mark.parametrize("consumed", [0, 1, 3])
@pytest.mark.parametrize("limit", [-1, 0, 1, 3, 20])
def test_byte_snapshot_preserves_queue_and_view_ownership(segment_size, consumed, limit):
    channel = ChannelBuffer(segment_size, 12, 24, 48)
    payload = b"abcdefghij"
    channel.append(payload)
    held = channel.peek_views()
    channel.consume(consumed)
    references = [view.owner.references for view in held]
    result = channel.peek_bytes(limit)
    expected = payload[consumed:] if limit < 0 else payload[consumed:consumed + limit]
    assert result == expected
    assert len(channel) == len(payload) - consumed
    assert [view.owner.references for view in held] == references
    channel.close()
    assert result == expected
    assert b"".join(view.to_bytes() for view in held) == payload
    for view in held:
        view.release()


def test_view_byte_copy_checks_its_own_range():
    owner = BufferSegment(12)
    owner.write(b"abcdefghij")
    view = owner.view(2, 5)
    assert view.to_bytes(1, 3) == b"def"
    assert view.to_bytes(5) == b""
    for offset, length in [(-1, 1), (6, 0), (4, 2)]:
        with pytest.raises(ValueError):
            view.to_bytes(offset, length)
    assert owner.references == 2
    view.release()
    with pytest.raises(BufferReleasedError):
        view.to_bytes()
    owner.release()


@pytest.mark.parametrize("source", [b"a\x00\xffbcdef", bytearray(b"a\x00\xffbcdef")])
@pytest.mark.parametrize("offset,length,capacity", [(0, -1, 9), (1, 5, 3), (7, 0, 2)])
def test_segment_bulk_copy_keeps_capacity_and_exact_bytes(source, offset, length, capacity):
    owner = BufferSegment(capacity)
    requested = len(source) - offset if length < 0 else length
    count = min(requested, capacity)
    assert owner.write(source, offset, length) == count
    assert owner.end == count and len(owner.data) == capacity
    assert bytes(owner.data[:count]) == bytes(source[offset:offset + count])
    assert bytes(owner.data[count:]) == b"\x00" * (capacity - count)
    owner.release()


def test_segment_self_copy_keeps_forward_indexing_semantics():
    owner = BufferSegment(8)
    owner.write(b"ab")
    assert owner.write(owner.data, 0, 6) == 6
    assert owner.data == bytearray(b"abababab")
    owner.release()


def test_segment_custom_source_keeps_integer_index_calls():
    class Indexed:
        def __init__(self):
            self.indices = []
        def __len__(self):
            return 3
        def __getitem__(self, index):
            assert type(index) is int
            self.indices.append(index)
            return 65 + index
    source = Indexed()
    owner = BufferSegment(4)
    assert owner.write(source, 1, 2) == 2
    assert source.indices == [1, 2]
    assert owner.data == bytearray(b"BC\x00\x00")
    owner.release()


@pytest.mark.parametrize("consumed", [0, 2, 6])
@pytest.mark.parametrize("limit", [-1, 0, 3, 20])
def test_exact_bytes_within_one_segment_are_retained_without_copy(consumed, limit):
    channel = ChannelBuffer(8, 12, 24, 48)
    payload = b"ab\x00\xffcdef"
    assert channel.append(payload) == BACKPRESSURE_NONE
    assert len(channel) == len(payload)
    held = channel.peek_views()
    owner = held[0].owner
    assert owner.frozen is payload and owner.references == 2
    if consumed == 0 and limit < 0:
        assert channel.peek_bytes() is payload
    channel.consume(consumed)
    expected = payload[consumed:] if limit < 0 else payload[consumed:consumed + limit]
    assert channel.peek_bytes(limit) == expected
    assert len(channel) == len(payload) - consumed
    channel.close()
    assert owner.references == 1 and not owner.released
    assert held[0].to_bytes() == payload and held[0].to_bytes(3, 2) == payload[3:5]
    assert held[0].release() == 1
    assert owner.released and owner.frozen is None


def test_adopted_and_copied_appends_keep_fifo_order_and_watermarks():
    channel = ChannelBuffer(4, 3, 6, 32)
    mutable = bytearray(b"xyz")
    assert channel.append(b"ab") == BACKPRESSURE_NONE
    assert channel.append(mutable) == BACKPRESSURE_NONE
    mutable[0] = 33
    assert channel.append(b"0123456789") == BACKPRESSURE_HIGH
    assert channel.read(4) == b"abxy"
    assert channel.read() == b"z0123456789"
    assert len(channel) == 0


def test_adopted_segment_storage_is_read_only_and_exact_bytes_only():
    owner = BufferSegment(1, b"abc")
    assert (owner.capacity, owner.readable_bytes(), owner.writable_bytes()) == (3, 3, 0)
    with pytest.raises(ValueError):
        owner.write(b"d")
    assert owner.view(1, 2).to_bytes() == b"bc"
    for invalid in (bytearray(b"abc"), b""):
        with pytest.raises((TypeError, ValueError)):
            BufferSegment(4, invalid)
