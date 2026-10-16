"""Bounded same-run, fresh-request live HTTP comparison.

Compile the native server separately with current artifacts, then pass its
executable, compiler receipt, source tree and matching threaded archive here.
This runner never silently builds/provisions a compiler or runtime. CPython
owns only the load client and the explicit asyncio reference server.
"""

import argparse
import asyncio
from contextlib import contextmanager
from datetime import datetime, timezone
import json
import math
import os
from pathlib import Path
import platform
import signal
import socket
import statistics
import subprocess
import sys
import time

try:
    from .compare import ROOT, digest, percentile, save, source_tree_digest
    from .observation import build_observer, paths_for, read_metrics, CPU_SCOPE, MEMORY_SCOPE
    from .processes import _stop_group
    from .http_compile import source_identities, verify_threaded_runtime
except ImportError:
    from compare import ROOT, digest, percentile, save, source_tree_digest
    from observation import build_observer, paths_for, read_metrics, CPU_SCOPE, MEMORY_SCOPE
    from processes import _stop_group
    from http_compile import source_identities, verify_threaded_runtime


def request_bytes(request_id, delay=0, *, failed=False, close=False, target="/dashboard"):
    return (f"GET {target} HTTP/1.1\r\nHost: local\r\nX-Request-Id: {request_id}\r\n"
            f"X-Delay-Ms: {delay}\r\nX-Fail: {int(failed)}\r\n"
            + ("Connection: close\r\n" if close else "") + "\r\n").encode("ascii")


def expected_body(request_id, failed=False):
    # Independent of the servers' shared work module, catching stale results,
    # omitted children, changed payload shape and missing failure cleanup.
    if failed:
        data = {"children": [1, 1, 1, 1], "error": "profile unavailable",
                "request_id": request_id}
    else:
        data = {"children": [1, 1, 1, 1], "request_id": request_id,
                "profile": {"name": "Ada", "plan": "pro", "request_id": request_id},
                "notifications": ["Your report is ready", request_id]}
    return json.dumps(data, sort_keys=True).encode()


async def read_response(reader):
    head = await asyncio.wait_for(reader.readuntil(b"\r\n\r\n"), 5)
    if len(head) > 32768:
        raise RuntimeError("oversized response head")
    lines = head[:-4].split(b"\r\n")
    parts = lines[0].split(b" ", 2)
    if len(parts) != 3 or parts[0] != b"HTTP/1.1":
        raise RuntimeError("invalid HTTP status")
    headers = {}
    for line in lines[1:]:
        key, value = line.split(b":", 1)
        key = key.lower()
        if key in headers:
            raise RuntimeError("duplicate response header")
        headers[key] = value.strip()
    if b"transfer-encoding" in headers or b"content-length" not in headers:
        raise RuntimeError("unexpected response framing")
    length = int(headers[b"content-length"])
    if length < 0 or length > 1048576:
        raise RuntimeError("invalid response body size")
    return int(parts[1]), headers, await asyncio.wait_for(reader.readexactly(length), 5)


def validate_response(response, request_id, failed=False):
    status, headers, body = response
    if (status != (503 if failed else 200)
            or headers.get(b"content-type") != b"application/json"
            or body != expected_body(request_id, failed)):
        raise RuntimeError("fresh response/child cleanup mismatch: " + request_id)


async def close_writer(writer):
    writer.close()
    try:
        await writer.wait_closed()
    except ConnectionError:
        pass


async def one_request(port, payload, *, fragments=False):
    reader, writer = await asyncio.open_connection("127.0.0.1", port)
    try:
        if fragments:
            cuts = [payload[:3], payload[3:21], payload[21:-2], payload[-2:]]
            for fragment in cuts:
                writer.write(fragment)
                await writer.drain()
                await asyncio.sleep(.002)
        else:
            writer.write(payload)
            await writer.drain()
        return await read_response(reader)
    finally:
        await close_writer(writer)


