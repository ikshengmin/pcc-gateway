"""Run routing normalization/precedence with current host pcc0 and every GC."""

import os
from pathlib import Path
import subprocess
import sys

import pytest


PROBE = r"""
def main():
    routes = []
    for index in range(16):
        routes.append(Route("GET", "/miss" + str(index) + "/{id}", None))
    routes.append(Route("GET", "/wanted/{id}", None, bindings=(("id", "int"),)))
    router = Router(routes)
    first = router.match("GET", "/wanted//./42?ignored=yes")
    second = router.match("GET", "/wanted/43")
    if first.params != {"id": "42"} or second.params != {"id": "43"}:
        raise RuntimeError("fresh route params")
    if first.bound_values() != [42]:
        raise RuntimeError("typed binding")
    try:
        router.match("POST", "/wanted/42")
    except MethodNotAllowed as error:
        if error.allowed != ["GET"]:
            raise RuntimeError("method order")
    else:
        raise RuntimeError("missing method failure")
    scoped = Router((Route("GET", "/", None, host="expected"),))
    try:
        scoped.match("GET", "/../../escape", "different")
    except RouteNotFound:
        pass
    else:
        raise RuntimeError("host filtering")
    try:
        scoped.match("GET", "/../../escape", "expected")
    except ValueError:
        pass
    else:
        raise RuntimeError("unsafe path")
    print("ROUTING_NORMALIZATION_OK")
main()
"""


@pytest.mark.integration
def test_native_routing_matches_cpython_on_all_collectors(tmp_path):
    root = Path(__file__).resolve().parents[1]
    source = tmp_path / "routing_probe.py"
    source.write_text((root / "pcc_gateway/routing.py").read_text() + PROBE)
    reference = subprocess.run([sys.executable, str(source)], capture_output=True,
                               text=True, timeout=5)
    assert (reference.returncode, reference.stdout, reference.stderr) == (0, "ROUTING_NORMALIZATION_OK\n", "")
    binary = source.with_suffix("")
    built = subprocess.run([sys.executable, "-m", "pcc", "--backend", "self", str(source),
                            "-o", str(binary)], capture_output=True, text=True, timeout=60)
    assert built.returncode == 0, built.stdout + built.stderr
    for backend in range(5):
        result = subprocess.run([str(binary)], capture_output=True, text=True, timeout=5,
                                env=dict(os.environ, PCC_GC_BACKEND=str(backend)))
        assert (result.returncode, result.stdout, result.stderr) == (
            reference.returncode, reference.stdout, reference.stderr,
        ), (backend, result.stdout, result.stderr)
