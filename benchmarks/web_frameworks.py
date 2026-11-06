"""Run the upstream Web Frameworks contract and a same-guest comparison.

The native executable must be built separately. No compiler/runtime fallback
or substitution is permitted here. Docker owns the Linux execution boundary;
the PCC core watchdog must bound this runner's process tree and memory.
"""

import argparse
from contextlib import contextmanager
import hashlib
import json
import math
import os
from pathlib import Path
import platform
import shutil
import signal
import statistics
import tarfile
import urllib.request
import uuid

from benchmarks.processes import run_command


UPSTREAM_REV = "6f7869a8ce3a5f456e24e00d3f9f55463745914e"
UPSTREAM = "https://raw.githubusercontent.com/the-benchmarker/web-frameworks/"
UPSTREAM_FILES = (
    "LICENSE", "README.md", "config.yaml", ".tasks/config.rake",
    ".tasks/saturation.rb", ".spec/route_spec.rb", ".spec/spec_helper.rb",
    ".load_scripts/user_id.lua", "python/config.yaml", "python/Dockerfile",
    "python/aiohttp/server.py", "python/aiohttp/pyproject.toml",
    "python/aiohttp/config.yaml",
)
ZRK_VERSION = "3.0.0"
ZRK_ARCHIVES = {
    "aarch64": "655a2036872bfc6f2514f1bfc9356d65bcd1a4dab5502cf3129b3d2cad1d9b77",
    "x86_64": "33114a9ff44933767551c3fb71940d8861ce5f0502c04ffa1b734b98f98b1081",
}
ROUTES = (("GET", "/"), ("GET", "/user/42"), ("POST", "/user"))


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save(path, data):
    path.write_text(json.dumps(data, indent=2, allow_nan=False) + "\n")


def download(url, path):
    path.parent.mkdir(parents=True, exist_ok=True)
    with urllib.request.urlopen(url, timeout=60) as response:
        path.write_bytes(response.read())


def zrk_command(method, route, concurrency, threads, output, *, duration=15):
    # Build a fresh argument list for EVERY route. The pinned upstream
    # config.rake retains zrk_args['script'] after /user/42; reusing it for
    # POST /user would make Lua send GET /user/<id> instead of the POST.
    command = [
        "zrk", "--plain", "--closed", "-t", str(threads),
        "--connections", str(concurrency), "--duration", str(duration) + "s",
        "--method", method, "--timeout", "8s", "--format", "json",
        "--output", output,
    ]
    if (method, route) == ("GET", "/user/42"):
        command += ["--script", "/work/upstream/.load_scripts/user_id.lua"]
    return command + ["http://127.0.0.1:3000" + route]


def validate_result(data, method, route, concurrency, duration=15):
    config = data["config"]
    if (data.get("interrupted", False) or data.get("zrk_version") != ZRK_VERSION
            or config["closed"] is not True or config["disable_keepalive"] is not False
            or config["connections"] != concurrency or config["duration_s"] != duration
            or config["timeout_ms"] != 8000 or config["streams"] != 1
            or data["target"] != {"url": "http://127.0.0.1:3000" + route, "method": method}):
        raise ValueError("load model, route, tool version or duration mismatch")
    requests = data["requests"]
    elapsed = data["duration_s"]
    if (type(requests) is not int or requests <= 0
            or not math.isfinite(elapsed) or elapsed < duration * .99
            or data["error_rate"] != 0 or any(data["errors"].values())
            or data["status_codes"]["2xx"] != requests
            or sum(data["status_codes"].values()) != requests):
        raise ValueError("incomplete or erroneous HTTP measurement")
    latencies = data["latency_us"]
    previous = 0
    for key in ("p50", "p75", "p90", "p99"):
        value = latencies[key]
        if not math.isfinite(value) or value < previous:
            raise ValueError("invalid latency percentiles")
        previous = value
    # The report rounds elapsed time to milliseconds. Do not substitute the
    # last interval's rate, or a requested/open-loop rate, for the whole run.
    qps = requests / elapsed
    if not math.isclose(qps, data["achieved_rate"], rel_tol=.001, abs_tol=.02):
        raise ValueError("whole-run request rate does not match counts")
    return {"requests": requests, "duration_s": elapsed, "requests_per_s": qps,
            "bytes": data["bytes"],
            **{key + "_ms": latencies[key] / 1000 for key in ("p50", "p75", "p90", "p99")}}


