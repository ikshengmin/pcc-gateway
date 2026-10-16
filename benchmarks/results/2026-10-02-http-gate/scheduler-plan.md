# Persistent-carrier event-driven wait proposal

Source review only, 2026-10-02. No core edit, native execution or measured
performance attribution is claimed. File hashes are in `scheduler-sources.json`.
The source is the canonical adjacent pcc tree; compare these identities before
implementation against the coordinator's next immutable snapshot.

## Exact owners and current paths

- `pcc/runtime/py/py_virtual_thread_runtime.py`
  - `_persistent_carrier_worker`: calls `py_virtual_thread_run_once` for every
    resumed task, then `pcc_cond_timedwait_ms(..., 1)` when idle
  - `py_virtual_thread_run_once`: `poll_timers`, `poll_io(0)`, `_run_ready_step`
  - `py_virtual_thread_run_until_idle`: already batches timer/IO observation
    around a sampled ready count; on an empty ready queue with registered IO it
    calls `poll_io(-1)`. This stepping driver must retain its public behavior
  - `_enqueue`, `_ready_commit`, `_scheduler_signal`: publish a rooted ready
    node under the scheduler mutex, then signal only the scheduler condition
  - `_timer_add` / `_timer_cancel`: own the sorted timer list and scheduler
    root handles. They currently do not notify an IO waiter when a deadline
    changes. `_timer_add` is linear insertion, not the historical C heap
  - `py_virtual_thread_poll_io`: owns the single `wait_active` election,
    split wait preparation, mutex release around the syscall and finish/rearm
    under the mutex. It has no ready-queue/stop predicate for indefinite waits
    and currently excludes the ordinary sleep-timer list from its deadline
  - `_io_refresh_registered`, `_io_close_waiters_locked`: update aggregate
    one-shot registrations and interrupt an active kernel wait
  - `carrier_pool_stop`: publish stop, interrupt and broadcast, join every
    carrier, then dispose the waitset. Parked IO roots survive stop/restart
- `pcc/runtime/py/freestanding_io_waitset.py`
  - `wait_prepare` allocates raw scratch and records one absolute deadline
  - `wait_block` performs epoll/kevent outside the scheduler mutex and retries
    EINTR against the same absolute monotonic deadline
  - `wait_finish` rejects stale FD-generation tokens, drains the interrupt,
    consumes events and expires IO deadlines; scheduler code then rearms
  - `interrupt` uses retained/coalesced eventfd or EVFILT_USER notifications
  - `_effective_deadline` takes the minimum IO deadline, but returns `now`
    when no user FD is live, even when the caller requested an infinite wait
- `pcc/runtime/py/freestanding_thread_kernel_pthread.py`
  - `pcc_thread_safepoint` owns parked-thread/epoch accounting
  - `pcc_stop_the_world` publishes the stop then waits on the world condition
    until every other registered thread parks. It cannot currently wake an
    arbitrary registered thread blocked forever in epoll or a scheduler cond
  - `_scheduler_lock` in the scheduler brackets its mutex with no-park depth.
    No thread may park at a safepoint while holding that scheduler mutex
- `pcc/runtime/py/py_threading.py::_wait_parkable` documents this same STW
  hazard and uses a bounded wait/drop-mutex/safepoint/relock sequence

## Why replacing 1 ms with an infinite wait is wrong

1. A new runnable task only notifies the condition; the sole carrier could
   remain blocked in epoll forever
2. A newly earlier sleep timer cannot shorten an already prepared IO wait
3. Timer-only/no-FD idle work would spin because the waitset forces `now`
4. Calling `poll_io(-1)` after an unlocked empty-queue check races a concurrent
   enqueue; the empty predicate and publication of wait ownership must share
   the scheduler lock
5. An otherwise idle registered carrier can prevent GC stop-the-world forever
6. Removing the timeout for follower condition waiters has the same GC hazard

Unregistering carriers while they wait would lose thread/exception/root
ownership. Disabling collection or retaining a foreign-address lease across
all idle waits would weaken GC behavior. Neither is an acceptable workaround.

## Bounded implementation order

### A. Isolate ready-batch amortization first

After the native HTTP baseline works, measure and then change only the
persistent carrier's ready-work loop to reuse the existing `_run_ready_step`
and sampled-ready-count technique. Observe timers/IO once per bounded ready
batch, retain a finite fairness budget, and stop early when a competing carrier
consumes the sampled work. Recheck stop and errors at batch boundaries.

