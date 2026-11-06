"""Reject misleading benchmark reports and ensure every route really runs."""

import copy

import pytest

from benchmarks.web_frameworks import ROUTES, summarize, validate_result, zrk_command
from benchmarks.web_frameworks_macos import parse_cpu_time


def result():
    return {
        "zrk_version": "3.0.0", "target": {"url": "http://127.0.0.1:3000/", "method": "GET"},
        "config": {"closed": True, "disable_keepalive": False, "connections": 10,
                   "duration_s": 15, "timeout_ms": 8000, "streams": 1},
        "requests": 30000, "duration_s": 15.0, "achieved_rate": 2000.0,
        "bytes": 1920000, "error_rate": 0.0,
        "errors": {"connect": 0, "read": 0, "write": 0, "timeout": 0,
                   "deadline": 0, "non_2xx_3xx": 0},
        "status_codes": {"1xx": 0, "2xx": 30000, "3xx": 0, "4xx": 0, "5xx": 0},
        "latency_us": {"p50": 4000, "p75": 5000, "p90": 6000, "p99": 9000},
    }


def test_dynamic_get_script_cannot_replace_subsequent_post_workload():
    commands = [zrk_command(method, route, 10, 3, "result.json") for method, route in ROUTES]
    assert "--script" not in commands[0]
    assert commands[1][commands[1].index("--script") + 1].endswith("user_id.lua")
    assert "--script" not in commands[2]
    assert commands[2][commands[2].index("--method") + 1] == "POST"
    assert commands[2][-1] == "http://127.0.0.1:3000/user"


def test_report_uses_whole_run_counts_and_microsecond_units():
    data = result()
    data["achieved_rate_end"] = 12345  # Last window is not whole-run throughput.
    report = validate_result(data, "GET", "/", 10)
    assert report["requests_per_s"] == 2000
    assert report["p50_ms"] == 4 and report["p99_ms"] == 9


@pytest.mark.parametrize("path,value", [
    (("interrupted",), True),
    (("requests",), 0),
    (("duration_s",), 3),
    (("achieved_rate",), 10000),
    (("config", "closed"), False),
    (("config", "disable_keepalive"), True),
    (("config", "connections"), 64),
    (("target", "method"), "POST"),
    (("errors", "timeout"), 1),
    (("status_codes", "2xx"), 29999),
    (("latency_us", "p99"), float("nan")),
])
def test_invalid_or_different_workload_is_not_accepted(path, value):
    data = copy.deepcopy(result())
    target = data
    for key in path[:-1]:
        target = target[key]
    target[path[-1]] = value
    with pytest.raises(ValueError):
        validate_result(data, "GET", "/", 10)


def test_partial_matrix_cannot_be_presented_as_complete():
    with pytest.raises(ValueError, match="incomplete"):
        summarize([], 3, [10])


@pytest.mark.parametrize("value,seconds", [
    ("0:00.10", .1), ("3:01.25", 181.25), ("01:02:03", 3723),
    ("2-01:02:03", 176523),
])
def test_mac_cpu_observation_handles_clock_fields(value, seconds):
    assert parse_cpu_time(value) == seconds


def test_mac_port_override_is_identical_in_command_and_validation():
    command = zrk_command("GET", "/", 10, 3, "out.json", port=45678)
    assert command[-1] == "http://127.0.0.1:45678/"
    data = result()
    data["target"]["url"] = command[-1]
    assert validate_result(data, "GET", "/", 10, port=45678)["requests"] == 30000
    with pytest.raises(ValueError):
        validate_result(data, "GET", "/", 10)
