"""Same-Mac native gateway vs unchanged upstream aiohttp HTTP benchmark."""

import argparse
import json
import os
from pathlib import Path
import platform
import resource
import shutil
import signal
import sys
import time

from benchmarks.http_compare import free_port, observer_child, running_server
from benchmarks.observation import build_observer, read_metrics, CPU_SCOPE, MEMORY_SCOPE
from benchmarks.web_frameworks import (
    ROUTES, UPSTREAM, UPSTREAM_FILES, UPSTREAM_REV, Runner, ZRK_VERSION,
    digest, download, save, summarize, validate_result, zrk_command,
)
from benchmarks.web_frameworks_probe import verify


PORT_SHIM = '''require 'net/http'
module WebFrameworksPort
  def new(address, port = nil, *args, **kwargs)
    selected = port == 3000 ? Integer(ENV.fetch('WEB_FRAMEWORKS_PORT')) : port
    super(address, selected, *args, **kwargs)
  end
end
Net::HTTP.singleton_class.prepend(WebFrameworksPort)
'''


def parse_cpu_time(value):
    value = value.strip()
    days = 0
    if "-" in value:
        day, value = value.split("-", 1)
        days = int(day)
    fields = value.split(":")
    if len(fields) not in (2, 3):
        raise ValueError("unexpected process CPU time: " + value)
    result = days * 86400
    for index, field in enumerate(reversed(fields)):
        result += float(field) * 60 ** index
    return result


def cpu_seconds(runner, pid):
    return parse_cpu_time(runner.command(["ps", "-p", str(pid), "-o", "time="]))


