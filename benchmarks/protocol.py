"""Result validation for the matched handler benchmark, never an HTTP score.

Successful JSON/count checks establish the declared work only. Failure,
cancellation, backpressure, live sockets and GC need their separate gates.
"""

import math


WORKLOAD_SCOPE = {
    "kind": "handler-batch",
    "children_per_request": 2,
    "response_validation": "identical sorted JSON bytes in every request",
    "transport": "none",
    "primary_baseline": "CPython asyncio.TaskGroup",
    "request_timer": "measured batches only; excludes startup and two warmup batches",
    "latency_timer": "one request including children, join and JSON validation",
    "process_metrics": "whole process including startup, warmups and result formatting",
    "performance_verdict": "not established by correctness CI",
}


def _number(value):
    return type(value) in (int, float) and math.isfinite(value)


def validate_measurement(measured, *, concurrency, delay_ms, rounds):
    """Fail closed on missing work, malformed numbers and wrong timer scopes."""
    if (type(concurrency) is not int or concurrency < 1
            or type(delay_ms) is not int or delay_ms < 0
            or type(rounds) is not int or rounds < 1):
        raise ValueError("invalid workload dimensions")
    if not isinstance(measured, dict):
        raise ValueError("measurement must be an object")
    expected = {
        "concurrency": concurrency, "delay_ms": delay_ms, "rounds": rounds,
        "requests": concurrency * rounds, "warmup_requests": concurrency * 2,
    }
    for field, value in expected.items():
        if type(measured.get(field)) is not int or measured[field] != value:
            raise ValueError(f"measurement {field} does not match completed work")
    elapsed = measured.get("elapsed_ms")
    samples = measured.get("latencies_ms")
    # The existing 2 ms timer tolerance is shared by all benchmark arms.
    lower_bound = max(0, delay_ms - 2)
    if not _number(elapsed) or elapsed <= 0 or elapsed < rounds * lower_bound:
        raise ValueError("invalid measured-batch elapsed time")
    if not isinstance(samples, list) or len(samples) != expected["requests"]:
        raise ValueError("one latency sample is required per measured request")
    if not all(_number(value) and value >= lower_bound for value in samples):
        raise ValueError("invalid per-request latency")
    return measured
