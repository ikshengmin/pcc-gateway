"""Native source under the scripted host scheduler, not native execution."""

import ast
import asyncio
import json
from pathlib import Path

import pytest

import benchmark_asyncio as oracle
from benchmarks.protocol import validate_measurement
from test_gateway_structured_concurrency import FakeScheduler


ROOT = Path(__file__).resolve().parents[1]


def native_source_model():
    tree = ast.parse((ROOT / "benchmark_native.py").read_text())
    # Import only the exact benchmark functions. The native command-line entry
    # is intentionally unconditional; retain that compiler-visible shape.
    assert isinstance(tree.body[-1], ast.Expr)
    assert tree.body[-1].value.func.id == "main"
    tree.body.pop()
    namespace = {"__name__": "native_benchmark_host_model"}
    exec(compile(tree, "benchmark_native.py", "exec"), namespace)
    return namespace


@pytest.mark.parametrize("delay", [0, 1, 100])
def test_native_model_and_asyncio_execute_same_children_and_payload(monkeypatch, delay):
    native = native_source_model()
    scheduler = FakeScheduler()
    scheduler.install(monkeypatch)
    bodies = []
    encode = json.dumps

    def capture(value, **kwargs):
        encoded = encode(value, **kwargs)
        bodies.append(encoded.encode())
        return encoded

    monkeypatch.setattr(json, "dumps", capture)
    native["request"](delay)
    assert scheduler.slept_ms == [delay, delay]
    assert scheduler.pending == []
    assert scheduler.events.count("spawn:fetch_profile") == 1
    assert scheduler.events.count("spawn:fetch_notifications") == 1
    sleeps = []

    async def sleep(seconds):
        sleeps.append(seconds)

    monkeypatch.setattr(oracle.asyncio, "sleep", sleep)
    asyncio.run(oracle.request(delay))
    assert sleeps == [delay / 1000, delay / 1000]
    assert len(bodies) == 2 and bodies[0] == bodies[1]


def test_native_model_failure_drains_sibling_and_preserves_error(monkeypatch):
    native = native_source_model()
    scheduler = FakeScheduler()
    scheduler.install(monkeypatch)

    def fail(delay):
        raise ValueError("profile failed")

    native["fetch_profile"] = fail
    with pytest.raises(ValueError, match="profile failed"):
        native["request"](0)
    assert scheduler.pending == []
    assert scheduler.events.count("cancel:fetch_notifications") == 1


def test_native_model_warmup_count_is_separate_from_measured_work(monkeypatch):
    native = native_source_model()
    scheduler = FakeScheduler()
    scheduler.install(monkeypatch)
    monkeypatch.setattr(native["sys"], "argv", ["native", "2", "0", "3"])
    result = native["benchmark"]()
    validate_measurement(result, concurrency=2, delay_ms=0, rounds=3)
    assert len(scheduler.slept_ms) == 2 * (result["requests"] + result["warmup_requests"])
    assert scheduler.pending == []
