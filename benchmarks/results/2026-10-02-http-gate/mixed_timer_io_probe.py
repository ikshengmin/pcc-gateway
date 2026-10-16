"""Native liveness probe: a timer must wake a driver with a quiet FD wait.

Unexecuted source at preparation time. Compile with the selected immutable
self/no-libpython compiler and matching archive. Run under a five-second
process-tree watchdog. The listener uses an ephemeral port and accepts no
connections; only the timer can make progress and cancel its sibling.
"""

import pcc.virtual_thread as vt


def quiet_reader(fd: int):
    vt.readable(fd)
    return 1


def timer_cancel(reader):
    vt.sleep_current(5)
    vt.cancel(reader)
    return 42


def main():
    listener = vt.tcp_listen("127.0.0.1", 0, 16)
    reader = vt.spawn(quiet_reader, listener)
    timer = vt.spawn(timer_cancel, reader)
    try:
        attempts = 0
        while vt.outcome(timer) == vt.OUTCOME_PENDING and attempts < 20:
            vt.run(1, 100)
            attempts += 1
        if vt.outcome(timer) != vt.OUTCOME_RETURNED or vt.result(timer) != 42:
            raise RuntimeError("timer did not progress through a quiet IO wait")
        if vt.outcome(reader) != vt.OUTCOME_CANCELLED:
            raise RuntimeError("quiet reader was not cancelled")
        print("PCC_MIXED_TIMER_IO_OK")
    finally:
        vt.tcp_close(listener)


main()