async def functional_gate(port, nonce):
    fresh = nonce + "-fragmented"
    validate_response(await one_request(port, request_bytes(fresh, close=True), fragments=True), fresh)
    failed = nonce + "-failure"
    before = time.perf_counter()
    validate_response(await one_request(port, request_bytes(failed, failed=True, close=True)), failed, True)
    failure_seconds = time.perf_counter() - before
    if failure_seconds >= .75:
        raise RuntimeError("failed sibling was not cancelled before its one-second wait")
    missing = await one_request(port, request_bytes(nonce, target="/missing", close=True))
    if missing[0] != 404:
        raise RuntimeError("missing route did not return 404")
    malformed = (b"POST /dashboard HTTP/1.1\r\nHost: local\r\n"
                 b"Content-Length: 1\r\nTransfer-Encoding: chunked\r\n\r\n")
    if (await one_request(port, malformed))[0] != 400:
        raise RuntimeError("ambiguous framing accepted")
    # Close after admitting a real delayed request. Shutdown's resource ledger
    # must still close; this does not claim immediate disconnect cancellation.
    reader, writer = await asyncio.open_connection("127.0.0.1", port)
    writer.write(request_bytes(nonce + "-disconnect", 100))
    await writer.drain()
    await asyncio.sleep(.02)
    await close_writer(writer)
    await asyncio.sleep(.15)
    return {"fragmented_request": True, "failed_child_cancelled_and_drained": True,
            "failure_seconds": failure_seconds, "not_found": True,
            "ambiguous_framing_rejected": True, "disconnect_sent": True}


async def measure(port, concurrency, delay, rounds, nonce):
    ready = asyncio.Queue()
    begin = asyncio.Event()
    samples = []

    async def worker(index):
        reader, writer = await asyncio.open_connection("127.0.0.1", port)
        local_samples = []
        try:
            for warm in range(2):
                request_id = f"{nonce}-w{index}-{warm}"
                writer.write(request_bytes(request_id, delay))
                await writer.drain()
                validate_response(await read_response(reader), request_id)
            await ready.put(index)
            await begin.wait()
            for serial in range(rounds):
                request_id = f"{nonce}-m{index}-{serial}"
                started = time.perf_counter()
                writer.write(request_bytes(request_id, delay))
                await writer.drain()
                validate_response(await read_response(reader), request_id)
                local_samples.append((time.perf_counter() - started) * 1000)
            samples.extend(local_samples)
        finally:
            await close_writer(writer)

    async with asyncio.TaskGroup() as scope:
        children = [scope.create_task(worker(index)) for index in range(concurrency)]
        for _ in children:
            await ready.get()
        started = time.perf_counter()
        begin.set()
    elapsed = time.perf_counter() - started
    if len(samples) != concurrency * rounds or elapsed <= 0:
        raise RuntimeError("incomplete HTTP measurement")
    return {"requests": len(samples), "warmup_requests": 2 * concurrency,
            "elapsed_ms": elapsed * 1000, "latencies_ms": samples,
            "requests_per_second": len(samples) / elapsed,
            "concurrency": concurrency, "delay_ms": delay, "rounds": rounds}


def free_port():
    with socket.socket() as sock:
        sock.bind(("127.0.0.1", 0))
        return sock.getsockname()[1]


def observer_child(observer_pid):
    # Identify only our direct observer child, never infer unrelated ownership.
    rows = subprocess.check_output(["ps", "-axo", "pid=,ppid="], text=True, timeout=2)
    children = [int(pid) for pid, parent in (line.split() for line in rows.splitlines())
                if int(parent) == observer_pid]
    if len(children) != 1:
        raise RuntimeError("observer does not own exactly one live server")
    return children[0]


@contextmanager
def running_server(command, observer, prefix, env):
    paths = paths_for(prefix)
    with open(paths["stdout"], "xb") as stdout, open(paths["stderr"], "xb") as stderr:
        process = subprocess.Popen([observer["path"], paths["receipt"], "--", *command],
                                   cwd=ROOT, env=env, stdout=stdout, stderr=stderr, process_group=0)
        previous = signal.getsignal(signal.SIGTERM)
        def terminated(signum, _frame):
            raise SystemExit(128 + signum)
        signal.signal(signal.SIGTERM, terminated)
        try:
            yield process, paths
        finally:
            try:
                _stop_group(process)
            finally:
                signal.signal(signal.SIGTERM, previous)


