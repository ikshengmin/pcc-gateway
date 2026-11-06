"""The Web Frameworks Benchmark API on the production PCC gateway.

Compile this file with pcc1, then run the executable. The default listener is
0.0.0.0:3000, as required by the-benchmarker/web-frameworks. An optional port
argument is useful for isolated local contract checks.
"""

import sys

from pcc_gateway import GatewayConfig, GatewayServer, ListenerConfig
from pcc_gateway.web import App, Request, Response, get, post


def index(request: Request):
    return Response.text("")


def user_id(request: Request):
    return Response.text(request.path_params["id"])


def create_user(request: Request):
    return Response.text("")


def build_app() -> App:
    return App(routes=(
        get("/", index),
        get("/user/{id}", user_id),
        post("/user", create_user),
    ))


def main():
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 3000
    config = GatewayConfig(
        listeners=(ListenerConfig("0.0.0.0", port),),
        carrier_count=1,
    )
    server = GatewayServer(build_app(), config=config)
    if server.run() != 0:
        raise RuntimeError("Web Frameworks Benchmark server failed")


if __name__ == "__main__":
    main()
