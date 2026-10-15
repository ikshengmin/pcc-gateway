"""Finite protocol checks, not a throughput sweep or native qualification."""

import asyncio
import json

import pytest

import benchmark_asyncio as oracle
from benchmarks import compare
from benchmarks.protocol import WORKLOAD_SCOPE, validate_measurement


def measurement():
    return {"concurrency": 2, "delay_ms": 10, "rounds": 3,
            "requests": 6, "warmup_requests": 4, "elapsed_ms": 31.0,
            "latencies_ms": [10.0] * 6}


def validate(value):
    return validate_measurement(value, concurrency=2, delay_ms=10, rounds=3)


def test_valid_counts_and_distinct_metric_scopes():
    value = measurement()
    assert validate(value) is value
    assert WORKLOAD_SCOPE["kind"] == "handler-batch"
    assert WORKLOAD_SCOPE["transport"] == "none"
    assert WORKLOAD_SCOPE["children_per_request"] == 2
    assert WORKLOAD_SCOPE["primary_baseline"] == "CPython asyncio.TaskGroup"
    assert "excludes" in WORKLOAD_SCOPE["request_timer"]
    assert "including startup" in WORKLOAD_SCOPE["process_metrics"]


@pytest.mark.parametrize("field,value", [
    ("concurrency", 1), ("concurrency", True), ("delay_ms", 0), ("rounds", 2),
    ("requests", 5), ("requests", 6.0), ("warmup_requests", 0),
    ("elapsed_ms", 0), ("elapsed_ms", -1), ("elapsed_ms", True),
    ("elapsed_ms", "31"), ("elapsed_ms", float("nan")),
    ("elapsed_ms", float("inf")), ("elapsed_ms", 23),
    ("latencies_ms", [10] * 5), ("latencies_ms", [10] * 7),
    ("latencies_ms", [10, 10, 10, 10, 10, -1]),
    ("latencies_ms", [10, 10, 10, 10, 10, True]),
    ("latencies_ms", [10, 10, 10, 10, 10, float("nan")]),
    ("latencies_ms", [10, 10, 10, 10, 10, float("inf")]),
    ("latencies_ms", [10, 10, 10, 10, 10, "10"]),
    ("latencies_ms", [10, 10, 10, 10, 10, 7.99]),
])
def test_invalid_measurements_never_reach_summary(field, value):
    row = measurement()
    row[field] = value
    with pytest.raises(ValueError):
        validate(row)


@pytest.mark.parametrize("field", list(measurement()))
def test_missing_fields_are_rejected(field):
    row = measurement()
    del row[field]
    with pytest.raises(ValueError):
        validate(row)


@pytest.mark.parametrize("dimensions", [(0, 0, 1), (1, -1, 1), (1, 0, 0), (True, 0, 1)])
def test_invalid_dimensions_are_rejected(dimensions):
    with pytest.raises(ValueError):
        validate_measurement({}, concurrency=dimensions[0], delay_ms=dimensions[1],
                             rounds=dimensions[2])


@pytest.mark.parametrize("delay", [0, 1])
def test_asyncio_smoke_validates_two_children_and_exact_json(monkeypatch, delay):
    sleeps, bodies = [], []
    real_sleep, real_dumps = asyncio.sleep, json.dumps

    async def sleep(seconds):
        sleeps.append(seconds)
        await real_sleep(0)

    def dumps(value, **kwargs):
        result = real_dumps(value, **kwargs)
        bodies.append(result.encode())
        return result

    monkeypatch.setattr(oracle.asyncio, "sleep", sleep)
    monkeypatch.setattr(oracle.json, "dumps", dumps)
    assert asyncio.run(oracle.request(delay)) >= 0
    assert sleeps == [delay / 1000, delay / 1000]
    assert bodies == [b'{"notifications": ["Your report is ready"], "profile": {"name": "Ada", "plan": "pro"}}']


def test_asyncio_error_cancels_and_drains_sibling(monkeypatch):
    events = []

    async def fail(delay):
        await asyncio.sleep(0)
        raise ValueError("profile failed")

    async def pending(delay):
        try:
            await asyncio.Future()
        finally:
            events.append("notification drained")

    monkeypatch.setattr(oracle, "fetch_profile", fail)
    monkeypatch.setattr(oracle, "fetch_notifications", pending)
    with pytest.raises(ExceptionGroup) as failure:
        asyncio.run(oracle.request(0))
    assert len(failure.value.exceptions) == 1
    assert str(failure.value.exceptions[0]) == "profile failed"
    assert events == ["notification drained"]


def test_asyncio_parent_cancellation_drains_both_children(monkeypatch):
    started, drained = [], []

    async def child(label):
        started.append(label)
        try:
            await asyncio.Future()
        finally:
            drained.append(label)

    monkeypatch.setattr(oracle, "fetch_profile", lambda delay: child("profile"))
    monkeypatch.setattr(oracle, "fetch_notifications", lambda delay: child("notifications"))

    async def exercise():
        request = asyncio.create_task(oracle.request(0))
        while len(started) != 2:
            await asyncio.sleep(0)
        request.cancel()
        with pytest.raises(asyncio.CancelledError):
            await request
        assert sorted(drained) == ["notifications", "profile"]

    asyncio.run(exercise())


def test_two_warmup_batches_are_outside_measured_count(monkeypatch):
    calls = []

    async def batch(concurrency, delay):
        calls.append((concurrency, delay))
        return [0.0] * concurrency

    monkeypatch.setattr(oracle, "batch", batch)
    monkeypatch.setattr(oracle.sys, "argv", ["benchmark_asyncio.py", "2", "0", "3"])
    result = asyncio.run(oracle.benchmark())
    assert calls == [(2, 0)] * 5
    validate_measurement(result, concurrency=2, delay_ms=0, rounds=3)
    assert result["requests"] == 6 and result["warmup_requests"] == 4


@pytest.mark.parametrize("top", [None, "/different/ancestor"])
def test_exported_sources_are_not_reported_as_clean_git(monkeypatch, tmp_path, top):
    monkeypatch.setattr(compare, "git", lambda *args, **kwargs: top)
    assert compare.git_source_identity(tmp_path) == {
        "commit": None, "tree": None, "dirty": None, "status": "unavailable",
    }


@pytest.mark.parametrize("status,expected", [("", False), (" M source.py", True), (None, None)])
def test_git_dirty_is_tristate_and_exact_root_bound(monkeypatch, tmp_path, status, expected):
    def git(*args, **kwargs):
        assert kwargs["cwd"] == tmp_path
        if args == ("rev-parse", "--show-toplevel"):
            return str(tmp_path)
        if args[0] == "status":
            return status
        return "a" * 40

    monkeypatch.setattr(compare, "git", git)
    actual = compare.git_source_identity(tmp_path)
    assert actual["dirty"] is expected
    assert actual["status"] == ("unavailable" if status is None else "recorded")