async def wait_ready(port, process):
    deadline = time.monotonic() + 15
    while time.monotonic() < deadline:
        if process.poll() is not None:
            raise RuntimeError("server exited before HTTP readiness")
        try:
            response = await one_request(port, request_bytes("ready", target="/health", close=True))
        except (ConnectionRefusedError, ConnectionResetError):
            await asyncio.sleep(.01)
            continue
        if response[0] != 200 or response[2] != b"ready":
            raise RuntimeError("unexpected HTTP readiness response")
        return
    raise RuntimeError("server did not become HTTP ready")


def validate_closure(stdout, stderr, label, expected_requests):
    if stderr or stdout.count("\n") != 1 or not stdout.endswith("\n"):
        raise RuntimeError("unexpected server stdout/stderr")
    def pairs(items):
        value = {}
        for key, entry in items:
            if key in value:
                raise RuntimeError("duplicate shutdown receipt key")
            value[key] = entry
        return value
    value = json.loads(stdout, object_pairs_hook=pairs)
    if not isinstance(value, dict):
        raise RuntimeError("shutdown receipt must be an object")
    keys = ("connections_active", "requests_active", "writers", "active_writers") if label == "asyncio" else (
        "connections_active", "requests_active", "requests_queued", "buffered_bytes",
        "connection_owners", "connections", "generation_references")
    if any(type(value.get(key)) is not int or value[key] != 0 for key in keys):
        raise RuntimeError("HTTP shutdown retained owners")
    if type(value.get("requests_started")) is not int or value["requests_started"] != expected_requests:
        raise RuntimeError("HTTP server request count mismatch")
    if label != "asyncio" and (value.get("generation_released") is not True
                                or value.get("pool_started") is not False):
        raise RuntimeError("HTTP generation or carrier pool did not close")
    expected_keys = set(keys) | {"requests_started"}
    if label != "asyncio":
        expected_keys |= {"generation_released", "pool_started", "waitset_backend"}
        if type(value.get("waitset_backend")) is not int or value["waitset_backend"] not in (0, 1, 2):
            raise RuntimeError("invalid native waitset backend")
    if set(value) != expected_keys:
        raise RuntimeError("unexpected shutdown receipt fields")
    return value


def run_arm(label, command, observer, prefix, env, concurrency, delay, rounds, nonce):
    port = free_port()
    with running_server([*command, str(port)], observer, prefix, env) as (process, paths):
        async def workload():
            await wait_ready(port, process)
            gate = await functional_gate(port, nonce)
            result = await measure(port, concurrency, delay, rounds, nonce)
            # SIGTERM must preserve this already-admitted response and then
            # retire every owner. This extra request is outside measured QPS.
            reader, writer = await asyncio.open_connection("127.0.0.1", port)
            request_id = nonce + "-shutdown"
            try:
                writer.write(request_bytes(request_id, 100, close=True))
                await writer.drain()
                await asyncio.sleep(.02)
                os.kill(observer_child(process.pid), signal.SIGTERM)
                validate_response(await read_response(reader), request_id)
            finally:
                await close_writer(writer)
            gate["active_request_survived_graceful_shutdown"] = True
            result["functional_gate"] = gate
            return result
        result = asyncio.run(asyncio.wait_for(workload(), timeout=60))
        if process.wait(timeout=10) != 0:
            raise RuntimeError("HTTP server/observer exited unsuccessfully")
    result["observer_pid"] = process.pid
    result["closure"] = validate_closure(Path(paths["stdout"]).read_text(),
        Path(paths["stderr"]).read_text(), label, concurrency * (rounds + 2) + 6)
    result.update(read_metrics(paths["receipt"], expected_returncode=0))
    result["observations"] = {key: {"path": path, "sha256": digest(path)} for key, path in paths.items()}
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--native", type=Path, required=True)
    parser.add_argument("--native-label", choices=("host-pcc", "pcc1"), required=True)
    parser.add_argument("--compile-receipt", type=Path, required=True)
    parser.add_argument("--compiler-source", type=Path, required=True)
    parser.add_argument("--runtime-archive", type=Path, required=True)
    parser.add_argument("--observer-receipt", type=Path, help="JSON receipt from observation.build_observer")
    parser.add_argument("--concurrency", default="1,10,100")
    parser.add_argument("--delays", default="0,10")
    parser.add_argument("--rounds", type=int, default=100)
    parser.add_argument("--repeats", type=int, default=5)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if sys.version_info[:3] != (3, 15, 0) or sys.version_info.releaselevel != "candidate" or sys.version_info.serial != 1:
        parser.error("the matched baseline requires CPython 3.15.0rc1")
    widths = [int(value) for value in args.concurrency.split(",")]
    delays = [int(value) for value in args.delays.split(",")]
    if min(widths) <= 0 or min(delays) < 0 or max(delays) > 1000 or args.rounds <= 0 or args.repeats <= 0:
        parser.error("invalid workload bounds")
    if args.output.exists():
        parser.error("refusing to overwrite a result")
    sys.path.insert(0, str(args.compiler_source.resolve()))
    import pcc
    core = Path(pcc.__file__).resolve().parents[1]
    sys.path.insert(0, str(core / "scripts"))
    from run_pcc_compile_ab import _performance_lock
    with _performance_lock():
        compare(args, widths, delays)