Do not change idle waiting, root transfers, FD-generation handling or the public
`run_once` stepping contract in this experiment. Polling frequency may improve
without pretending that event-driven idle readiness is complete. Keep a generic
bounded batch policy; measure its latency/fairness before selecting its budget.

### B. Supply the missing GC wake handoff

Smallest missing reusable primitive: a thread-kernel registration/lifetime
contract for a nonallocating subsystem wake notifier on a new STW epoch. The
scheduler notifier must wake its condition followers and its single IO owner
using existing broadcast + eventfd/EVFILT_USER primitives.

Required lock ordering and race contract:

1. STW publishes owner/epoch/stop under the world mutex
2. It must release the world mutex before invoking a scheduler notifier that
   acquires the scheduler mutex. Never call a scheduler-lock-taking callback
   while holding the world mutex: scheduler no-park/registration paths can
   reach the world mutex in the opposite direction
3. The notifier obtains the scheduler mutex, interrupts the prepared kernel
   wait and broadcasts the scheduler condition, then releases it
4. Before waiting, a carrier checks stop/ready/elected-waiter predicates under
   that same scheduler mutex. A stop published before the check prevents the
   wait. A stop after the check cannot notify until `cond_wait` atomically
   releases the mutex; the notification therefore cannot be lost. Eventfd
   retains a notification that arrives before actual epoll entry
5. Woken carriers release the scheduler mutex and enter the existing safepoint
   protocol before inspecting managed continuation state
6. STW reacquires the world mutex and waits for the existing parked count.
   Concurrent/nested STW callers must preserve current epoch/owner/depth rules
7. Notifier installation/removal needs explicit lifetime serialization with
   pool start/stop and callback-in-flight completion. Its context must consist
   only of stable raw scheduler state, never a borrowed managed object

This is a proposal for a generic runtime owner, not an app hook or signal-handler
safepoint. It requires thread-kernel/GC review before implementation. No existing
primitive was found that safely supplies this handoff by itself.

### C. Unify scheduler wake publication and deadlines

- Extend the scheduler's one notification owner to signal runnable followers
  and interrupt a prepared IO waiter. Publish the ready node/root first under
  the mutex; never roll back an already observable root on an interrupt error
- Notify when timer insertion advances the earliest deadline, and when timer
  cancellation changes the current idle predicate. Do not leave an obsolete
  far-future deadline sleeping the only carrier
- Compute the idle wait deadline as the minimum ordinary timer deadline and
  IO deadlines while holding the scheduler mutex. Preserve monotonic absolute
  deadlines across EINTR
- Keep one waitset owner. Other idle carriers use a predicate-checked condition
  wait once the GC wake handoff is available. On owner completion/error, wake
  followers so ownership can pass without spinning or losing queued work
- Provide a waitset-owned explicit idle-wait preparation mode that may wait on
  its interrupt channel even with zero user FDs. Preserve existing public
  no-registration/nonblocking semantics rather than relying on caller writes
  into undocumented batch offsets
- Preserve explicit poll fallback. It lacks a live interruptible backend and
  must remain separately labeled; do not call it event-driven or silently use
  it for a requested epoll/kqueue performance claim
- Stop/restart keeps existing interrupt -> join -> dispose ordering and the
  durable IO-root list. Preparation/block/finish scratch ownership must be
  exactly once on every failure path

## Deterministic regressions and execution sequence

Extend existing tests rather than create a second scheduler or waitset model:

- `tests/python/gc_production_contract/test_vthread_io_waitset_runtime.py`
  already covers live registration/cancel interrupt, same-FD waiters, GC roots,
  parked-IO stop/restart and exact wait-owner state
- `tests/python/test_freestanding_io_waitset.py` already splits
  prepare/block/finish and checks durable interrupts before/after kernel entry
- `tests/python/test_virtual_thread_pcc_py_carriers.py` owns persistent-carrier,
  bounded-steal and pin metrics; its source-text assertion requiring a timed
  wait is not evidence of the desired idle contract
- `tests/python/test_vthread_timer_heap_scheduler.py` exercises ordering/root
  semantics; its historical C-heap description is not the current pcc-Python
  timer implementation

Add narrowly scoped real-native probes with atomic/condition barriers, using
`io_wait_active` as an observed ownership barrier. Wall-clock timeouts are only
watchdogs, not the mechanism used to manufacture the race:

