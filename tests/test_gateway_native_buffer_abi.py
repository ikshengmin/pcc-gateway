"""Raw gateway buffers must survive boxed locals in compiled class methods."""

import ast
import os
from pathlib import Path
import sys

import pytest

from benchmarks.processes import run_command


ROOT = Path(__file__).resolve().parents[1]


def declarations(module):
    tree = ast.parse((ROOT / "pcc_gateway" / module).read_text())
    return [node for node in tree.body if isinstance(node, ast.Assign)
            and isinstance(node.value, ast.Call) and isinstance(node.value.func, ast.Name)
            and node.value.func.id == "extern"]


@pytest.mark.parametrize("module", ["dns_native.py", "server.py", "tls.py"])
def test_buffer_boundaries_do_not_project_boxed_addresses_as_objects(module):
    for node in declarations(module):
        symbol = ast.literal_eval(node.value.args[0])
        kinds = [arg.id for arg in node.value.args[1].elts]
        # This one entry takes the managed string object, not its raw data.
        if symbol == "py_str_utf8":
            assert kinds == ["c_ptr"]
        else:
            assert "c_ptr" not in kinds, (module, symbol)


@pytest.mark.integration
def test_native_method_reads_exact_system_bytes_through_gateway_declarations(tmp_path):
    expected = Path("/etc/resolv.conf").read_bytes()
    assert expected and len(expected) < 65535
    selected = [node for node in declarations("dns_native.py")
                if node.targets[0].id in {"_platform_resolver_config_read", "_py_bytes_new"}]
    assert len(selected) == 2
    source = tmp_path / "buffer_method.py"
    source.write_text(
        "from pcc.extern import c_int64, c_obj, c_ptr, c_rawptr, extern\n"
        "from pcc.unsafe import stack_alloc\n"
        + ast.unparse(ast.Module(body=selected, type_ignores=[])) + "\n"
        + "class Reader:\n"
        "    def read(self, capacity: int):\n"
        "        storage = stack_alloc(65535)\n"
        "        count = _platform_resolver_config_read(storage, capacity)\n"
        "        if count <= 0:\n"
        "            raise RuntimeError('system read failed: ' + str(count))\n"
        "        return _py_bytes_new(storage, count)\n"
        "def main():\n"
        "    result = Reader().read(65535)\n"
        "    if result != " + repr(expected) + ":\n"
        "        raise RuntimeError('system bytes mismatch')\n"
        "    print('GATEWAY_NATIVE_BUFFER_OK')\n"
        "main()\n"
    )
    binary = tmp_path / "buffer_method"
    env = dict(os.environ, PCC_NO_AUTO_PCC1="1")
    compiled = run_command([sys.executable, "-m", "pcc", "--backend", "self",
                            str(source), "-o", str(binary)], timeout=120,
                           capture_output=True, text=True, env=env, cwd=ROOT)
    assert compiled.returncode == 0, compiled.stdout + compiled.stderr
    ran = run_command([str(binary)], timeout=10, capture_output=True, text=True)
    assert (ran.returncode, ran.stdout, ran.stderr) == (0, "GATEWAY_NATIVE_BUFFER_OK\n", "")