def compare(args):
    if sys.platform != "darwin":
        raise RuntimeError("this runner records local Mac evidence only")
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=False)
    runner = Runner(output)
    native = args.native.resolve()
    build = json.loads(args.build_receipt.read_text())
    if build.get("status") != "COMPLETE" or build.get("returncode") != 0:
        raise ValueError("a successful native compilation watchdog receipt is required")
    shutil.copyfile(args.build_receipt, output / "native-build.json")
    inputs = {str(path.resolve()): digest(path) for path in (
        native, args.python, args.zrk, args.build_receipt,
        *Path(__file__).parent.glob("*.py"),
        Path(__file__).with_name("process_observer.c"),
    )}
    report = {"schema": "pcc-gateway.web-frameworks-macos.v1", "status": "RUNNING",
        "complete": False, "upstream_revision": UPSTREAM_REV, "host": platform.platform(),
        "inputs": inputs, "runs": [], "arms": [], "duration_seconds": 15,
        "repeats": args.repeats, "concurrencies": args.concurrencies,
        "server_carriers_or_event_loops": 1, "load_threads": args.threads,
        "gc_backend": 0, "cpu_affinity": "unavailable; no CPU pinning on macOS",
        "scope": "same Mac; sequential server arms; loopback keep-alive",
        "upstream_deviations": ["macOS processes instead of Linux containers",
            "same available port instead of occupied port 3000; original RSpec requests remapped by recorded shim",
            "fresh per-route arguments prevent GET Lua leaking into POST",
            "process CPU time instead of cgroup CPU counters"],
        "percentile_summary": "median of per-run percentiles, not pooled request latencies",
        "cpu_scope": CPU_SCOPE, "memory_scope": MEMORY_SCOPE}
    path = output / "report.json"
    save(path, report)
    try:
        upstream = output / "upstream"
        for name in UPSTREAM_FILES:
            download(UPSTREAM + UPSTREAM_REV + "/" + name, upstream / name)
        report["upstream_files"] = {name: digest(upstream / name) for name in UPSTREAM_FILES}
        report["reference_python"] = runner.command([str(args.python), "--version"])
        report["cpu_model"] = runner.command(["sysctl", "-n", "machdep.cpu.brand_string"])
        report["logical_cpus"] = os.cpu_count()
        report["open_file_limits"] = list(resource.getrlimit(resource.RLIMIT_NOFILE))
        report["reference_packages"] = runner.command([
            str(args.python), "-c",
            "import importlib.metadata,json; print(json.dumps({d.metadata['Name']:d.version for d in importlib.metadata.distributions()},sort_keys=True))",
        ])
        if runner.command([str(args.zrk), "--version"]) != "zrk " + ZRK_VERSION:
            raise ValueError("the selected zrk version is not the pinned version")
        linkage = runner.command(["otool", "-L", str(native)])
        if "libpython" in linkage.lower():
            raise ValueError("gateway artifact links libpython")
        report["native_linkage"] = linkage
        observer = build_observer(output, env=dict(os.environ))
        report["observer"] = observer
        port = free_port()
        report["port"] = port
        shim = output / "rspec-port.rb"
        shim.write_text(PORT_SHIM)
        report["rspec_port_shim_sha256"] = digest(shim)
        ip = upstream / "python/benchmark/ip-benchmark.txt"
        ip.parent.mkdir(parents=True)
        ip.write_text("127.0.0.1\n")
        environment = dict(os.environ, PCC_GC_BACKEND="0")
        contract_env = dict(os.environ, LANGUAGE=str(upstream / "python"), FRAMEWORK="benchmark",
                            ENGINE="benchmark", WEB_FRAMEWORKS_PORT=str(port))
        if args.gem_home:
            contract_env.update(GEM_HOME=str(args.gem_home), GEM_PATH=str(args.gem_home))
        commands = {"pcc-gateway": [str(native)],
                    "aiohttp": [str(args.python), str(upstream / "python/aiohttp/server.py")]}
        save(path, report)
        for repeat in range(args.repeats):
            order = ("pcc-gateway", "aiohttp") if repeat % 2 == 0 else ("aiohttp", "pcc-gateway")
            for arm in order:
                prefix = output / f"{arm}-{repeat + 1}"
                print(f"repeat={repeat + 1} arm={arm} contract port={port}", flush=True)
                with running_server([*commands[arm], str(port)], observer, prefix, environment) as (process, logs):
                    verify(port=port)
                    if process.poll() is not None:
                        raise RuntimeError("server exited before measurement")
                    child = observer_child(process.pid)
                    contract = runner.command([str(args.ruby), "-r", str(shim), str(args.rspec),
                        str(upstream / ".spec/route_spec.rb"), "--format", "json"], env=contract_env)
                    parsed = json.loads(contract)
                    if (parsed["summary"]["example_count"] != 6
                            or parsed["summary"]["failure_count"] or parsed["summary"]["pending_count"]):
                        raise ValueError("upstream RSpec contract did not fully pass")
                    save(prefix.with_suffix(".contract.json"), parsed)
                    warmup = output / f"{arm}-{repeat + 1}-warmup.json"
                    command = zrk_command("GET", "/", 50, args.threads, str(warmup), duration=5, port=port)
                    runner.command([str(args.zrk), *command[1:]])
                    validate_result(json.loads(warmup.read_text()), "GET", "/", 50, 5, port=port)
                    for concurrency in args.concurrencies:
                        for index, (method, route) in enumerate(ROUTES):
                            name = f"{arm}-{repeat + 1}-c{concurrency}-route{index}"
                            print(name, flush=True)
                            raw = output / (name + ".json")
                            command = zrk_command(method, route, concurrency, args.threads, str(raw),
                                port=port, script=upstream / ".load_scripts/user_id.lua")
                            before_cpu = cpu_seconds(runner, child)
                            before = time.perf_counter()
                            runner.command([str(args.zrk), *command[1:]])
                            wall = time.perf_counter() - before
                            cpu = cpu_seconds(runner, child) - before_cpu
                            busy = cpu / wall
                            result = validate_result(json.loads(raw.read_text()), method, route, concurrency, port=port)
                            report["runs"].append({"arm": arm, "repeat": repeat + 1,
                                "method": method, "route": route, "concurrency": concurrency,
                                "raw": raw.name, "raw_sha256": digest(raw),
                                "process_cpu_seconds": cpu, "observed_wall_seconds": wall,
                                "cores_used": busy,
                                "saturation": "server-bound" if busy >= .75 else "mixed" if busy >= .5 else "server-idle",
                                **result})
                            save(path, report)
                    verify(port=port)
                    os.kill(child, signal.SIGTERM)
                    if process.wait(timeout=35) != 0:
                        raise RuntimeError("server did not stop cleanly")
                metrics = read_metrics(logs["receipt"], expected_returncode=0)
                report["arms"].append({"arm": arm, "repeat": repeat + 1, "logs": logs, **metrics})
                save(path, report)
        if any(digest(name) != value for name, value in inputs.items()):
            raise ValueError("benchmark inputs changed during the run")
        if any(digest(upstream / name) != value for name, value in report["upstream_files"].items()):
            raise ValueError("upstream inputs changed during the run")
        report["summary"] = summarize(report["runs"], args.repeats, args.concurrencies)
        report["all_runs_server_bound"] = all(run["saturation"] == "server-bound" for run in report["runs"])
        report.update(status="COMPLETE", complete=True)
    except BaseException as error:
        report.update(status="FAILED", error=type(error).__name__ + ": " + str(error))
        raise
    finally:
        save(path, report)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("native", "build-receipt", "python", "zrk", "ruby", "rspec", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--gem-home", type=Path)
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--concurrencies", type=int, nargs="+", default=[10, 64, 256, 512])
    parser.add_argument("--threads", type=int, default=os.cpu_count())
    args = parser.parse_args()
    if (min(args.repeats, args.threads, *args.concurrencies) <= 0
            or len(set(args.concurrencies)) != len(args.concurrencies)):
        parser.error("requires positive counts and distinct concurrencies")
    compare(args)


if __name__ == "__main__":
    main()