def summarize(runs, repeats, concurrencies):
    result = []
    for method, route in ROUTES:
        for concurrency in concurrencies:
            row = {"method": method, "route": route, "concurrency": concurrency}
            for arm in ("pcc-gateway", "aiohttp"):
                group = [run for run in runs if (run["arm"], run["method"], run["route"], run["concurrency"])
                         == (arm, method, route, concurrency)]
                if len(group) != repeats:
                    raise ValueError("comparison matrix is incomplete")
                row[arm] = {key: statistics.median(run[key] for run in group)
                            for key in ("requests_per_s", "p50_ms", "p75_ms", "p90_ms", "p99_ms")}
                row[arm]["qps_min"] = min(run["requests_per_s"] for run in group)
                row[arm]["qps_max"] = max(run["requests_per_s"] for run in group)
            row["pcc_over_aiohttp"] = row["pcc-gateway"]["requests_per_s"] / row["aiohttp"]["requests_per_s"]
            result.append(row)
    return result


class Runner:
    def __init__(self, output):
        self.output = output
        self.serial = 0
        self.prefix = "pcc-web-frameworks-" + uuid.uuid4().hex[:12]
        self.containers = set()
        self.commands = []

    def command(self, command, *, timeout=60, env=None):
        self.serial += 1
        log = self.output / ("command-%04d.log" % self.serial)
        row = {"command": command, "log": log.name}
        self.commands.append(row)
        save(self.output / "commands.json", self.commands)
        result = run_command(command, timeout=timeout, capture_output=True, text=True, env=env)
        log.write_text(result.stdout + result.stderr)
        row["returncode"] = result.returncode
        save(self.output / "commands.json", self.commands)
        if result.returncode:
            raise RuntimeError("command failed: " + str(log))
        return result.stdout.strip()

    def client(self, image, command, *, cpus="1-3", timeout=60, env=()):
        name = self.prefix + "-client"
        self.containers.add(name)
        try:
            return self.command([
                "docker", "run", "--rm", "--name", name, "--network", "host",
                "--cpuset-cpus", cpus, "--memory", "1g", "-v", str(self.output) + ":/work",
                "-w", "/work/upstream", *env, image, *command,
            ], timeout=timeout)
        finally:
            self.remove(name)

    def remove(self, name):
        if name not in self.containers:
            return
        result = run_command(["docker", "rm", "-f", name], timeout=20,
                             capture_output=True, text=True)
        if result.returncode and "No such container" not in result.stderr:
            raise RuntimeError("could not remove owned container: " + name)
        self.containers.discard(name)

    @contextmanager
    def server(self, image, arm):
        name = self.prefix + "-server"
        self.containers.add(name)
        try:
            cid = self.command([
                "docker", "run", "-d", "--name", name, "--network", "host",
                "--cpuset-cpus", "0", "--memory", "1g", image,
            ])
            yield cid
        finally:
            try:
                self.command(["docker", "stop", "-t", "35", name], timeout=45)
                self.command(["docker", "logs", name])
                state = json.loads(self.command(["docker", "inspect", "--format", "{{json .State}}", name]))
                if state["OOMKilled"] or state["ExitCode"] != 0:
                    raise RuntimeError(arm + " failed clean shutdown: " + str(state))
            finally:
                self.remove(name)


