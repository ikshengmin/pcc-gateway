# Timer wake publication and caller failure semantics

The initial source-only candidate returned -1 after publishing a rooted timer
when the kernel interrupt failed. It was rejected before a test/build because
its ABI callers can continue after catching the error. The original candidate
hash and patch are retained in `candidate-source.json` and
`scheduler-candidate.patch`; they are not the implemented proposal.

`_timer_add` has exactly one direct caller: `py_virtual_thread_sleep`.
That ABI reaches three public/compiler routes:

1. `vt.sleep_current`: native lowering checks a negative return and raises
   RuntimeError through the ordinary handler/finally path before yielding
2. `vt.sleep(target, delay)`: the existing lowering drops the raw return code.
   Changing that separate API/compiler behavior is outside this runtime patch
3. `py_threading._condition_vm_park`: timed Condition entry and resume use
   `py_virtual_thread_sleep`. Initial `_condition_wait` removes its Condition
   FIFO node when parking fails; `condition_wait_resume` also cancels its timer

Therefore a failed registration must not leave a newly armed timer that can
resume a handler after its error was caught or after its Condition FIFO node
was retired. Failure must preserve any previous wait and the caller's state.

The corrected candidate does this under the existing scheduler mutex:

- Determine whether the new deadline would advance the ordinary timer head
- If a kernel wait is active, issue its retained interrupt before any mutation
- If interrupt fails, return -1 with task, old timer and IO owner untouched
- Reserve the new timer node/root before retiring the old timer. Allocation or
  root-registration failure after a successful wake is a harmless notification;
  no new timer is visible, and the old wait remains valid
- Publish the new timer/state only after those operations succeed
- `py_virtual_thread_sleep` removes an old IO wait only after timer commit
- A wait owner cannot finish the wake before publication/failure is settled:
  its `wait_finish` path must reacquire the same scheduler mutex
- Existing terminal completion/failure and explicit timer cancellation retire
  only committed timers; no extra cleanup obligation is imposed on callers

The 11 host cases execute the production function bodies, including the actual
Condition-to-sleep call edge. They check timeout minima, preparation before/after
an earlier timer, unchanged caller state on interrupt/allocation/root failure,
raw-node release exactly once when registration fails, no new root publication,
and source lock ordering. They passed in 1.76 seconds under the approved
120-second / 1-GiB watchdog. This is model/source evidence, not native emitted
execution. Runtime IR/object emission and the same original native probe against
an updated matching archive remain pending the central gate.

The first runtime-module emission completed, but post-emission inspection found
strict no-libpython stubs for `py_virtual_thread_poll_io` and `_checked`.
`scheduler-emission.json` is marked `EMITTED_WITH_STUBS_NOT_QUALIFIED`. The
canonical source input was outside the frozen compiler's runtime directory;
`pipeline.py` grants manual runtime ABI exports and suppresses implicit roots
only when its selected runtime-directory predicate matches. This replay setup
did not satisfy that identity boundary. The helper emitted, but the actual
polling path did not. No semantic or native qualification follows from the
object-emission exit code. A coherent source-overlay replay remains required;
the candidate core source and original native failure program are unchanged.

The subsequent coherent v10 runtime preserves the exact candidate source hash
`245638f70a83ee149ec88a5a8d1dc9f9ab4ce60aa376f666c9bb3d6c9cd059a2`.
Its emitted poll body contains the inlined timer-deadline computation passed to
`pcc_io_waitset_wait_prepare`, with no strict stubs. The unchanged native probe
then passed GC0–4; see `v10-native-receipt.json` and `v10-run-original.py`.
This supersedes the mis-scoped emission as acceptance evidence without erasing
that failed preparation. Full concurrent fault injection remains a separate
future gate; host injected-failure models are not relabeled native evidence.
