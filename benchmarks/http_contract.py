"""Shared application work for the native/asyncio live HTTP experiment.

This module is intentionally plain Python. Both servers perform these same
transformations; the client independently checks every request-specific byte.
"""

import json


FAILURE = "profile unavailable"


def profile_value(request_id: str):
    return {"name": "Ada", "plan": "pro", "request_id": request_id}


def notification_value(request_id: str):
    return ["Your report is ready", request_id]


def response_body(request_id: str, profile, notifications, ledger, failed: bool):
    if ledger != [1, 1, 1, 1]:
        raise RuntimeError("children did not start and clean up exactly once")
    if failed:
        data = {"error": FAILURE, "request_id": request_id, "children": ledger}
    else:
        data = {"profile": profile, "notifications": notifications,
                "request_id": request_id, "children": ledger}
    return json.dumps(data, sort_keys=True).encode()