def prepare(runner, native):
    root = runner.output
    upstream = root / "upstream"
    for path in UPSTREAM_FILES:
        download(UPSTREAM + UPSTREAM_REV + "/" + path, upstream / path)
    source_hashes = {path: digest(upstream / path) for path in UPSTREAM_FILES}
    info = json.loads(runner.command(["docker", "info", "--format", "{{json .}}"] ))
    arch = info["Architecture"]
    if arch not in ZRK_ARCHIVES or info["OSType"] != "linux" or info["NCPU"] < 4:
        raise RuntimeError("requires Linux Docker with >=4 CPUs and a supported architecture")
    machine = {"aarch64": 183, "x86_64": 62}[arch]
    header = native.read_bytes()[:20]
    if (header[:6] != b"\x7fELF\x02\x01" or len(header) != 20
            or int.from_bytes(header[18:20], "little") != machine):
        raise ValueError("native executable must be a matching Linux ELF64 artifact")
    context = root / "images"
    context.mkdir()
    archive = context / "zrk.tar.gz"
    download("https://github.com/zoxy-io/zrk/releases/download/v" + ZRK_VERSION
             + "/zrk-" + ZRK_VERSION + "-" + arch + "-linux.tar.gz", archive)
    if digest(archive) != ZRK_ARCHIVES[arch]:
        raise ValueError("zrk release checksum mismatch")
    with tarfile.open(archive) as tar:
        member = tar.getmember("zrk")
        if not member.isfile():
            raise ValueError("unexpected zrk archive entry")
        (context / "zrk").write_bytes(tar.extractfile(member).read())
    (context / "zrk").chmod(0o755)
    shutil.copyfile(native, context / "native")
    (context / "native").chmod(0o755)
    for name in ("server.py", "pyproject.toml"):
        shutil.copyfile(upstream / "python/aiohttp" / name, context / name)
    # Resolve mutable tags once; all server images consume the SAME base.
    runner.command(["docker", "pull", "python:3.14-slim"], timeout=180)
    base = runner.command(["docker", "image", "inspect", "python:3.14-slim",
                           "--format", "{{index .RepoDigests 0}}"])
    runner.command(["docker", "pull", "ruby:3.4-slim"], timeout=180)
    ruby = runner.command(["docker", "image", "inspect", "ruby:3.4-slim",
                           "--format", "{{index .RepoDigests 0}}"])
    dockerfiles = {
        "pcc-gateway": f'FROM {base}\nCOPY native /app/server\nENTRYPOINT ["/app/server"]\n',
        "aiohttp": (f"FROM {base}\nWORKDIR /app\nCOPY server.py pyproject.toml ./\n"
                    'RUN pip install --no-cache-dir .\nENTRYPOINT ["python", "server.py", "3000"]\n'),
        "client": (f"FROM {ruby}\nRUN gem install rspec --version 3.13.2 --no-document\n"
                   "COPY zrk /usr/local/bin/zrk\n"),
    }
    images = {}
    for arm, content in dockerfiles.items():
        path = context / (arm + ".Dockerfile")
        path.write_text(content)
        tag = runner.prefix + ":" + arm
        runner.command(["docker", "build", "-f", str(path), "-t", tag, str(context)], timeout=300)
        images[arm] = runner.command(["docker", "image", "inspect", tag, "--format", "{{.Id}}"])
    reference = runner.client(base, ["python", "--version"])
    installed = runner.command(["docker", "run", "--rm", "--entrypoint", "python",
                               images["aiohttp"], "-m", "pip", "freeze"])
    probe = Path(__file__).with_name("web_frameworks_probe.py")
    shutil.copyfile(probe, root / "probe.py")
    for arm in ("pcc-gateway", "aiohttp"):
        path = upstream / "python" / arm / "ip-benchmark.txt"
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text("127.0.0.1\n")
    return {"upstream_revision": UPSTREAM_REV, "upstream_files": source_hashes,
            "docker_architecture": arch, "docker_cpus": info["NCPU"],
            "server_base": base, "ruby_base": ruby, "images": images,
            "reference_python": reference, "reference_dependencies": installed,
            "zrk_version": ZRK_VERSION, "zrk_sha256": digest(context / "zrk"),
            "native_sha256": digest(native), "probe_sha256": digest(probe)}