1. **Ready publish before/after wait entry:** arm a quiet FD indefinitely,
   observe prepared ownership, enqueue an unrelated runnable task from another
   thread without making the FD ready; task must run exactly once. Repeat at
   the low-level prepare-before-block boundary to prove retained wake delivery
2. **Earlier timer:** arm a far-future wait, publish a newly earlier timer,
   observe the old wait interrupt and timer completion without an FD event.
   Cancel the old head and verify no stale wake/task; check zero timer/ready roots
3. **Timer-only/no-FD idle:** prove it blocks until timer or external ready work,
   does not depend on adding a dummy application socket, and leaves no root
4. **Single IO owner/multiple followers:** park multiple carriers, add one and
   then multiple runnable tasks, prove exactly-once execution and bounded steal
   accounting; terminate/re-elect the current waiter without stranding followers
5. **FD cancellation/reuse:** cancel during a live wait, close and reuse its
   numeric FD, then deliver a stale prepared token; only the new generation may
   resume. Preserve aggregate same-FD readiness and post-result rearm
6. **STW while all carriers idle:** trigger each collecting GC backend while
   the IO leader and condition followers are blocked. Test stop published both
   before and after wait registration/preparation, and while the scheduler
   mutex is held. Collection must finish, then runnable work must still execute
7. **Relocation through idle waits:** retain objects only through timer, IO and
   join roots; collect under GC3/4, then resume and check updated object identity
   and contents, including exception/finally state and exactly-once cleanup
8. **Shutdown/restart:** stop an idle pool with no FDs; stop with parked FDs;
   stop while a wake is in flight; restart from the same durable roots. Join
   counts must match, wait_active must be zero before dispose, resources must
   not be reused while callbacks/wait batches still reference them
9. **Fault paths:** fail wait scratch allocation before consuming any kernel
   event, fail registration/interrupt/rearm, and fail join. Verify the existing
   fail-closed/retryable state retains the right roots and never reports success
10. **Fairness for A:** a yield/requeue flood plus an independent timer and ready
    FD must complete within bounded scheduling rounds; exercise >one batch and
    multiple carriers, then compare exact child counts to the unbatched control

Existing tests currently build some C probes with host cc and may provision a
runtime. Do not invoke those fixtures blindly: use the coordinator's frozen
threaded archive and explicitly owned compiler path, with core's watchdog and
performance lock. Host/source tests and external-C reference probes remain
separate from current-pcc1 emitted execution. Run targeted shapes first, then
GC0–4 and the real HTTP failure/drain workload; broad qualification follows only
a stable source and successful focused gates.

## Mechanism impact to measure, not promised speedup

For S ready resumes in batches of B, timer/IO observation calls can decrease
from S toward ceil(S/B); queue dequeue/root transfers remain per resume. A live
listener means the current HTTP carrier normally cannot use the no-FD fast
return, so it currently reaches the IO wait preparation/syscall path repeatedly.
The improvement ceiling is the measured share of those owners, not B-fold
end-to-end throughput.

Event-driven idle waiting can remove approximately 1,000 timeout wakeups per
idle carrier per second, while retaining actual task/IO/timer/GC/stop events.
This does not remove `GatewayServer.run`'s independent control polling
(`control_poll_ms`, 5 ms in this experiment). A fully quiet server needs a
separate gateway process-control notification design; scheduler changes cannot
honestly claim to eliminate that remaining loop.

Use uninstrumented rotating same-run native/asyncio HTTP arms for QPS/latency and
wait4 CPU/RSS. If native sampling is unavailable on this Linux host, retain that
limit and add a separately receipted diagnostic attribution run before choosing
further owners. Sorted timer insertion and permanent effect-counter traffic
are source-level candidates only; do not optimize either from historical
profiles or speculative percentages.

## Existing mixed timer/IO liveness risk

The same missing ordinary-timer deadline affects the *existing*
`run_until_idle` path, before any proposed persistent-carrier optimization.
When a quiet FD waiter and a sleep timer are both parked, its unconditional
`poll_io(-1)` can sleep past the timer forever because only IO deadlines enter
the waitset. The gateway TCP echo fixture's delayed-client/readable-server
shape appears to reach it. This is a source-level inference, not yet executed.
`mixed_timer_io_probe.py` is a minimal native reproducer prepared for an
approved compile and five-second execution watchdog; no unrelated peer or
sleeping host process can make the quiet listener readable. Its timer alone
must resume and cancel the FD waiter. Do not mistake a timeout for performance
or work around it by injecting artificial network traffic.