def compare(args, widths, delays):
    build = ROOT / "benchmarks/build" / args.output.stem
    build.mkdir(parents=True, exist_ok=False)
    source_paths = [ROOT / "benchmark_http_native.py", ROOT / "benchmark_http_asyncio.py",
                    ROOT / "benchmarks/http_contract.py", ROOT / "benchmarks/http_compile.py", Path(__file__).resolve(),
                    ROOT / "benchmarks/processes.py", ROOT / "benchmarks/observation.py",
                    ROOT / "benchmarks/process_observer.c", *ROOT.glob("pcc_gateway/**/*.py")]
    identities = {str(path.resolve()): digest(path) for path in [*source_paths, args.native,
        args.compile_receipt, args.runtime_archive, Path(sys.executable)]}
    provenance = args.runtime_archive.with_suffix(args.runtime_archive.suffix + ".provenance.json")
    verify_threaded_runtime(args.runtime_archive.resolve(), args.compiler_source.resolve())
    compiled = json.loads(args.compile_receipt.read_text())
    compiler_row = compiled.get("compilers", {}).get(args.native_label, {})
    if (compiled.get("schema") != "pcc-gateway.http-compile.v1"
            or compiled.get("status") != "COMPLETE" or compiled.get("complete") is not True
            or compiled.get("implementation") != args.native_label
            or compiler_row.get("artifact_sha256") != digest(args.native)
            or compiled.get("sources") != source_identities()
            or compiled.get("compiler_source_sha256") != source_tree_digest(args.compiler_source)
            or compiled.get("runtime_archive_sha256") != digest(args.runtime_archive)
            or compiled.get("runtime_provenance_sha256") != digest(provenance)):
        raise RuntimeError("HTTP compile receipt does not bind the executed artifact and current inputs")
    identities[str(provenance.resolve())] = digest(provenance)
    report = {"schema": "pcc-gateway.http-comparison.v1", "status": "RUNNING", "complete": False,
              "started_utc": datetime.now(timezone.utc).isoformat(), "platform": platform.platform(),
              "python_version": sys.version, "native_label": args.native_label,
              "cpu_count": os.cpu_count(), "process_cpu_count": os.process_cpu_count(),
              "cpu_affinity": sorted(os.sched_getaffinity(0)) if hasattr(os, "sched_getaffinity") else None,
              "load_average_start": os.getloadavg() if hasattr(os, "getloadavg") else None,
              "compiler_source": str(args.compiler_source.resolve()),
              "compiler_source_sha256": source_tree_digest(args.compiler_source),
              "identities": identities, "compile_receipt": compiled, "runs": [], "summary": [],
              "workload": "Fresh ID, two child waits, JSON and cleanup; real HTTP/1 keepalive, closed-loop C clients",
              "stack_scope": "Production GatewayServer vs asyncio streams with the same codec/router/encoder; one carrier/event loop",
              "cpu_scope": CPU_SCOPE, "memory_scope": MEMORY_SCOPE + "; retained client latencies excluded",
              "hardware_counters": "unavailable; no instruction/cycle sampling claimed",
              "latency_scope": "client send through full response validation; startup/warmups/failure gates excluded",
              "closure_scope": "SIGTERM during an admitted request must preserve its response and close all owners; disconnect gate proves eventual cleanup, not immediate cancellation"}
    save(args.output, report)
    env = dict(os.environ)
    env.pop("LC_ALL", None)
    env.update(PCC_GC_BACKEND="0", PCC_WITH_THREADS="1",
               PYTHONPATH=str(args.compiler_source.resolve()),
               PCC_SOURCE_ROOT=str(args.compiler_source.resolve()),
               PCC_REPO_ROOT=str(args.compiler_source.resolve()),
               PCC_RUNTIME_DIR=str(args.compiler_source.resolve() / "pcc/runtime"))
    report["run_environment"] = {key: value for key, value in env.items()
                                 if key.startswith("PCC_") or key == "PYTHONPATH"}
    try:
        if args.observer_receipt:
            observer = json.loads(args.observer_receipt.read_text())
            if (digest(observer["path"]) != observer["sha256"]
                    or digest(observer["source"]) != observer["source_sha256"]
                    or digest(observer["compiler"]) != observer["compiler_sha256"]):
                raise RuntimeError("prebuilt observer receipt is stale")
            identities[str(args.observer_receipt.resolve())] = digest(args.observer_receipt)
        else:
            observer = build_observer(build, env=env)
        report["process_observer"] = observer
        commands = {args.native_label: [str(args.native.resolve())],
                    "asyncio": [sys.executable, str(ROOT / "benchmark_http_asyncio.py")]}
        for delay in delays:
            for width in widths:
                for repetition in range(args.repeats):
                    labels = list(commands)
                    if repetition % 2:
                        labels.reverse()
                    nonce = f"http-{width}-{delay}-{repetition}"
                    for label in labels:
                        prefix = build / f"{label}-c{width}-d{delay}-r{repetition}"
                        report["active_run"] = {"label": label, "prefix": str(prefix)}
                        save(args.output, report)
                        row = run_arm(label, commands[label], observer, prefix, env, width, delay, args.rounds, nonce)
                        row.update(implementation=label, repetition=repetition,
                            command=commands[label],
                            load_average=os.getloadavg() if hasattr(os, "getloadavg") else None)
                        report["runs"].append(row)
                        report.pop("active_run", None)
                        save(args.output, report)
                        print(f"{label}: C{width} delay={delay} {row['requests_per_second']:.1f} HTTP requests/s", flush=True)
                for label in commands:
                    rows = [row for row in report["runs"] if row["implementation"] == label
                            and row["concurrency"] == width and row["delay_ms"] == delay]
                    latencies = [value for row in rows for value in row["latencies_ms"]]
                    summary = {"implementation": label, "concurrency": width, "delay_ms": delay,
                        "requests_per_second_median": statistics.median(row["requests_per_second"] for row in rows),
                        "p50_ms": percentile(latencies, .5), "p95_ms": percentile(latencies, .95),
                        "p99_ms": percentile(latencies, .99)}
                    for key in ("process_cpu_seconds", "process_peak_rss_bytes"):
                        summary[key + "_median"] = statistics.median(row[key] for row in rows)
                    report["summary"].append(summary)
        for path, original in identities.items():
            if digest(path) != original:
                raise RuntimeError("input changed during HTTP comparison: " + path)
        if source_tree_digest(args.compiler_source) != report["compiler_source_sha256"]:
            raise RuntimeError("compiler source changed during HTTP comparison")
        if digest(observer["path"]) != observer["sha256"]:
            raise RuntimeError("observer changed during HTTP comparison")
        report["ratios"] = []
        for delay in delays:
            for width in widths:
                pairs = []
                for repetition in range(args.repeats):
                    paired = {row["implementation"]: row["requests_per_second"] for row in report["runs"]
                              if row["concurrency"] == width and row["delay_ms"] == delay
                              and row["repetition"] == repetition}
                    pairs.append(paired[args.native_label] / paired["asyncio"])
                report["ratios"].append({"concurrency": width, "delay_ms": delay,
                    "native_over_asyncio_paired_ratios": pairs, "median_paired_ratio": statistics.median(pairs),
                    "native_winning_pairs": sum(ratio > 1 for ratio in pairs)})
        report["load_average_end"] = os.getloadavg() if hasattr(os, "getloadavg") else None
        report.update(status="COMPLETE", complete=True)
    except BaseException as error:
        report.update(status="FAILED", failure=type(error).__name__ + ": " + str(error))
        raise
    finally:
        save(args.output, report)


if __name__ == "__main__":
    main()