def compare(args):
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=False)
    runner = Runner(output)
    report = {"schema": "pcc-gateway.web-frameworks.v1", "complete": False,
              "status": "RUNNING", "host": platform.platform(), "runs": [],
              "server_cpus": "0", "load_cpus": "1-3", "server_memory_limit": "1g",
              "duration_seconds": 15, "repeats": args.repeats,
              "concurrencies": args.concurrencies, "routes": ROUTES,
              "scope": "same Linux Docker guest; one server core and three disjoint load cores",
              "percentile_summary": "median of per-run percentiles, not pooled request latencies",
              "upstream_deviation": "fresh per-route arguments prevent GET Lua leaking into POST"}
    receipt = args.build_receipt.resolve()
    build = json.loads(receipt.read_text())
    if build.get("status") != "COMPLETE" or build.get("returncode") != 0:
        raise ValueError("a successful native compilation watchdog receipt is required")
    shutil.copyfile(receipt, output / "native-build.json")
    report["native_build_receipt_sha256"] = digest(receipt)
    report_path = output / "report.json"
    save(report_path, report)
    previous = signal.getsignal(signal.SIGTERM)

    def interrupted(signum, frame):
        raise SystemExit(128 + signum)

    signal.signal(signal.SIGTERM, interrupted)
    try:
        report["inputs"] = prepare(runner, args.native.resolve())
        save(report_path, report)
        images = report["inputs"]["images"]
        for repeat in range(args.repeats):
            order = ("pcc-gateway", "aiohttp") if repeat % 2 == 0 else ("aiohttp", "pcc-gateway")
            for arm in order:
                print(f"repeat={repeat + 1} arm={arm} contract", flush=True)
                with runner.server(images[arm], arm) as cid:
                    # Probe retries startup only; a wrong HTTP response fails immediately.
                    runner.client(report["inputs"]["server_base"], ["python", "/work/probe.py"])
                    contract = runner.client(images["client"], ["rspec", ".spec/route_spec.rb", "--format", "json"],
                        env=("-e", "LANGUAGE=python", "-e", "FRAMEWORK=" + arm, "-e", "ENGINE=benchmark"))
                    parsed = json.loads(contract)
                    if parsed["summary"]["example_count"] != 6 or parsed["summary"]["failure_count"] or parsed["summary"]["pending_count"]:
                        raise ValueError("upstream RSpec contract was not fully passed")
                    stem = f"{arm}-{repeat + 1}"
                    save(output / (stem + "-contract.json"), parsed)
                    # Upstream warmup: c50, closed loop, GET /, five seconds.
                    runner.client(images["client"], zrk_command("GET", "/", 50, 3, "/work/" + stem + "-warmup.json", duration=5))
                    validate_result(json.loads((output / (stem + "-warmup.json")).read_text()), "GET", "/", 50, 5)
                    for concurrency in args.concurrencies:
                        for index, (method, route) in enumerate(ROUTES):
                            name = f"{stem}-c{concurrency}-route{index}"
                            print(name, flush=True)
                            # Use the upstream cgroup validity probe unchanged, via host Ruby.
                            cid_path = output / (name + ".cid")
                            cid_path.write_text(cid + "\n")
                            state = output / (name + "-cpu-state.json")
                            saturation = output / (name + "-saturation.json")
                            probe = [args.ruby, str(output / "upstream/.tasks/saturation.rb"),
                                     "--cid", str(cid_path), "--state", str(state)]
                            runner.command([*probe, "--start"])
                            runner.client(images["client"], zrk_command(method, route, concurrency, 3, "/work/" + name + ".json"))
                            runner.command([*probe, "--stop", "--out", str(saturation), "--cores", "1"])
                            data = json.loads((output / (name + ".json")).read_text())
                            result = validate_result(data, method, route, concurrency)
                            validity = json.loads(saturation.read_text())
                            report["runs"].append({"arm": arm, "repeat": repeat + 1, "method": method,
                                "route": route, "concurrency": concurrency, "raw": name + ".json",
                                "raw_sha256": digest(output / (name + ".json")), "saturation": validity, **result})
                            save(report_path, report)
                    runner.client(report["inputs"]["server_base"], ["python", "/work/probe.py"])
        if digest(args.native) != report["inputs"]["native_sha256"]:
            raise ValueError("native executable changed during comparison")
        report["summary"] = summarize(report["runs"], args.repeats, args.concurrencies)
        report["all_runs_server_bound"] = all(
            run["saturation"].get("verdict") == "server-bound" for run in report["runs"]
        )
        report.update(status="COMPLETE", complete=True)
    except BaseException as error:
        report.update(status="FAILED", error=type(error).__name__ + ": " + str(error))
        raise
    finally:
        try:
            for name in tuple(runner.containers):
                runner.remove(name)
        finally:
            signal.signal(signal.SIGTERM, previous)
            save(report_path, report)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--native", type=Path, required=True)
    parser.add_argument("--build-receipt", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--ruby", default=shutil.which("ruby"))
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--concurrencies", type=int, nargs="+", default=[10, 64, 256, 512])
    args = parser.parse_args()
    if (args.repeats <= 0 or not args.ruby or not args.concurrencies
            or min(args.concurrencies) <= 0 or len(set(args.concurrencies)) != len(args.concurrencies)):
        parser.error("requires Ruby, positive repeats and distinct positive concurrencies")
    compare(args)


if __name__ == "__main__":
    main()
