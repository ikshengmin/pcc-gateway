; ModuleID = "py_virtual_thread_runtime"
target triple = "x86_64-unknown-linux-gnu"
target datalayout = ""




























































































































































































































































































































































































































































































































































































































































































































































































































































































@.modvar.py_virtual_thread_runtime.__pcc_runtime_port__ = global i1 1
@.modvar.py_virtual_thread_runtime.__pcc_runtime_port___initialized = global i1 0
@.cpy.modref.PCC_VTHREAD_CHANNEL_KIND_CORE = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_KIND_RECEIVER = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_KIND_SENDER = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_MAX_CAPACITY = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_MODE_MPSC = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_MODE_ONESHOT = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_RECV_RECEIVER_CLOSED = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_RECV_SENDER_CLOSED = internal global ptr null
@.cpy.modref.PCC_VTHREAD_CHANNEL_RECV_VALUE = internal global ptr null
@.cpy.modref.PCC_VTHREAD_WAIT_CHANNEL_RECV = internal global ptr null
@.cpy.modref.PCC_VTHREAD_WAIT_CHANNEL_SELECT2 = internal global ptr null
@.cpy.modref.PCC_VTHREAD_WAIT_CHANNEL_SEND = internal global ptr null
@.cpy.modref.PY_TYPE_CONTINUATION = internal global ptr null
@.cpy.modref.PY_TYPE_GEN = internal global ptr null
@.cpy.modref.PY_TYPE_VTHREAD_CHANNEL = internal global ptr null
@.cpy.modref.PY_TYPE_VIRTUAL_THREAD = internal global ptr null
@pcc_vthread_ready_head_py = global ptr null
@pcc_vthread_ready_tail_py = global ptr null
@pcc_vthread_ready_free_py = global ptr null
@pcc_vthread_timer_head_py = global ptr null
@pcc_vthread_timer_free_py = global ptr null
@pcc_vthread_join_free_py = global ptr null
@pcc_vthread_join_free_count_py = global i64 0
@pcc_vthread_channel_free_py = global ptr null
@pcc_vthread_channel_free_count_py = global i64 0
@pcc_vthread_io_head_py = global ptr null
@pcc_vthread_io_free_py = global ptr null
@pcc_vthread_io_resource_head_py = global ptr null
@pcc_vthread_io_resource_generation_py = global i64 0
@pcc_vthread_ready_count_py = global i64 0
@pcc_vthread_io_count_py = global i64 0
@pcc_vthread_ready_alloc_py = global i64 0
@pcc_vthread_ready_reuse_py = global i64 0
@pcc_vthread_ready_cached_py = global i64 0
@pcc_vthread_timer_alloc_py = global i64 0
@pcc_vthread_timer_reuse_py = global i64 0
@pcc_vthread_timer_cached_py = global i64 0
@pcc_vthread_io_alloc_py = global i64 0
@pcc_vthread_io_reuse_py = global i64 0
@pcc_vthread_io_cached_py = global i64 0
@pcc_vthread_waiter_alloc_py = global i64 0
@pcc_vthread_waiter_reuse_py = global i64 0
@pcc_vthread_waiter_cached_py = global i64 0
@pcc_vthread_pin_depth_py = global i64 0
@pcc_vthread_pin_events_py = global i64 0
@pcc_vthread_pin_reason_dropped_py = global i64 0
@pcc_vthread_pin_reason_hashes_py = global [32 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]
@pcc_vthread_pin_reason_events_py = global [32 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]
@pcc_vthread_effect_buffer_py = global ptr null
@pcc_vthread_effect_count_py = global i64 0
@pcc_vthread_effect_dropped_py = global i64 0
@pcc_current_virtual_thread_py = thread_local global ptr null
@pcc_current_virtual_thread_carrier_py = thread_local global i32 -1
@pcc_vthread_waitset_py = global [11 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]
@pcc_vthread_waitset_ready_py = global i32 0
@pcc_vthread_waitset_backend_py = global i32 0
@pcc_vthread_wait_active_py = global i32 0
@pcc_vthread_scheduler_mutex_bits_py = global i64 0
@pcc_vthread_scheduler_cond_bits_py = global i64 0
@pcc_vthread_carrier_heads_py = global [64 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]
@pcc_vthread_carrier_tails_py = global [64 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]
@pcc_vthread_carrier_queue_count_py = global i64 0
@pcc_vthread_next_carrier_enqueue_py = global i64 0
@pcc_vthread_carrier_count_py = global i64 1
@pcc_vthread_carrier_steal_count_py = global i64 0
@pcc_vthread_carrier_failures_py = global i64 0
@pcc_vthread_bounded_pool_running_py = global i64 0
@pcc_vthread_persistent_pool_running_py = global i64 0
@pcc_vthread_persistent_pool_stop_py = global i64 0
@pcc_vthread_persistent_pool_failures_py = global i64 0
@pcc_vthread_persistent_carrier_count_py = global i64 0
@pcc_vthread_persistent_joined_count_py = global i64 0
@pcc_vthread_persistent_cleanup_active_py = global i64 0
@pcc_vthread_persistent_handles_py = global ptr null
@pcc_vthread_persistent_args_py = global ptr null
@pcc_vthread_effect_handlers = global [512 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]
@pcc_vthread_effect_handler_ctxs = global [512 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]
@pcc_vthread_effect_handler_count = global [1 x i64] [i64 0]
@.pcc.gc.frame.map.borrowed.1 = internal constant i32 -1
@py_None = external constant ptr
@.pcc.gc.frame.map.1 = internal constant i32 1
@unsafe.cstr.247 = internal constant [31 x i8] c"\6F\62\6A\65\63\74\20\69\73\20\6E\6F\74\20\61\20\76\69\72\74\75\61\6C\20\74\68\72\65\61\64\00"
@.cpy.attr.__ne__ = internal constant [7 x i8] c"\5F\5F\6E\65\5F\5F\00"
@unsafe.cstr.304 = internal constant [31 x i8] c"\6F\62\6A\65\63\74\20\69\73\20\6E\6F\74\20\61\20\76\69\72\74\75\61\6C\20\74\68\72\65\61\64\00"
@.strict.nolib.msg.1 = internal constant [70 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\65\63\6B\65\64\00"
@.exc.msg.2 = internal constant [17 x i8] c"\64\69\76\69\73\69\6F\6E\20\62\79\20\7A\65\72\6F\00"
@.cpy.attr.__eq__ = internal constant [7 x i8] c"\5F\5F\65\71\5F\5F\00"
@.strict.nolib.msg.3 = internal constant [76 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\6A\6F\69\6E\5F\77\61\6B\65\5F\61\6C\6C\00"
@.strict.nolib.msg.4 = internal constant [81 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\6A\6F\69\6E\5F\75\6E\6C\69\6E\6B\5F\77\61\69\74\65\72\00"
@.strict.nolib.msg.5 = internal constant [83 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\76\61\6C\69\64\5F\6F\62\6A\65\63\74\00"
@.strict.nolib.msg.6 = internal constant [75 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\63\6F\72\65\00"
@.strict.nolib.msg.7 = internal constant [89 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\64\65\74\61\63\68\5F\77\61\69\74\5F\6C\6F\63\6B\65\64\00"
@.strict.nolib.msg.8 = internal constant [94 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\74\65\72\6D\69\6E\61\6C\5F\63\6C\65\61\6E\75\70\5F\6C\6F\63\6B\65\64\00"
@.strict.nolib.msg.9 = internal constant [84 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\77\61\6B\65\5F\72\65\63\76\5F\61\72\6D\00"
@.strict.nolib.msg.10 = internal constant [86 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\77\61\6B\65\5F\73\65\6E\64\65\72\5F\61\72\6D\00"
@.strict.nolib.msg.11 = internal constant [82 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\74\61\6B\65\5F\73\65\6E\64\65\72\00"
@.strict.nolib.msg.12 = internal constant [95 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\6D\61\79\62\65\5F\77\61\6B\65\5F\73\65\6E\64\65\72\5F\63\6C\6F\73\65\64\00"
@.strict.nolib.msg.13 = internal constant [83 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\65\6E\64\70\6F\69\6E\74\5F\6E\65\77\00"
@.cpy.attr.__lt__ = internal constant [7 x i8] c"\5F\5F\6C\74\5F\5F\00"
@unsafe.cstr.4059 = internal constant [47 x i8] c"\63\68\61\6E\6E\65\6C\20\63\61\70\61\63\69\74\79\20\6D\75\73\74\20\62\65\20\62\65\74\77\65\65\6E\20\31\20\61\6E\64\20\31\30\34\38\35\37\36\00"
@.strict.nolib.msg.14 = internal constant [79 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\70\61\69\72\5F\6E\65\77\00"
@.strict.nolib.msg.15 = internal constant [92 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\6D\70\73\63\00"
@.strict.nolib.msg.16 = internal constant [95 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\6F\6E\65\73\68\6F\74\00"
@unsafe.cstr.4534 = internal constant [39 x i8] c"\73\65\6E\64\65\72\5F\63\6C\6F\6E\65\20\72\65\71\75\69\72\65\73\20\61\20\63\68\61\6E\6E\65\6C\20\73\65\6E\64\65\72\00"
@unsafe.cstr.4580 = internal constant [33 x i8] c"\6F\6E\65\73\68\6F\74\20\73\65\6E\64\65\72\73\20\63\61\6E\6E\6F\74\20\62\65\20\63\6C\6F\6E\65\64\00"
@unsafe.cstr.4723 = internal constant [37 x i8] c"\63\61\6E\6E\6F\74\20\63\6C\6F\6E\65\20\61\20\63\6C\6F\73\65\64\20\63\68\61\6E\6E\65\6C\20\73\65\6E\64\65\72\00"
@.strict.nolib.msg.17 = internal constant [100 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\73\65\6E\64\65\72\5F\63\6C\6F\6E\65\00"
@.strict.nolib.msg.18 = internal constant [88 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\72\65\63\76\5F\72\65\61\64\79\5F\73\74\61\74\75\73\00"
@.strict.nolib.msg.19 = internal constant [79 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\72\65\63\76\5F\6E\6F\77\00"
@.strict.nolib.msg.20 = internal constant [98 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\73\65\6E\64\5F\62\65\67\69\6E\00"
@.strict.nolib.msg.21 = internal constant [98 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\72\65\63\76\5F\62\65\67\69\6E\00"
@.cpy.attr.__gt__ = internal constant [7 x i8] c"\5F\5F\67\74\5F\5F\00"
@.strict.nolib.msg.22 = internal constant [83 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\63\68\61\6E\6E\65\6C\5F\72\65\73\75\6C\74\5F\74\75\70\6C\65\00"
@.strict.nolib.msg.23 = internal constant [100 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\63\6C\6F\73\65\5F\73\65\6E\64\65\72\00"
@.strict.nolib.msg.24 = internal constant [102 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\63\6C\6F\73\65\5F\72\65\63\65\69\76\65\72\00"
@.strict.nolib.msg.25 = internal constant [101 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\5F\73\65\6C\65\63\74\32\5F\62\65\67\69\6E\00"
@.strict.nolib.msg.26 = internal constant [75 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\64\65\71\75\65\75\65\5F\66\72\6F\6D\00"
@unsafe.cstr.8217 = internal constant [23 x i8] c"\50\43\43\5F\56\54\48\52\45\41\44\5F\49\4F\5F\42\41\43\4B\45\4E\44\00"
@unsafe.cstr.8224 = internal constant [5 x i8] c"\70\6F\6C\6C\00"
@unsafe.cstr.8228 = internal constant [7 x i8] c"\6B\71\75\65\75\65\00"
@unsafe.cstr.8232 = internal constant [6 x i8] c"\65\70\6F\6C\6C\00"
@.strict.nolib.msg.27 = internal constant [86 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\69\6F\5F\63\6C\6F\73\65\5F\77\61\69\74\65\72\73\5F\6C\6F\63\6B\65\64\00"
@.strict.nolib.msg.28 = internal constant [83 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\6E\65\77\00"
@.strict.nolib.msg.29 = internal constant [91 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\70\6F\6C\6C\5F\74\69\6D\65\72\73\00"
@unsafe.cstr.10244 = internal constant [27 x i8] c"\54\43\50\20\64\65\73\63\72\69\70\74\6F\72\20\69\73\20\6E\6F\74\20\6F\70\65\6E\00"
@unsafe.cstr.10281 = internal constant [27 x i8] c"\54\43\50\20\64\65\73\63\72\69\70\74\6F\72\20\69\73\20\6E\6F\74\20\6F\70\65\6E\00"
@unsafe.cstr.10300 = internal constant [26 x i8] c"\54\43\50\20\64\65\73\63\72\69\70\74\6F\72\20\77\61\73\20\63\6C\6F\73\65\64\00"
@unsafe.cstr.10333 = internal constant [26 x i8] c"\54\43\50\20\64\65\73\63\72\69\70\74\6F\72\20\77\61\73\20\63\6C\6F\73\65\64\00"
@unsafe.cstr.10486 = internal constant [26 x i8] c"\54\43\50\20\64\65\73\63\72\69\70\74\6F\72\20\77\61\73\20\63\6C\6F\73\65\64\00"
@.strict.nolib.msg.30 = internal constant [87 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\70\6F\6C\6C\5F\69\6F\00"
@.strict.nolib.msg.31 = internal constant [77 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\5F\72\75\6E\5F\72\65\61\64\79\5F\73\74\65\70\00"
@.strict.nolib.msg.32 = internal constant [86 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\63\61\6E\63\65\6C\00"
@unsafe.cstr.14049 = internal constant [19 x i8] c"\6A\6F\69\6E\20\68\61\73\20\6E\6F\20\74\61\72\67\65\74\00"
@unsafe.cstr.14076 = internal constant [24 x i8] c"\6A\6F\69\6E\20\74\61\72\67\65\74\20\69\73\20\6E\6F\74\20\64\6F\6E\65\00"
@unsafe.cstr.14184 = internal constant [25 x i8] c"\76\69\72\74\75\61\6C\20\74\68\72\65\61\64\20\63\61\6E\63\65\6C\6C\65\64\00"
@unsafe.cstr.14186 = internal constant [27 x i8] c"\6A\6F\69\6E\20\74\61\72\67\65\74\20\68\61\73\20\6E\6F\20\6F\75\74\63\6F\6D\65\00"
@.strict.nolib.msg.33 = internal constant [91 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\6A\6F\69\6E\5F\72\65\73\75\6C\74\00"
@.strict.nolib.msg.34 = internal constant [88 x i8] c"\6E\6F\2D\6C\69\62\70\79\74\68\6F\6E\20\66\75\6E\63\74\69\6F\6E\20\75\6E\61\76\61\69\6C\61\62\6C\65\3A\20\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\5F\64\65\61\6C\6C\6F\63\5F\76\74\68\72\65\61\64\5F\63\68\61\6E\6E\65\6C\00"
@.pcc.module.init.py_virtual_thread_runtime = internal global i32 0
@.pystr.obj.1 = internal global { i64, i32, i32, i64, i64, i64, [26 x i8] } { i64 1, i32 4, i32 1, i64 25, i64 -1, i64 -1, [26 x i8] c"\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\00" }
@.pcc.import.binding.module.py_virtual_thread_runtime = internal constant [26 x i8] c"\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\00"
@.pyattr.__name__ = internal constant [9 x i8] c"\5F\5F\6E\61\6D\65\5F\5F\00"
@.pystr.obj.2 = internal global { i64, i32, i32, i64, i64, i64, [1 x i8] } { i64 1, i32 4, i32 1, i64 0, i64 -1, i64 -1, [1 x i8] c"\00" }
@.pyattr.__package__ = internal constant [12 x i8] c"\5F\5F\70\61\63\6B\61\67\65\5F\5F\00"
@.pystr.obj.3 = internal global { i64, i32, i32, i64, i64, i64, [80 x i8] } { i64 1, i32 4, i32 1, i64 79, i64 -1, i64 -1, [80 x i8] c"\2F\77\6F\72\6B\73\70\61\63\65\2F\73\63\72\61\74\63\68\2F\63\65\32\35\34\63\30\61\30\39\31\30\2F\70\63\63\2F\70\63\63\2F\72\75\6E\74\69\6D\65\2F\70\79\2F\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\00" }
@.pyattr.__file__ = internal constant [9 x i8] c"\5F\5F\66\69\6C\65\5F\5F\00"
@.pystr.obj.4 = internal global { i64, i32, i32, i64, i64, i64, [780 x i8] } { i64 1, i32 4, i32 1, i64 779, i64 -1, i64 -1, [780 x i8] c"\56\69\72\74\75\61\6C\2D\74\68\72\65\61\64\20\73\63\68\65\64\75\6C\65\72\20\61\75\74\68\6F\72\65\64\20\69\6E\20\70\63\63\2D\50\79\74\68\6F\6E\2E\0A\0A\54\68\69\73\20\69\73\20\74\68\65\20\70\72\6F\64\75\63\74\69\6F\6E\20\6F\77\6E\65\72\20\66\6F\72\20\74\68\65\20\62\6F\75\6E\64\65\64\20\63\61\72\72\69\65\72\20\73\63\68\65\64\75\6C\65\72\2E\20\20\51\75\65\75\65\2C\20\74\69\6D\65\72\2C\0A\61\6E\64\20\49\4F\20\6E\6F\64\65\73\20\61\72\65\20\72\61\77\20\61\6C\6C\6F\63\61\74\69\6F\6E\20\72\65\63\6F\72\64\73\20\77\68\6F\73\65\20\6F\62\6A\65\63\74\20\73\6C\6F\74\73\20\61\72\65\20\72\65\67\69\73\74\65\72\65\64\20\77\69\74\68\0A\74\68\65\20\73\68\61\72\65\64\20\47\43\20\72\6F\6F\74\20\72\65\67\69\73\74\72\79\2E\20\20\54\68\65\20\6D\6F\64\75\6C\65\20\72\65\75\73\65\73\20\74\68\65\20\70\63\63\2D\50\79\74\68\6F\6E\20\74\68\72\65\61\64\20\6B\65\72\6E\65\6C\2C\0A\77\61\69\74\73\65\74\2C\20\61\6E\64\20\70\6C\61\74\66\6F\72\6D\20\63\6C\6F\63\6B\20\41\42\49\73\3B\20\6E\6F\20\68\6F\73\74\20\50\79\74\68\6F\6E\20\6F\72\20\43\20\73\63\68\65\64\75\6C\65\72\20\6F\77\6E\73\20\74\68\65\0A\70\6F\6C\69\63\79\2E\0A\0A\54\68\65\20\73\63\68\65\64\75\6C\65\72\20\6B\65\65\70\73\20\61\20\62\61\73\65\6C\69\6E\65\20\63\61\72\72\69\65\72\20\63\6F\75\6E\74\20\6F\66\20\6F\6E\65\20\66\6F\72\20\74\68\65\20\63\61\6C\6C\69\6E\67\20\74\68\72\65\61\64\2C\0A\6D\61\74\63\68\69\6E\67\20\74\68\65\20\43\20\6F\72\61\63\6C\65\20\41\42\49\2E\20\20\41\20\6E\61\74\69\76\65\20\70\6F\6F\6C\20\61\64\64\73\20\61\74\20\6D\6F\73\74\20\36\34\20\63\61\72\72\69\65\72\20\74\68\72\65\61\64\73\2E\0A\52\65\61\64\79\20\77\6F\72\6B\20\69\73\20\64\69\73\74\72\69\62\75\74\65\64\20\6F\76\65\72\20\66\69\78\65\64\20\70\65\72\2D\63\61\72\72\69\65\72\20\71\75\65\75\65\73\2C\20\61\6E\64\20\61\6E\20\65\6D\70\74\79\20\63\61\72\72\69\65\72\0A\63\68\65\63\6B\73\20\65\61\63\68\20\70\65\65\72\20\61\74\20\6D\6F\73\74\20\6F\6E\63\65\20\62\65\66\6F\72\65\20\63\6F\6E\73\75\6C\74\69\6E\67\20\74\68\65\20\69\6E\6A\65\63\74\69\6F\6E\20\71\75\65\75\65\2E\20\20\54\68\65\0A\62\6F\75\6E\64\65\64\20\73\63\61\6E\20\6D\61\6B\65\73\20\77\6F\72\6B\20\73\74\65\61\6C\69\6E\67\20\6F\62\73\65\72\76\61\62\6C\65\20\77\69\74\68\6F\75\74\20\61\6C\6C\6F\77\69\6E\67\20\61\6E\20\75\6E\62\6F\75\6E\64\65\64\0A\73\65\61\72\63\68\20\75\6E\64\65\72\20\74\68\65\20\73\63\68\65\64\75\6C\65\72\20\6D\75\74\65\78\2E\0A\00" }
@.pyattr.__doc__ = internal constant [8 x i8] c"\5F\5F\64\6F\63\5F\5F\00"
@.pcc.assign.binding.module.35 = internal constant [26 x i8] c"\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\00"
@.pyattr.__pcc_runtime_port__ = internal constant [21 x i8] c"\5F\5F\70\63\63\5F\72\75\6E\74\69\6D\65\5F\70\6F\72\74\5F\5F\00"
@.exc.msg.36 = internal constant [50 x i8] c"\4E\6F\20\6D\6F\64\75\6C\65\20\6E\61\6D\65\64\20\27\70\63\63\2E\72\75\6E\74\69\6D\65\2E\70\79\2E\70\79\5F\61\62\69\5F\63\6F\6E\73\74\61\6E\74\73\27\00"
@.tb.func.37 = internal constant [9 x i8] c"\3C\6D\6F\64\75\6C\65\3E\00"
@.tb.file.38 = internal constant [80 x i8] c"\2F\77\6F\72\6B\73\70\61\63\65\2F\73\63\72\61\74\63\68\2F\63\65\32\35\34\63\30\61\30\39\31\30\2F\70\63\63\2F\70\63\63\2F\72\75\6E\74\69\6D\65\2F\70\79\2F\70\79\5F\76\69\72\74\75\61\6C\5F\74\68\72\65\61\64\5F\72\75\6E\74\69\6D\65\2E\70\79\00"
@.tb.source.39 = internal constant [535 x i8] c"\66\72\6F\6D\20\70\63\63\2E\72\75\6E\74\69\6D\65\2E\70\79\2E\70\79\5F\61\62\69\5F\63\6F\6E\73\74\61\6E\74\73\20\69\6D\70\6F\72\74\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4B\49\4E\44\5F\43\4F\52\45\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4B\49\4E\44\5F\52\45\43\45\49\56\45\52\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4B\49\4E\44\5F\53\45\4E\44\45\52\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4D\41\58\5F\43\41\50\41\43\49\54\59\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4D\4F\44\45\5F\4D\50\53\43\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\4D\4F\44\45\5F\4F\4E\45\53\48\4F\54\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\52\45\43\56\5F\52\45\43\45\49\56\45\52\5F\43\4C\4F\53\45\44\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\52\45\43\56\5F\53\45\4E\44\45\52\5F\43\4C\4F\53\45\44\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\5F\52\45\43\56\5F\56\41\4C\55\45\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\57\41\49\54\5F\43\48\41\4E\4E\45\4C\5F\52\45\43\56\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\57\41\49\54\5F\43\48\41\4E\4E\45\4C\5F\53\45\4C\45\43\54\32\2C\20\50\43\43\5F\56\54\48\52\45\41\44\5F\57\41\49\54\5F\43\48\41\4E\4E\45\4C\5F\53\45\4E\44\2C\20\50\59\5F\54\59\50\45\5F\43\4F\4E\54\49\4E\55\41\54\49\4F\4E\2C\20\50\59\5F\54\59\50\45\5F\47\45\4E\2C\20\50\59\5F\54\59\50\45\5F\56\54\48\52\45\41\44\5F\43\48\41\4E\4E\45\4C\2C\20\50\59\5F\54\59\50\45\5F\56\49\52\54\55\41\4C\5F\54\48\52\45\41\44\00"
@.pcc.module.fini.py_virtual_thread_runtime = internal global i32 0
@.pcc.static.literals.init.py_virtual_thread_runtime = internal global i32 0
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_pcc_py_static_literals_py_virtual_thread_runtime, ptr null }]
declare external ptr @pcc_gc_alloc(i64, i32, i32)
declare external i64 @pcc_gc_pointer_is_managed(ptr)
declare external i64 @pcc_gc_pointer_register(ptr)
declare external i64 @pcc_gc_pointer_unregister(ptr)
declare external ptr @pcc_gc_retain(ptr)
declare external void @pcc_gc_release(ptr)
declare external ptr @pcc_gc_retain_known(ptr)
declare external void @pcc_gc_release_known(ptr)
declare external void @pcc_gc_set_known_ref_checks(i64)
declare external void @pcc_debug_check_release(ptr, ptr)
declare external ptr @pcc_gc_load_ptr(ptr, ptr)
declare external ptr @pcc_gc_load_borrowed_ptr(ptr, ptr)
declare external ptr @pcc_gc_resolve_owned_ptr(ptr)
declare external void @pcc_gc_store_ptr(ptr, ptr, ptr)
declare external void @pcc_gc_store_root(ptr, ptr)
declare external void @pcc_gc_note_write_barrier(ptr, ptr)
declare external void @pcc_gc_note_slot_write_barrier(ptr, ptr, ptr)
declare external ptr @pcc_gc_scheduler_root_register_handle(ptr)
declare external void @pcc_gc_scheduler_root_unregister_handle(ptr)
declare external void @pcc_gc_scheduler_root_register(ptr)
declare external void @pcc_gc_scheduler_root_unregister(ptr)
declare external void @pcc_gc_register_continuation_root(ptr, ptr)
declare external ptr @pcc_gc_register_continuation_root_node(ptr, ptr)
declare external void @pcc_gc_unregister_continuation_root_node(ptr)
declare external void @pcc_gc_unregister_continuation_root(ptr)
declare external i64 @pcc_gc_trace_continuation_roots()
declare external i64 @pcc_gc_rewrite_continuation_roots()
declare external ptr @pcc_gc_scheduler_queue_new()
declare external void @pcc_gc_scheduler_queue_free(ptr)
declare external i64 @pcc_gc_scheduler_queue_push(ptr, ptr)
declare external i64 @pcc_gc_scheduler_queue_pop_into(ptr, ptr)
declare external i64 @pcc_gc_scheduler_queue_len(ptr)
declare external void @pcc_gc_frame_enter(ptr, ptr)
declare external void @pcc_gc_frame_leave(ptr)
declare external void @pcc_gc_frame_enter_lifo(ptr, ptr)
declare external void @pcc_gc_frame_leave_lifo(ptr)
declare external i64 @pcc_gc_consume_precise_stackmap(ptr, i64, i64, ptr, i64, i64)
declare external void @pcc_gc_safepoint()
declare external i64 @pcc_gc_collect(i32)
declare external void @pcc_gc_pin(ptr)
declare external void @pcc_gc_unpin(ptr)
declare external i64 @pcc_gc_foreign_lease_acquire(ptr)
declare external i64 @pcc_gc_foreign_lease_release(ptr, i64)
declare external i64 @pcc_gc_object_is_address_pinned(ptr)
declare external ptr @pcc_gc_take_pinned_slot(ptr, i64)
declare external void @pcc_gc_immortalize(ptr)
declare external i64 @pcc_gc_object_id(ptr)
declare external i64 @py_obj_id(ptr)
declare external ptr @py_sys_stream_object(i64)
declare external i64 @py_print_to_file(ptr, ptr, ptr, ptr, ptr)
declare external ptr @py_call_merge_kwargs_unique(ptr, ptr)
declare external i64 @py_exc_handle_uncaught(ptr)
declare external void @pcc_gc_reset_relocation_set()
declare external i64 @pcc_gc_select_relocation_set(i64)
declare external i64 @pcc_gc_backend4_evacuation_drain(i64)
declare external i64 @pcc_gc_backend4_evacuation_page_drain(i64)
declare external void @pcc_gc_backend4_reseed_plan_probe_config(i64, i64)
declare external i64 @pcc_gc_backend4_reseed_plan_probe_state()
declare external void @pcc_gc_backend3_remembered_scan_probe_config(i64)
declare external void @pcc_gc_backend4_remap_and_retire_unlocked(ptr)
declare external i64 @pcc_gc_backend4_remap_and_retire_stopped_world()
declare external void @pcc_gc_backend4_finish_retained_page_releases(ptr)
declare external void @pcc_gc_backend4_finish_remap_retirement(ptr)
declare external i64 @pcc_gc_relocation_set_contains(ptr)
declare external i64 @pcc_gc_relocation_set_size()
declare external i64 @pcc_gc_install_forwarding(ptr, ptr)
declare external ptr @pcc_gc_relocate_copy(ptr, i64)
declare external i64 @pcc_gc_backend()
declare external void @pcc_py_gc_minor_graph_lock()
declare external void @pcc_py_gc_minor_graph_unlock()
declare external i64 @py_obj_truthy(ptr)
declare external i64 @py_obj_type_tag(ptr)
declare external i64 @py_obj_eq(ptr, ptr)
declare external i64 @py_obj_eq_value(ptr, ptr)
declare external i64 @py_obj_lt(ptr, ptr)
declare external i64 @py_obj_le(ptr, ptr)
declare external i64 @py_obj_gt(ptr, ptr)
declare external i64 @py_obj_ge(ptr, ptr)
declare external i64 @py_int_f64_cmp(ptr, double)
declare external i64 @py_obj_hash(ptr)
declare external void @py_instance_set_field(ptr, i32, ptr)
declare external i64 @pcc_gc_set_backend(i64)
declare external ptr @pcc_gc_backend_name(i64) nounwind readonly willreturn
declare external i64 @pcc_gc_telemetry(i64)
declare external void @pcc_gc_telemetry_reset()
declare external i64 @pcc_gc_step(i64)
declare external i64 @pcc_gc_backend4_verify_no_old_addresses()
declare external i64 @pcc_gc_backend4_fragmentation_score()
declare external i64 @pcc_gc_backend4_forwarding_entries()
declare external i64 @pcc_gc_backend4_stable_id_entries()
declare external i64 @pcc_gc_backend4_generation_barrier_score()
declare external i64 @pcc_gc_backend4_store_buffer_entries()
declare external i64 @pcc_gc_backend4_generation_promotion_score()
declare external i64 @pcc_gc_backend4_evacuation_candidate_score()
declare external i64 @pcc_gc_backend4_evacuated_bytes()
declare external i64 @pcc_gc_backend4_page_policy_score()
declare external i64 @pcc_gc_backend4_large_object_defer_score()
declare external i64 @pcc_gc_backend4_large_object_deferred_bytes()
declare external i64 @pcc_gc_backend4_small_page_candidate_score()
declare external i64 @pcc_gc_backend4_medium_page_candidate_score()
declare external i64 @pcc_gc_backend4_evacuation_candidate_bytes()
declare external i64 @pcc_gc_backend4_small_page_candidate_bytes()
declare external i64 @pcc_gc_backend4_medium_page_candidate_bytes()
declare external i64 @pcc_gc_backend4_evacuation_candidate_zpage_bytes()
declare external i64 @pcc_gc_backend4_small_page_candidate_zpage_bytes()
declare external i64 @pcc_gc_backend4_medium_page_candidate_zpage_bytes()
declare external i64 @pcc_gc_backend4_evacuation_page_candidate_score()
declare external i64 @pcc_gc_backend4_evacuation_page_candidate_bytes()
declare external i64 @pcc_gc_backend4_evacuation_page_dirty_cards()
declare external i64 @pcc_gc_backend4_store_buffer_drain_batches()
declare external i64 @pcc_gc_backend4_store_buffer_drained_entries()
declare external i64 @pcc_gc_backend4_store_buffer_duplicate_skips()
declare external i64 @pcc_gc_backend4_store_buffer_high_water()
declare external i64 @pcc_gc_backend4_page_pressure_score()
declare external i64 @pcc_gc_backend4_store_buffer_owner_fanout_high_water()
declare external i64 @pcc_gc_backend4_store_buffer_owner_count_high_water()
declare external i64 @pcc_gc_backend4_store_buffer_incomplete_drains()
declare external i64 @pcc_gc_backend4_evacuation_incomplete_batches()
declare external i64 @pcc_gc_backend4_store_buffer_batch_capacity()
declare external i64 @pcc_gc_backend4_store_buffer_max_batch_size()
declare external i64 @pcc_gc_backend4_store_buffer_full_batches()
declare external i64 @pcc_gc_backend4_store_buffer_medium_capacity()
declare external i64 @pcc_gc_backend4_store_buffer_medium_pending()
declare external i64 @pcc_gc_backend4_store_buffer_medium_flushes()
declare external i64 @pcc_gc_backend4_store_buffer_medium_flushed_entries()
declare external i64 @pcc_gc_backend4_store_buffer_medium_full_flushes()
declare external i64 @pcc_gc_backend4_store_buffer_cross_thread_medium_flushes()
declare external i64 @pcc_gc_backend4_store_buffer_cross_thread_medium_flushed_entries()
declare external i64 @pcc_gc_backend4_remembered_set_entries()
declare external i64 @pcc_gc_backend4_remembered_set_duplicate_skips()
declare external i64 @pcc_gc_backend4_remembered_set_high_water()
declare external i64 @pcc_gc_backend4_remembered_page_entries()
declare external i64 @pcc_gc_backend4_remembered_page_slot_entries()
declare external i64 @pcc_gc_backend4_remembered_page_high_water()
declare external i64 @pcc_gc_backend4_remembered_page_contains_slot(ptr)
declare external i64 @pcc_gc_backend4_remembered_page_clear_slot(ptr)
declare external i64 @pcc_gc_backend4_zpage_contains_remembered_card(ptr, ptr)
declare external i64 @pcc_gc_backend4_zpage_clear_remembered_card(ptr, ptr)
declare external i64 @pcc_gc_backend4_zpage_count()
declare external i64 @pcc_gc_backend4_zpage_capacity_bytes()
declare external i64 @pcc_gc_backend4_zpage_fragmentation_bytes()
declare external i64 @pcc_gc_backend4_zpage_large_pages()
declare external i64 @pcc_gc_backend4_zpage_used_bytes()
declare external i64 @pcc_gc_backend4_zpage_allocated_bytes()
declare external i64 @pcc_gc_backend4_zpage_reclaimable_gap_bytes()
declare external i64 @pcc_gc_backend4_zpage_span_bytes()
declare external i64 @pcc_gc_backend4_zpage_owner_offset_bytes(ptr)
declare external i64 @pcc_gc_backend4_zpage_owner_size_bytes(ptr)
declare external i64 @pcc_gc_backend4_zpage_owner_span_card(ptr)
declare external i64 @pcc_gc_backend4_zpage_owner_slot_span_card(ptr, ptr)
declare external i64 @pcc_gc_backend4_zpage_register_owner_payload_span(ptr, ptr, i64)
declare external i64 @pcc_gc_backend4_zpage_unregister_owner_payload_span(ptr, ptr)
declare external i64 @pcc_gc_backend4_zpage_retarget_owner_payload_span(ptr, ptr, ptr, i64)
declare external i64 @pcc_gc_backend4_zpage_fragmentation_per_mille()
declare external i64 @pcc_gc_backend4_zpage_policy_score()
declare external i64 @pcc_gc_backend4_zpage_remembered_slots()
declare external i64 @pcc_gc_backend4_zpage_remembered_cards()
declare external i64 @pcc_gc_backend4_zpage_remembered_card_ratio_per_mille()
declare external i64 @pcc_gc_backend4_zpage_dirty_pages()
declare external i64 @pcc_gc_backend4_zpage_fragmented_pages()
declare external i64 @pcc_gc_backend4_zpage_young_pages()
declare external i64 @pcc_gc_backend4_zpage_old_pages()
declare external i64 @pcc_gc_backend4_zpage_free_pages()
declare external i64 @pcc_gc_backend4_zpage_free_capacity_bytes()
declare external i64 @pcc_gc_backend4_zpage_free_span_bytes()
declare external i64 @pcc_gc_backend4_evacuation_efficiency_per_mille()
declare external i64 @pcc_gc_backend4_fragmentation_backlog_bytes()
declare external i64 @pcc_gc_backend4_fragmentation_policy_score()
declare external i64 @pcc_gc_backend4_small_page_limit_bytes()
declare external i64 @pcc_gc_backend4_medium_page_limit_bytes()
declare external i64 @pcc_gc_backend4_large_defer_limit_bytes()
declare external i64 @pcc_gc_backend4_large_object_reconsiderations()
declare external i64 @pcc_gc_backend4_young_object_count()
declare external i64 @pcc_gc_backend4_old_object_count()
declare external i64 @pcc_gc_backend4_young_bytes()
declare external i64 @pcc_gc_backend4_old_bytes()
declare external i64 @pcc_gc_backend4_small_page_object_count()
declare external i64 @pcc_gc_backend4_medium_page_object_count()
declare external i64 @pcc_gc_backend4_large_page_object_count()
declare external i64 @pcc_gc_backend4_small_page_live_bytes()
declare external i64 @pcc_gc_backend4_medium_page_live_bytes()
declare external i64 @pcc_gc_backend4_large_page_live_bytes()
declare external i64 @pcc_gc_backend2_production_score()
declare external i64 @pcc_gc_backend2_worker_buffer_score()
declare external i64 @pcc_gc_backend3_minor_productivity_score()
declare external i64 @pcc_gc_backend3_remembered_update_score()
declare external i64 @pcc_gc_scheduler_root_count()
declare external i64 @pcc_gc_frame_root_slot_count()
declare external i64 @pcc_gc_continuation_root_slot_count()
declare external i64 @pcc_gc_coroutine_root_score()
declare external void @pcc_gc_default_unlink_tracked_node(ptr)
declare external i64 @pcc_gc_tracked_node_pool_cached_count()
declare external void @pcc_gc_tracked_node_pool_drain()
declare external i64 @py_gc_index_insert(ptr, ptr)
declare external ptr @py_gc_index_remove(ptr)
declare external ptr @py_gc_callbacks_list()
declare external void @py_gc_callbacks_append(ptr)
declare external void @py_gc_callbacks_remove(ptr)
declare external i64 @pcc_threads_enabled() nounwind readonly willreturn
declare external i64 @pcc_current_thread_id()
declare external ptr @pcc_current_native_thread_token()
declare external i64 @pcc_refcount_strategy() nounwind readonly willreturn
declare external void @pcc_thread_safepoint()
declare external i64 @pcc_thread_stop_requested_acquire()
declare external void @pcc_thread_no_park_enter()
declare external void @pcc_thread_no_park_exit()
declare external i64 @pcc_thread_no_park_depth()
declare external i64 @pcc_thread_owns_stopped_world()
declare external i64 @pcc_thread_registration_waiter_count()
declare external void @pcc_thread_unregister_current()
declare external i64 @pcc_stop_the_world()
declare external i64 @pcc_resume_world()
declare external i64 @py_threading_get_ident()
declare external ptr @py_threading_current_thread()
declare external ptr @py_threading_lock_new()
declare external i64 @py_threading_lock_acquire(ptr)
declare external i64 @py_threading_lock_acquire_vthread(ptr)
declare external i64 @py_threading_lock_release(ptr)
declare external ptr @py_threading_rlock_new()
declare external i64 @py_threading_rlock_acquire(ptr)
declare external i64 @py_threading_rlock_release(ptr)
declare external ptr @py_threading_event_new()
declare external i64 @py_threading_event_set(ptr)
declare external i64 @py_threading_event_clear(ptr)
declare external i64 @py_threading_event_is_set(ptr)
declare external i64 @py_threading_event_wait(ptr)
declare external i64 @py_threading_event_wait_vthread(ptr)
declare external ptr @py_threading_condition_new(ptr)
declare external i64 @py_threading_condition_acquire(ptr)
declare external i64 @py_threading_condition_release(ptr)
declare external i64 @py_threading_condition_wait(ptr)
declare external i64 @py_threading_condition_wait_vthread(ptr)
declare external i64 @py_threading_condition_wait_timeout(ptr, ptr)
declare external i64 @py_threading_condition_wait_vthread_timeout(ptr, ptr)
declare external i64 @py_threading_condition_wait_resume(ptr)
declare external i64 @py_threading_condition_wait_cancel(ptr)
declare external i64 @py_threading_condition_notify(ptr)
declare external i64 @py_threading_condition_notify_all(ptr)
declare external ptr @py_threading_semaphore_new(i64)
declare external i64 @py_threading_semaphore_acquire(ptr)
declare external i64 @py_threading_semaphore_acquire_vthread(ptr)
declare external i64 @py_threading_semaphore_release(ptr)
declare external ptr @py_threading_thread_new(ptr, ptr)
declare external i64 @py_threading_thread_start(ptr)
declare external i64 @py_threading_thread_join(ptr)
declare external ptr @py_bytes_join(ptr, ptr)
declare external void @pcc_gc_store_root_take(ptr, ptr)
declare external i64 @py_threading_thread_is_alive(ptr)
declare external void @py_incref(ptr)
declare external void @py_decref(ptr)
declare external i64 @pcc_py_type_of(ptr)
declare external ptr @py_bool_from_bit(i32) nounwind readnone willreturn
declare external ptr @py_int_from_i64(i64)
declare external i64 @py_int_value_i64(ptr)
declare external ptr @py_int_from_cstr(ptr, i32)
declare external ptr @py_int_from_cstr_or_raise(ptr, i32)
declare external ptr @py_obj_as_int_object(ptr, i32)
declare external ptr @py_obj_as_int_object_args(ptr, ptr)
declare external i64 @py_int_to_i64(ptr, ptr)
declare external i64 @py_int_to_i64_lane(ptr, ptr)
declare external i64 @py_int_bit_length(ptr)
declare external i64 @py_int_bit_count(ptr)
declare external ptr @py_int_add(ptr, ptr)
declare external ptr @py_int_sub(ptr, ptr)
declare external ptr @py_int_mul(ptr, ptr)
declare external ptr @py_int_floordiv(ptr, ptr)
declare external ptr @py_int_truediv(ptr, ptr)
declare external ptr @py_int_mod(ptr, ptr)
declare external ptr @py_int_pow(ptr, ptr)
declare external ptr @py_int_pow_mod(ptr, ptr, ptr)
declare external ptr @py_int_isqrt(ptr)
declare external ptr @py_obj_min_max(ptr, i64)
declare external i64 @py_tuple_count(ptr, ptr)
declare external i64 @py_tuple_index(ptr, ptr)
declare external i64 @py_tuple_index_range(ptr, ptr, ptr, ptr)
declare external ptr @py_int_neg(ptr)
declare external ptr @py_obj_neg(ptr)
declare external ptr @py_obj_pos(ptr)
declare external ptr @py_obj_invert(ptr)
declare external ptr @py_int_and(ptr, ptr)
declare external ptr @py_int_or(ptr, ptr)
declare external ptr @py_int_xor(ptr, ptr)
declare external ptr @py_int_shl(ptr, ptr)
declare external ptr @py_int_shr(ptr, ptr)
declare external i32 @py_int_cmp(ptr, ptr)
declare external ptr @py_int_format_hex(ptr, i64, i64)
declare external ptr @py_int_format_decimal(ptr, i64, i64, i64)
declare external ptr @py_obj_abs(ptr)
declare external ptr @py_builtin_bin(ptr)
declare external ptr @py_builtin_hex(ptr)
declare external ptr @py_builtin_oct(ptr)
declare external ptr @py_builtin_callable(ptr)
declare external ptr @py_float_from_f64(double)
declare external ptr @py_int_from_f64_exact(double)
declare external i64 @py_float_to_i64_checked(double)
declare external ptr @py_time_sleep(ptr)
declare external double @py_float_to_f64(ptr)
declare external double @py_float_value_of(ptr)
declare external i64 @py_float_is_integer(ptr)
declare external ptr @py_float_fromhex(ptr)
declare external ptr @py_float_add(ptr, ptr)
declare external ptr @py_float_round_ndigits(double, i64)
declare external ptr @py_float_format_fixed(ptr, i64)
declare external ptr @py_complex_new(double, double)
declare external ptr @py_complex_real(ptr)
declare external ptr @py_complex_imag(ptr)
declare external ptr @py_complex_add(ptr, ptr)
declare external ptr @py_complex_sub(ptr, ptr)
declare external ptr @py_complex_mul(ptr, ptr)
declare external ptr @py_complex_div(ptr, ptr)
declare external ptr @py_complex_pow(ptr, ptr)
declare external ptr @py_complex_neg(ptr)
declare external ptr @py_complex_conjugate(ptr)
declare external ptr @py_complex_abs(ptr)
declare external ptr @py_bytes_new(ptr, i64)
declare external ptr @py_bytearray_from_obj(ptr)
declare external ptr @py_bytes_from_obj(ptr)
declare external ptr @py_memoryview_new(ptr)
declare external ptr @py_bytes_decode(ptr)
declare external ptr @py_bytes_decode_utf8_ignore(ptr)
declare external ptr @py_bytes_decode_utf8_surrogateescape(ptr)
declare external ptr @py_bytes_decode_with_encoding(ptr, ptr, ptr)
declare external ptr @py_bytes_hex(ptr)
declare external ptr @py_bytes_upper(ptr)
declare external ptr @py_bytes_lower(ptr)
declare external ptr @py_bytes_strip(ptr)
declare external ptr @py_bytes_lstrip(ptr)
declare external ptr @py_bytes_rstrip(ptr)
declare external ptr @py_bytes_ljust(ptr, i64, ptr)
declare external ptr @py_bytes_rjust(ptr, i64, ptr)
declare external ptr @py_bytes_strip_chars(ptr, ptr)
declare external ptr @py_bytes_lstrip_chars(ptr, ptr)
declare external ptr @py_bytes_rstrip_chars(ptr, ptr)
declare external ptr @py_bytes_getitem(ptr, ptr)
declare external ptr @py_bytes_slice(ptr, ptr, ptr, ptr)
declare external ptr @py_bytes_concat(ptr, ptr)
declare external ptr @py_bytes_repeat(ptr, i64)
declare external ptr @py_bytes_maketrans(ptr, ptr)
declare external ptr @py_bytes_translate(ptr, ptr)
declare external ptr @py_bytes_fromhex(ptr)
declare external ptr @py_bytes_replace(ptr, ptr, ptr)
declare external i64 @py_bytes_len(ptr)
declare external ptr @py_bytes_data_ptr(ptr)
declare external ptr @py_sha256_bytes_digest(ptr)
declare external ptr @py_sha256_state_new()
declare external ptr @py_sha256_state_update(ptr, ptr)
declare external ptr @py_sha256_state_digest(ptr)
declare external ptr @py_md5_bytes_digest(ptr)
declare external ptr @py_md5_state_new()
declare external ptr @py_md5_state_update(ptr, ptr)
declare external ptr @py_md5_state_digest(ptr)
declare external ptr @py_i64_buffer_new(i64)
declare external i64 @py_i64_buffer_set_item(ptr, i64, ptr)
declare external ptr @py_i64_buffer_get_item(ptr, i64)
declare external ptr @py_i64_buffer_data(ptr)
declare external i64 @py_i64_buffer_layout_version(ptr)
declare external i64 @py_i64_buffer_version(ptr)
declare external ptr @py_i64_buffer_dot_scalar(ptr, ptr, i64)
declare external i64 @py_guarded_loop_counter_add(i64, i64)
declare external i64 @py_guarded_loop_counter_get(i64)
declare external i64 @py_bytes_find(ptr, ptr)
declare external i64 @py_bytes_find_from(ptr, ptr, ptr)
declare external i64 @py_bytes_find_range(ptr, ptr, i64, i64)
declare external i64 @py_slice_index_i64(ptr, i64)
declare external i64 @py_bytes_rfind(ptr, ptr)
declare external i64 @py_bytes_count(ptr, ptr)
declare external ptr @py_bytes_split(ptr, ptr)
declare external ptr @py_bytes_split_max(ptr, ptr, ptr)
declare external ptr @py_bytes_partition(ptr, ptr)
declare external ptr @py_bytearray_extend(ptr, ptr)
declare external ptr @py_bytearray_append(ptr, ptr)
declare external ptr @py_bytearray_insert(ptr, ptr, ptr)
declare external ptr @py_bytearray_pop(ptr, ptr)
declare external void @py_bytearray_clear(ptr)
declare external i64 @py_bytearray_setitem(ptr, ptr, ptr)
declare external i64 @py_bytearray_del_slice(ptr, ptr, ptr, ptr)
declare external i64 @py_bytearray_set_slice(ptr, ptr, ptr, ptr, ptr)
declare external ptr @py_str_new(ptr, i64)
declare external i64 @py_str_len(ptr)
declare external i64 @py_str_byte_len(ptr) nounwind readonly willreturn
declare external ptr @py_str_utf8(ptr) nounwind readonly willreturn
declare external ptr @PyContextVar_New(ptr, ptr)
declare external i64 @py_str_ord(ptr)
declare external i64 @py_str_ord_at_i64(ptr, i64)
declare external i64 @py_str_byte_at_i64(ptr, i64)
declare external ptr @py_str_ascii_encode(ptr)
declare external ptr @py_str_latin1_encode(ptr)
declare external ptr @py_str_utf8_encode(ptr)
declare external ptr @py_str_encode_with_encoding(ptr, ptr, ptr)
declare external ptr @py_str_byte_slice_i64(ptr, i64, i64)
declare external ptr @py_str_concat(ptr, ptr)
declare external ptr @py_str_repeat(ptr, ptr)
declare external ptr @py_str_slice(ptr, ptr, ptr, ptr)
declare external ptr @py_str_index(ptr, ptr)
declare external i64 @py_str_codepoint_at(ptr, i64)
declare external i64 @py_str_contains_codepoint(ptr, i64)
declare external i64 @py_str_eq(ptr, ptr)
declare external i64 @py_str_contains(ptr, ptr)
declare external i64 @py_str_find(ptr, ptr)
declare external i64 @py_str_rfind(ptr, ptr)
declare external i64 @py_str_find_range(ptr, ptr, i64, i64)
declare external i64 @py_str_rfind_range(ptr, ptr, i64, i64)
declare external ptr @py_str_upper(ptr)
declare external ptr @py_str_lower(ptr)
declare external ptr @py_str_capitalize(ptr)
declare external ptr @py_str_swapcase(ptr)
declare external ptr @py_str_title(ptr)
declare external ptr @py_str_casefold(ptr)
declare external ptr @py_textwrap_dedent(ptr)
declare external ptr @py_str_strip(ptr)
declare external ptr @py_str_split(ptr, ptr)
declare external ptr @py_str_partition(ptr, ptr)
declare external ptr @py_str_rpartition(ptr, ptr)
declare external ptr @py_str_translate(ptr, ptr)
declare external ptr @py_str_maketrans(ptr, ptr)
declare external ptr @py_str_removeprefix(ptr, ptr)
declare external ptr @py_str_removesuffix(ptr, ptr)
declare external ptr @py_str_rjust(ptr, i64, ptr)
declare external ptr @py_str_ljust(ptr, i64, ptr)
declare external ptr @py_str_center(ptr, i64, ptr)
declare external ptr @py_str_zfill(ptr, i64)
declare external ptr @py_str_expandtabs(ptr, i64)
declare external ptr @py_str_rsplit_maxsplit(ptr, ptr, i64)
declare external ptr @py_str_split_maxsplit(ptr, ptr, i64)
declare external ptr @py_str_splitlines(ptr)
declare external ptr @py_str_splitlines_keepends(ptr, i32)
declare external ptr @py_str_lstrip(ptr)
declare external ptr @py_str_rstrip(ptr)
declare external ptr @py_str_strip_chars(ptr, ptr)
declare external ptr @py_str_lstrip_chars(ptr, ptr)
declare external ptr @py_str_rstrip_chars(ptr, ptr)
declare external i64 @py_str_count(ptr, ptr)
declare external i64 @py_str_count_range(ptr, ptr, ptr, ptr)
declare external i64 @py_str_isdigit(ptr)
declare external i64 @py_str_isalpha(ptr)
declare external i64 @py_str_isspace(ptr)
declare external i64 @py_str_isalnum(ptr)
declare external i64 @py_str_isupper(ptr)
declare external i64 @py_str_islower(ptr)
declare external i64 @py_str_isascii(ptr)
declare external i64 @py_str_isidentifier(ptr)
declare external i64 @py_str_isprintable(ptr)
declare external i64 @py_str_isnumeric(ptr)
declare external i64 @py_str_isdecimal(ptr)
declare external i64 @py_str_istitle(ptr)
declare external i64 @py_str_index_of(ptr, ptr)
declare external i64 @py_str_rindex_of(ptr, ptr)
declare external i64 @py_str_index_of_range(ptr, ptr, i64, i64)
declare external i64 @py_str_rindex_of_range(ptr, ptr, i64, i64)
declare external ptr @py_str_join(ptr, ptr)
declare external ptr @py_str_replace(ptr, ptr, ptr)
declare external ptr @py_str_replace_count(ptr, ptr, ptr, i64)
declare external i64 @py_str_startswith(ptr, ptr)
declare external i64 @py_str_endswith(ptr, ptr)
declare external i64 @py_str_tailmatch_range(ptr, ptr, i64, i64, i64)
declare external ptr @py_chr_from_i64(i64)
declare external ptr @py_json_loads(ptr)
declare external ptr @py_json_dumps(ptr)
declare external ptr @py_json_dumps_ex(ptr, i64)
declare external ptr @py_copy_copy(ptr)
declare external ptr @py_copy_deepcopy(ptr)
declare external ptr @py_pickle_dumps(ptr, ptr)
declare external ptr @py_pickle_loads(ptr)
declare external ptr @py_os_urandom(ptr)
declare external ptr @py_list_new(i64)
declare external void @py_list_append(ptr, ptr)
declare external ptr @py_list_get(ptr, i64)
declare external ptr @py_list_getitem(ptr, i64)
declare external i64 @py_list_get_i64(ptr, i64) nounwind readonly willreturn
declare external i64 @py_list_get_i64_nonnegative(ptr, i64) nounwind readonly willreturn
declare external void @py_list_set(ptr, i64, ptr)
declare external void @py_list_set_from_owned_root(ptr, i64, ptr, ptr)
declare external ptr @py_list_get_for_frame(ptr, i64)
declare external i64 @py_list_setitem(ptr, i64, ptr)
declare external i64 @py_list_len(ptr) nounwind readonly willreturn
declare external ptr @py_list_slice(ptr, ptr, ptr, ptr)
declare external i64 @py_list_set_slice(ptr, ptr, ptr, ptr, ptr)
declare external i64 @py_list_del_slice(ptr, ptr, ptr, ptr)
declare external ptr @py_list_concat(ptr, ptr)
declare external ptr @py_list_copy(ptr)
declare external ptr @py_list_repeat(ptr, i64)
declare external void @py_list_extend(ptr, ptr)
declare external void @py_list_insert(ptr, i64, ptr)
declare external ptr @py_list_pop(ptr, i64)
declare external void @py_list_remove(ptr, ptr)
declare external void @py_list_clear(ptr)
declare external void @py_obj_clear(ptr)
declare external i64 @py_list_contains(ptr, ptr)
declare external i64 @py_list_index(ptr, ptr)
declare external i64 @py_list_index_range(ptr, ptr, i64, i64)
declare external i64 @py_list_count(ptr, ptr)
declare external void @py_list_reverse(ptr)
declare external ptr @py_dict_new()
declare external ptr @py_dict_new_presized(i64)
declare external void @py_dict_set(ptr, ptr, ptr)
declare external ptr @py_dict_from_static_pairs(ptr, i64)
declare external ptr @py_tuple_from_static_items(ptr, i64)
declare external ptr @py_list_from_static_items(ptr, i64)
declare external ptr @py_static_aggregate_build(ptr)
declare external ptr @py_dict_get(ptr, ptr)
declare external ptr @py_dict_getitem(ptr, ptr)
declare external ptr @py_dict_fromkeys(ptr, ptr)
declare external ptr @py_dict_get_default(ptr, ptr, ptr)
declare external ptr @py_dict_pop(ptr, ptr)
declare external ptr @py_dict_popitem(ptr)
declare external i64 @py_dict_contains(ptr, ptr)
declare external i64 @py_dict_del(ptr, ptr)
declare external void @py_dict_clear(ptr)
declare external i64 @py_dict_len(ptr) nounwind readonly willreturn
declare external i64 @py_dict_entries_used(ptr)
declare external ptr @py_dict_entry_key_at(ptr, i64)
declare external ptr @py_dict_entry_value_at(ptr, i64)
declare external ptr @py_dict_keys(ptr)
declare external ptr @py_dict_values(ptr)
declare external ptr @py_dict_items(ptr)
declare external void @py_dict_update(ptr, ptr)
declare external ptr @py_tuple_new(i64)
declare external ptr @py_tuple_from_list(ptr)
declare external ptr @py_tuple_from_splat(ptr)
declare external void @py_tuple_set_item(ptr, i64, ptr)
declare external ptr @py_tuple_get(ptr, i64)
declare external ptr @py_tuple_get_known(ptr, i64)
declare external ptr @py_tuple_getitem(ptr, i64)
declare external i64 @py_tuple_len(ptr) nounwind readonly willreturn
declare external ptr @py_tuple_concat(ptr, ptr)
declare external ptr @py_tuple_repeat(ptr, i64)
declare external ptr @py_tuple_slice(ptr, ptr, ptr, ptr)
declare external ptr @py_property_new(ptr, ptr, ptr)
declare external ptr @py_classmethod_new(ptr)
declare external ptr @py_staticmethod_new(ptr)
declare external ptr @py_slice_new(ptr, ptr, ptr)
declare external ptr @py_set_new()
declare external ptr @py_set_from_iterable(ptr)
declare external void @py_set_add(ptr, ptr)
declare external void @py_set_update(ptr, ptr)
declare external ptr @py_set_intersection(ptr, ptr)
declare external ptr @py_set_difference(ptr, ptr)
declare external ptr @py_set_symmetric_difference(ptr, ptr)
declare external void @py_set_intersection_update(ptr, ptr)
declare external void @py_set_difference_update(ptr, ptr)
declare external void @py_set_symmetric_difference_update(ptr, ptr)
declare external i64 @py_set_issubset(ptr, ptr)
declare external i64 @py_set_issuperset(ptr, ptr)
declare external ptr @py_set_pop(ptr)
declare external void @py_set_clear(ptr)
declare external i64 @py_set_contains(ptr, ptr)
declare external i64 @py_set_remove(ptr, ptr)
declare external i64 @py_set_len(ptr) nounwind readonly willreturn
declare external ptr @py_obj_call(ptr, ptr, ptr)
declare external ptr @py_obj_call_sync(ptr, ptr, ptr)
declare external i64 @py_obj_call_context_is_deferred()
declare external ptr @py_obj_call_deferred(ptr, ptr, ptr)
declare external ptr @py_obj_call_forward(ptr, ptr, ptr)
declare external ptr @py_func_call_bound_forward(ptr, ptr)
declare external ptr @py_obj_call_method1(ptr, ptr, ptr)
declare external ptr @py_user_binop_dispatch(ptr, ptr, ptr, ptr, ptr)
declare external ptr @py_instance_method_call_direct(ptr, ptr, ptr)
declare external ptr @py_obj_add(ptr, ptr)
declare external ptr @py_obj_sub(ptr, ptr)
declare external ptr @py_obj_mul(ptr, ptr)
declare external ptr @py_obj_and(ptr, ptr)
declare external ptr @py_obj_or(ptr, ptr)
declare external ptr @py_obj_xor(ptr, ptr)
declare external ptr @py_obj_lshift(ptr, ptr)
declare external ptr @py_obj_rshift(ptr, ptr)
declare external ptr @py_obj_truediv(ptr, ptr)
declare external ptr @py_obj_mod(ptr, ptr)
declare external ptr @py_str_mod(ptr, ptr)
declare external ptr @py_weakref_new(ptr, ptr)
declare external ptr @py_weakref_call(ptr)
declare external void @py_weakref_invalidate(ptr)
declare external ptr @py_weak_value_dict_new()
declare external i64 @py_weak_value_dict_set(ptr, ptr, ptr)
declare external i64 @py_weak_value_dict_contains(ptr, ptr)
declare external i64 @py_weak_value_dict_len(ptr)
declare external ptr @py_weak_key_dict_new()
declare external i64 @py_weak_key_dict_set(ptr, ptr, ptr)
declare external i64 @py_weak_key_dict_len(ptr)
declare external ptr @py_obj_getattr(ptr, ptr)
declare external ptr @py_obj_load_method(ptr, ptr, ptr)
declare external ptr @py_obj_call_method(ptr, ptr, ptr)
declare external ptr @py_obj_call_method_kwargs(ptr, ptr, ptr, ptr)
declare external ptr @py_obj_getattr_default(ptr, ptr)
declare external ptr @py_obj_getattr_maybe(ptr, ptr)
declare external ptr @py_obj_vars(ptr)
declare external i64 @py_obj_setattr(ptr, ptr, ptr)
declare external i64 @py_obj_delattr(ptr, ptr)
declare external ptr @py_obj_type_name(ptr)
declare external ptr @py_type_builtin(ptr)
declare external ptr @py_builtin_type_for_tag(i64)
declare external ptr @py_obj_getitem(ptr, ptr)
declare external ptr @py_obj_getitem_i64(ptr, i64)
declare external ptr @py_obj_subscript(ptr, ptr)
declare external ptr @py_obj_subscript_i64(ptr, i64)
declare external ptr @py_obj_slice(ptr, ptr, ptr, ptr)
declare external i64 @py_obj_set_slice(ptr, ptr, ptr, ptr, ptr)
declare external i64 @py_obj_del_slice(ptr, ptr, ptr, ptr)
declare external i64 @py_obj_setitem(ptr, ptr, ptr)
declare external i64 @py_obj_setitem_i64(ptr, i64, ptr)
declare external i64 @py_obj_delitem(ptr, ptr)
declare external i64 @py_obj_assign_subscript(ptr, ptr, ptr)
declare external i64 @py_obj_delete_subscript(ptr, ptr)
declare external i64 @py_obj_len(ptr)
declare external i64 @py_obj_contains(ptr, ptr)
declare external ptr @py_obj_sorted(ptr)
declare external i64 @py_obj_index_i64(ptr)
declare external ptr @py_obj_index(ptr)
declare external i64 @py_recursion_enter()
declare external void @py_recursion_leave(i64)
declare external i64 @py_sys_getrecursionlimit()
declare external i64 @py_recursion_depth()
declare external i64 @py_sys_setrecursionlimit(i64)
declare external i64 @py_index_i64_checked(ptr)
declare external ptr @py_obj_repr(ptr)
declare external ptr @py_obj_ascii(ptr)
declare external ptr @py_obj_str(ptr)
declare external i64 @py_obj_isinstance(ptr, ptr)
declare external i64 @py_obj_issubclass(ptr, ptr)
declare external i64 @py_obj_is_slice(ptr)
declare external ptr @py_obj_iter(ptr)
declare external ptr @py_obj_next(ptr)
declare external ptr @py_iter_callable_new(ptr, ptr)
declare external ptr @py_user_str_dispatch(ptr)
declare external ptr @py_user_repr_dispatch(ptr)
declare external i64 @py_user_hash_dispatch(ptr, ptr)
declare external ptr @py_user_iter_dispatch(ptr)
declare external ptr @py_user_next_dispatch(ptr)
declare external ptr @py_user_matmul_dispatch(ptr, ptr)
declare external ptr @py_call_merge_posargs(ptr, ptr)
declare external ptr @py_call_merge_kwargs(ptr, ptr)
declare external ptr @py_zip_star(ptr)
declare external ptr @py_obj_call_splat(ptr, ptr, ptr, ptr, ptr)
declare external ptr @py_module_attrs_dict(ptr, i64)
declare external i64 @py_module_attr_set(ptr, ptr, ptr)
declare external ptr @py_module_attr_get(ptr, ptr)
declare external i64 @py_module_import_star(ptr, ptr)
declare external i64 @py_compiled_module_register_init(ptr, ptr)
declare external ptr @py_compiled_module_import_by_name(ptr)
declare external ptr @py_builtin_import(ptr, ptr)
declare external ptr @py_module_attr_value_or_default(ptr, ptr)
declare external i64 @py_module_attr_del(ptr, ptr)
declare external i64 @py_module_attr_len(ptr)
declare external ptr @py_native_extension_import(ptr, ptr)
declare external ptr @py_native_extension_import_by_name(ptr)
declare external ptr @py_func_new(ptr, ptr)
declare external ptr @py_func_new_named(ptr, ptr, ptr)
declare external ptr @py_builtin_function_value(ptr, ptr)
declare external ptr @py_builtin_abs_entry(ptr, ptr)
declare external ptr @py_func_new_bound(ptr, ptr, ptr, ptr)
declare external ptr @py_func_call(ptr, ptr)
declare external ptr @py_func_call_kwargs(ptr, ptr, ptr)
declare external ptr @py_functools_partial(ptr, ptr)
declare external ptr @py_functools_partial_kw(ptr, ptr, ptr)
declare external ptr @py_functools_update_wrapper(ptr, ptr)
declare external ptr @py_gen_frame_new(i64)
declare external ptr @py_gen_frame_get(ptr, i64)
declare external void @py_gen_frame_set(ptr, i64, ptr)
declare external i64 @py_gen_frame_save(ptr, ptr, i64)
declare external ptr @py_gen_new(ptr, ptr)
declare external ptr @py_gen_completed(ptr)
declare external ptr @py_gen_take_completed(ptr)
declare external ptr @py_gen_run_may_park_sync(ptr)
declare external void @py_gen_set_may_park(ptr)
declare external i64 @py_gen_is_may_park(ptr)
declare external i64 @py_gen_is_continuation(ptr)
declare external ptr @py_gen_next(ptr)
declare external ptr @py_gen_send(ptr, ptr)
declare external ptr @py_gen_throw(ptr, ptr)
declare external ptr @py_gen_close(ptr)
declare external i64 @py_gen_close_preserving_exception(ptr)
declare external ptr @py_gen_take_send(ptr)
declare external i64 @py_gen_state(ptr)
declare external void @py_gen_set_state(ptr, i64)
declare external void @py_gen_set_done(ptr)
declare external i64 @py_gen_is_done(ptr)
declare external ptr @py_gen_finish(ptr, ptr)
declare external ptr @py_coroutine_new(ptr)
declare external ptr @py_coroutine_new_native(ptr, ptr, ptr, ptr)
declare external ptr @py_coroutine_new_resumable(ptr, ptr, ptr, ptr)
declare external ptr @py_coroutine_send(ptr, ptr, ptr)
declare external ptr @py_await_iterator(ptr)
declare external ptr @py_await_step(ptr, ptr, ptr)
declare external ptr @py_coroutine_run(ptr)
declare external ptr @py_coroutine_close(ptr)
declare external ptr @py_coroutine_class()
declare external i64 @py_coroutine_is_done(ptr)
declare external ptr @py_coroutine_get_result(ptr)
declare external ptr @py_await(ptr)
declare external ptr @py_asyncio_sleep(ptr)
declare external ptr @py_continuation_class()
declare external ptr @py_continuation_new(ptr, ptr, ptr)
declare external ptr @py_continuation_new_typed(ptr, ptr, ptr)
declare external i64 @py_continuation_mount(ptr, ptr)
declare external i64 @py_continuation_unmount(ptr, ptr, ptr)
declare external i64 @py_continuation_is_mounted(ptr)
declare external ptr @py_continuation_resume_pc(ptr)
declare external i64 @py_continuation_resume_abi(ptr)
declare external i64 @py_continuation_slot_count(ptr)
declare external ptr @py_continuation_get_slot(ptr, i64)
declare external i64 @py_continuation_set_slot(ptr, i64, ptr)
declare external i64 @py_virtual_thread_tcp_listen(ptr, ptr, i64)
declare external i64 @py_virtual_thread_tcp_accept_observe(i64, i64, ptr)
declare external i64 @py_virtual_thread_tcp_register_accepted(i64)
declare external i64 @py_virtual_thread_tcp_connect_start(ptr, ptr, ptr)
declare external i64 @py_virtual_thread_tcp_connect_observe(i64, i64)
declare external ptr @py_virtual_thread_tcp_recv_observe(i64, i64, i64, ptr)
declare external i64 @py_virtual_thread_tcp_send_observe(i64, i64, ptr, i64, ptr)
declare external i64 @py_virtual_thread_tcp_close(i64)
declare external i64 @py_virtual_thread_tcp_close_quiet(i64)
declare external i64 @py_virtual_thread_tcp_deadline(i64)
declare external i64 @py_virtual_thread_tcp_remaining(i64)
declare external i64 @py_virtual_thread_tcp_raise_timeout()
declare external ptr @py_task_new(ptr)
declare external ptr @py_task_step(ptr)
declare external i64 @py_task_is_done(ptr)
declare external void @py_task_set_result(ptr, ptr)
declare external void @py_task_set_waiter(ptr, ptr)
declare external ptr @py_task_get_coro(ptr)
declare external ptr @py_task_get_result(ptr)
declare external ptr @py_task_get_waiter(ptr)
declare external ptr @py_context_enter(ptr)
declare external i64 @py_context_exit(ptr, ptr, ptr, ptr)
declare external ptr @py_obj_format(ptr, ptr)
declare external ptr @py_file_open(ptr, ptr)
declare external ptr @py_file_read_all(ptr)
declare external ptr @py_file_read(ptr, i64)
declare external ptr @py_file_write(ptr, ptr)
declare external void @py_file_close(ptr)
declare external ptr @py_file_readline(ptr, i64)
declare external ptr @py_file_seek(ptr, i64, i64)
declare external ptr @py_file_tell(ptr)
declare external ptr @py_file_flush(ptr)
declare external ptr @py_file_fileno(ptr)
declare external ptr @py_fileinput_new(ptr, ptr)
declare external ptr @py_fileinput_readline(ptr)
declare external ptr @py_fileinput_filename(ptr)
declare external ptr @py_fileinput_lineno(ptr)
declare external ptr @py_fileinput_filelineno(ptr)
declare external ptr @py_fileinput_isfirstline(ptr)
declare external ptr @py_fileinput_close(ptr)
declare external void @py_print(ptr)
declare external void @py_print_many(ptr, ptr, ptr)
declare external ptr @py_sys_stdout_write(ptr)
declare external ptr @py_sys_stderr_write(ptr)
declare external void @py_set_program_args(i32, ptr)
declare external i64 @py_program_argc()
declare external ptr @py_program_argv(i64)
declare external ptr @py_program_executable()
declare external i32 @py_program_mode()
declare external void @py_process_exit(i64)
declare external ptr @py_sys_executable_str()
declare external ptr @py_sys_prefix_str(i64)
declare external ptr @py_os_getpid()
declare external ptr @py_fcntl_flock(ptr, ptr, ptr)
declare external ptr @py_msvcrt_locking(ptr, ptr, ptr)
declare external ptr @py_os_kill(ptr, ptr)
declare external ptr @py_subprocess_check_output(ptr)
declare external i64 @py_subprocess_run(ptr, i32)
declare external i64 @py_subprocess_run_timeout(ptr, i32, i64)
declare external ptr @py_sysconfig_get_config_var(ptr)
declare external ptr @py_os_listdir(ptr)
declare external ptr @py_shlex_split(ptr)
declare external ptr @py_shutil_which(ptr)
declare external ptr @py_shutil_rmtree(ptr, i32)
declare external ptr @py_tempdir_new(ptr)
declare external void @py_tempdir_cleanup(ptr)
declare external ptr @py_re_escape(ptr)
declare external ptr @py_re_match(ptr, ptr)
declare external ptr @py_re_match_flags(ptr, ptr, i64)
declare external ptr @py_re_fullmatch(ptr, ptr)
declare external ptr @py_re_fullmatch_flags(ptr, ptr, i64)
declare external ptr @py_re_search(ptr, ptr)
declare external ptr @py_re_search_flags(ptr, ptr, i64)
declare external ptr @py_re_findall_flags(ptr, ptr, i64)
declare external ptr @py_re_finditer_flags(ptr, ptr, i64)
declare external ptr @py_re_compile_method(ptr, i64, i64)
declare external ptr @py_re_compile_obj(ptr, i64)
declare external ptr @py_re_engine_sub(ptr, ptr, ptr, i64, i64)
declare external ptr @py_re_engine_split(ptr, ptr, i64, i64)
declare external ptr @py_time_monotonic()
declare external ptr @py_time_perf_counter()
declare external ptr @py_time_perf_counter_ns()
declare external ptr @py_time_monotonic_ns()
declare external ptr @py_time_time_ns()
declare external ptr @py_time_time()
declare external ptr @py_time_strftime(ptr)
declare external ptr @py_sys_stdin_readline()
declare external ptr @py_os_getenv(ptr, ptr)
declare external ptr @py_os_putenv(ptr, ptr)
declare external ptr @py_os_unsetenv(ptr)
declare external ptr @py_os_environ_getitem(ptr)
declare external ptr @py_os_environ_snapshot()
declare external i64 @py_subprocess_run_env(ptr, i32, ptr)
declare external ptr @py_os_environ_setitem(ptr, ptr)
declare external i32 @py_os_environ_contains(ptr)
declare external ptr @py_os_path_join(ptr)
declare external ptr @py_os_path_basename(ptr)
declare external ptr @py_os_path_dirname(ptr)
declare external ptr @py_os_path_split(ptr)
declare external ptr @py_os_path_splitext(ptr)
declare external ptr @py_os_path_normcase(ptr)
declare external ptr @py_os_path_normpath(ptr)
declare external ptr @py_os_path_splitdrive(ptr)
declare external i32 @py_os_path_exists(ptr)
declare external i32 @py_os_path_isabs(ptr)
declare external i32 @py_os_path_isfile(ptr)
declare external i32 @py_os_path_isdir(ptr)
declare external i32 @py_os_path_islink(ptr)
declare external ptr @py_os_path_getsize(ptr)
declare external ptr @py_os_path_getmtime(ptr)
declare external ptr @py_os_path_abspath(ptr)
declare external ptr @py_os_path_expanduser(ptr)
declare external ptr @py_os_path_realpath(ptr)
declare external ptr @py_os_path_commonpath(ptr)
declare external ptr @py_os_path_expandvars(ptr)
declare external ptr @py_os_path_relpath(ptr, ptr)
declare external ptr @py_os_path_commonprefix(ptr)
declare external ptr @py_os_getcwd_str()
declare external ptr @py_os_makedirs(ptr, i64, i32)
declare external ptr @py_os_unlink(ptr)
declare external ptr @py_os_rmdir(ptr)
declare external ptr @py_os_replace(ptr, ptr)
declare external ptr @py_os_chmod(ptr, i64)
declare external ptr @py_os_fsync(i64)
declare external i32 @py_os_access(ptr, i32)
declare external i32 @py_os_write(i32, ptr)
declare external i64 @py_http_download_to_file(ptr, ptr)
declare external ptr @py_sha256_file_hex(ptr)
declare external ptr @py_sha256_file_hex_bounded(ptr, i64)
declare external ptr @py_os_cpu_count()
declare external ptr @py_os_uname()
declare external ptr @py_sys_platform_str()
declare external ptr @py_sys_path_list()
declare external ptr @py_platform_machine_str()
declare external ptr @py_platform_release_str()
declare external void @py_raise(ptr)
declare external void @py_handled_context_push(ptr, ptr)
declare external i64 @py_handled_context_pop(ptr)
declare external ptr @py_handled_exception_slot()
declare external ptr @py_handled_context_swap(ptr)
declare external ptr @py_current_exception() nounwind readonly willreturn
declare external void @py_clear_exception()
declare external ptr @py_exc_new(i64, ptr)
declare external ptr @py_exc_new_with_value(i64, ptr)
declare external void @py_unicode_encode_error(ptr, ptr, i64, i64, ptr)
declare external ptr @py_unicode_encode_error_new(ptr)
declare external ptr @py_unicode_error_get_field(ptr, i64)
declare external i64 @py_unicode_error_set_field(ptr, i64, ptr)
declare external ptr @py_unicode_error_format(ptr, i64)
declare external ptr @py_exc_new_with_class(ptr, ptr)
declare external ptr @py_exc_builtin_class(i64)
declare external i64 @py_exc_matches(ptr, ptr)
declare external i64 @py_exc_match_handler(ptr, ptr)
declare external void @py_exc_set_cause(ptr, ptr)
declare external void @py_exc_set_context(ptr, ptr)
declare external void @py_exc_set_implicit_context_slots(ptr, ptr)
declare external void @py_exc_append_frame(ptr, ptr, ptr, i32)
declare external void @py_exc_append_frame_source(ptr, ptr, ptr, ptr, i32)
declare external void @py_exc_append_frame_indexed(ptr, ptr, ptr, ptr, ptr, i32)
declare external ptr @py_runtime_error_if_unset(ptr, ptr)
declare external void @py_exc_print_unhandled(ptr)
declare external ptr @py_exc_traceback_format_exc(ptr)
declare external void @py_exc_traceback_print_exc(ptr)
declare external ptr @py_exc_get_message(ptr)
declare external ptr @py_exc_get_cause(ptr)
declare external ptr @py_exc_get_context(ptr)
declare external i64 @py_exc_traceback_len(ptr)
declare external i64 @py_err_occurred() nounwind readonly willreturn
declare external ptr @py_class_new(ptr, ptr, i32, ptr, i32)
declare external ptr @py_class_new_from_objects(ptr, ptr, ptr)
declare external void @py_class_mark_slots_only(ptr)
declare external void @py_class_mark_dict_subclass(ptr)
declare external void @py_class_add_method(ptr, ptr, ptr)
declare external void @py_class_set_metaclass(ptr, ptr)
declare external ptr @py_class_lookup(ptr, ptr)
declare external ptr @py_func_get_defaults_metadata(ptr)
declare external ptr @py_class_getattr(ptr, ptr)
declare external i64 @py_class_setattr(ptr, ptr, ptr)
declare external i64 @py_class_setattr_raw(ptr, ptr, ptr)
declare external i64 @py_class_apply_namespace_dict(ptr, ptr)
declare external i64 @py_class_delattr(ptr, ptr)
declare external ptr @py_valuebox_new(ptr)
declare external ptr @py_valuebox_get_field(ptr, i32)
declare external void @py_valuebox_set_field(ptr, i32, ptr)
declare external ptr @py_instance_new(ptr)
declare external ptr @py_instance_get_field(ptr, i32)
declare external ptr @py_instance_getattr(ptr, ptr)
declare external ptr @py_instance_getattr_default(ptr, ptr)
declare external i64 @py_instance_setattr(ptr, ptr, ptr)
declare external ptr @py_dataclass_replace(ptr, i64, ptr, ptr)
declare external ptr @py_dataclass_replace_from_dict(ptr, ptr)
declare external i64 @py_isinstance(ptr, ptr)
declare external ptr @py_super_lookup(ptr, ptr, ptr)
declare external void @py_gc_init()
declare external i64 @py_gc_collect()
declare external void @py_gc_track(ptr)
declare external void @py_gc_untrack(ptr)
declare external void @py_gc_enable()
declare external void @py_gc_disable()
declare external i64 @py_gc_is_enabled() nounwind readonly willreturn
declare external i64 @py_gc_is_tracked(ptr) nounwind readonly willreturn
declare external i64 @py_gc_get_count(i32) nounwind readonly willreturn
declare external i64 @py_gc_get_threshold(i32) nounwind readonly willreturn
declare external void @py_gc_set_threshold(i32, i32, i32)
declare external void @py_gc_freeze()
declare external void @py_gc_unfreeze()
declare external i64 @py_gc_get_freeze_count()
declare external ptr @py_gc_get_objects()
declare external ptr @py_gc_get_referents(ptr)
declare external ptr @py_gc_get_referrers(ptr)
declare external void @py_cpy_ensure_init()
declare external ptr @py_cpy_import(ptr)
declare external ptr @py_cpy_getattr(ptr, ptr)
declare external ptr @py_cpy_binop(i64, ptr, ptr)
declare external i32 @py_cpy_setattr(ptr, ptr, ptr)
declare external i32 @py_cpy_main_exitcode()
declare external ptr @py_cpy_call_noargs(ptr)
declare external ptr @py_cpy_call1(ptr, ptr)
declare external ptr @py_cpy_call2(ptr, ptr, ptr)
declare external ptr @py_cpy_call3(ptr, ptr, ptr, ptr)
declare external ptr @py_cpy_call_argv(ptr, i64, ptr)
declare external ptr @py_cpy_call_kw(ptr, i64, ptr, i64, ptr, ptr)
declare external ptr @py_cpy_call_kwdict(ptr, i64, ptr, ptr)
declare external ptr @py_cpy_call_kwdict_plus(ptr, i64, ptr, i64, ptr, ptr, ptr)
declare external ptr @py_cpy_call_list(ptr, ptr)
declare external ptr @py_cpy_call_list_kwdict(ptr, ptr, ptr)
declare external ptr @py_cpy_wrap_pcc_0arg(ptr)
declare external ptr @py_cpy_wrap_pcc_1arg(ptr)
declare external ptr @py_cpy_wrap_pcc_2arg(ptr)
declare external ptr @py_cpy_wrap_pcc_3arg(ptr)
declare external ptr @py_cpy_wrap_pcc_4arg(ptr)
declare external ptr @py_cpy_wrap_pcc_5arg(ptr)
declare external ptr @py_cpy_wrap_pcc_6arg(ptr)
declare external ptr @py_cpy_wrap_pcc_7arg(ptr)
declare external ptr @py_cpy_wrap_pcc_8arg(ptr)
declare external ptr @py_cpy_wrap_pcc_9arg(ptr)
declare external ptr @pcc_capi_str_utf8_pinned(ptr)
declare external i64 @py_cpy_len(ptr)
declare external ptr @py_cpy_getitem(ptr, ptr)
declare external i32 @py_cpy_setitem(ptr, ptr, ptr)
declare external i32 @py_cpy_truthy(ptr)
declare external ptr @py_cpy_iter(ptr)
declare external ptr @py_cpy_handle_new(ptr)
declare external ptr @py_obj_floordiv(ptr, ptr)
declare external ptr @py_obj_divmod(ptr, ptr)
declare external ptr @py_obj_inplace_op(ptr, ptr, i64)
declare external i64 @pcc_os_current_rss_bytes()
declare external i64 @pcc_os_peak_rss_bytes()
declare external i64 @pcc_os_heap_in_use_bytes()
declare external i64 @pcc_os_heap_capacity_bytes()
declare external ptr @py_enumerate_list(ptr, i64)
declare external ptr @py_int_to_bytes(ptr, i64, ptr)
declare external ptr @py_int_to_bytes_args(ptr, ptr, ptr, ptr)
declare external ptr @py_int_from_bytes(ptr, ptr)
declare external ptr @py_int_from_bytes_signed(ptr, ptr, i64)
declare external ptr @py_cpy_handle_get(ptr)
declare external ptr @py_cpy_iter_next(ptr)
declare external ptr @py_cpy_to_pcc_str(ptr)
declare external ptr @py_cpy_to_pcc_obj(ptr)
declare external void @py_cpy_decref(ptr)
declare external void @py_cpy_incref(ptr)
declare external ptr @py_cpy_from_i64(i64)
declare external i64 @py_cpy_to_i64(ptr)
declare external ptr @py_cpy_from_f64(double)
declare external double @py_cpy_to_f64(ptr)
declare external ptr @py_cpy_from_pccstr(ptr)
declare external ptr @py_cpy_from_pcc_obj(ptr)
declare external void @py_list_append_fresh_native_instance(ptr, ptr)
declare external i32 @printf(ptr, ...)
declare external void @pcc_mutex_free(ptr)
declare external void @pcc_cond_free(ptr)
declare external ptr @pcc_mutex_new()
declare external ptr @pcc_cond_new()
declare external i64 @pcc_mutex_lock(ptr)
declare external i64 @pcc_mutex_unlock(ptr)
declare external i64 @pcc_cond_signal(ptr)
declare external void @py_raise_owned(ptr)
declare external ptr @pcc_gc_note_relocation_read(ptr)
declare external i64 @pcc_runtime_monotonic_us()
declare external ptr @malloc(i64)
declare external void @free(ptr)
declare external void @pcc_io_waitset_dispose(ptr)
declare external ptr @pcc_platform_getenv(ptr)
declare external i32 @pcc_io_waitset_kqueue_available()
declare external i32 @pcc_io_waitset_epoll_available()
declare external i64 @pcc_io_waitset_init(ptr, i64)
declare external i64 @pcc_io_waitset_interrupt(ptr)
declare external i64 @pcc_io_waitset_remove(ptr, i64)
declare external i64 @pcc_io_waitset_add(ptr, i64, i64, i64, i64)
declare external void @pcc_io_waitset_set_ready(ptr, i64, i64)
declare external i64 @pcc_io_waitset_wait_until(ptr, i64, i64, ptr)
declare external i64 @pcc_io_waitset_wait_prepare(ptr, i64, i64, ptr)
declare external i64 @pcc_io_waitset_wait_block(ptr, ptr)
declare external void @pcc_io_waitset_wait_discard(ptr)
declare external i64 @pcc_io_waitset_wait_finish(ptr, ptr, ptr)
declare external ptr @calloc(i64, i64)
declare external i64 @pcc_thread_start(ptr, ptr, ptr)
declare external i64 @pcc_thread_join(ptr, ptr)
declare external i64 @pcc_cond_timedwait_ms(ptr, ptr, i64)
declare external i64 @pcc_cond_broadcast(ptr)
declare external void @pcc_gc_free_object_memory(ptr)
define external ptr @py_virtual_thread_current() "no-builtins" {
entry:
  %unsafe.global.load.ptr.12823.1 = load ptr, ptr @pcc_current_virtual_thread_py
  %unsafe.ptr_is_null.i.12825.4 = ptrtoint ptr %unsafe.global.load.ptr.12823.1 to i64
  %unsafe.ptr.null.12826.5 = icmp eq i64 %unsafe.ptr_is_null.i.12825.4, 0
  br i1 %unsafe.ptr.null.12826.5, label %if.then.12827, label %if.else.12828

if.then.12827:
  %unsafe.global.load.ptr.12830.6 = load ptr, ptr @py_None
  br label %if.end.12829

if.else.12828:
  br label %if.end.12829

if.end.12829:
  %current.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.12830.6, %if.then.12827 ], [ %unsafe.global.load.ptr.12823.1, %if.else.12828 ]
  call void (ptr) @py_incref(ptr %current.addr.2.phi)
  %ret.retain.12833.9 = call ptr (ptr) @pcc_gc_retain(ptr %current.addr.2.phi)
  %ret.tmp.root.12834.10 = alloca ptr
  store ptr null, ptr %ret.tmp.root.12834.10
  %ret.tmp.root.ptr.12835.11 = bitcast ptr %ret.tmp.root.12834.10 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.12835.11, ptr %ret.retain.12833.9)
  %gc.frame.lifo.map.ptr.12836.12 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12837.13 = bitcast ptr %ret.tmp.root.12834.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12836.12, ptr %gc.frame.lifo.slots.ptr.12837.13)
  %ret.tmp.current.12838.14 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.12835.11)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.12835.11, ptr null)
  %gc.frame.lifo.leave.ptr.12839.15 = bitcast ptr %ret.tmp.root.12834.10 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12839.15)
  ret ptr %ret.tmp.current.12838.14
}
define external i64 @py_virtual_thread_resume_generator(ptr %vthread, ptr %continuation) "no-builtins" {
entry:
  %generator.addr.7 = alloca ptr
  store ptr null, ptr %generator.addr.7
  %extern.py_continuation_get_slot.ret.13443.6 = call ptr (ptr, i64) @py_continuation_get_slot(ptr %continuation, i64 0)
  store ptr %extern.py_continuation_get_slot.ret.13443.6, ptr %generator.addr.7
  %gc.frame.map.ptr.13444.8 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13445.9 = bitcast ptr %generator.addr.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13444.8, ptr %gc.frame.slots.ptr.13445.9)
  %generator.gc.slot.13447.11 = bitcast ptr %generator.addr.7 to ptr
  %generator.13448.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13447.11)
  %resume_generator_owned_ret.13449.13 = call i64 (ptr, ptr) @user_py_virtual_thread_runtime__resume_generator_owned(ptr %vthread, ptr %generator.13448.12)
  %gc.frame.leave.ptr.13450.14 = bitcast ptr %generator.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13450.14)
  ret i64 %resume_generator_owned_ret.13449.13
}
define external ptr @py_virtual_thread_new(ptr %continuation) "no-builtins" {
strict.nolib.stub:
  %.148 = getelementptr inbounds [83 x i8], ptr @.strict.nolib.msg.28, i32 0, i32 0
  %strict.nolib.exc.9563.149 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.148)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.9563.149)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.9563.149)
  ret ptr null
}
define external i64 @py_virtual_thread_start(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.9566.5 = alloca ptr
  %checked_ret.9565.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.9566.5
  %call.ret.root.ptr.9567.6 = bitcast ptr %call.ret.root.9566.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9567.6, ptr %checked_ret.9565.4)
  %gc.frame.lifo.map.ptr.9568.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9569.8 = bitcast ptr %call.ret.root.9566.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9568.7, ptr %gc.frame.lifo.slots.ptr.9569.8)
  %call.ret.current.9570.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9567.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9567.6, ptr null)
  %gc.frame.lifo.leave.ptr.9571.10 = bitcast ptr %call.ret.root.9566.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9571.10)
  %unsafe.ptr_is_null.i.9573.13 = ptrtoint ptr %call.ret.current.9570.9 to i64
  %unsafe.ptr.null.9574.14 = icmp eq i64 %unsafe.ptr_is_null.i.9573.13, 0
  br i1 %unsafe.ptr.null.9574.14, label %if.then.9581, label %cond.right.9575

cond.right.9575:
  %unsafe.addr.9577.16 = getelementptr i8, ptr %call.ret.current.9570.9, i64 32
  %unsafe.addr.cast.9578.17 = bitcast ptr %unsafe.addr.9577.16 to ptr
  %unsafe.load.i64.9579.18 = load i64, ptr %unsafe.addr.cast.9578.17, align 1
  %icmp.9580.19 = icmp eq i64 %unsafe.load.i64.9579.18, 4
  br i1 %icmp.9580.19, label %if.then.9581, label %if.else.9582

if.then.9581:
  ret i64 -1

if.else.9582:
  br label %if.end.9583

if.end.9583:
  %scheduler_lock_ret.9584.20 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.9585.21 = icmp ne i64 %scheduler_lock_ret.9584.20, 0
  br i1 %icmp.9585.21, label %if.then.9586, label %if.else.9587

if.then.9586:
  ret i64 -1

if.else.9587:
  br label %if.end.9588

if.end.9588:
  %unsafe.addr.9590.23 = getelementptr i8, ptr %call.ret.current.9570.9, i64 32
  %unsafe.addr.cast.9591.24 = bitcast ptr %unsafe.addr.9590.23 to ptr
  %unsafe.load.i64.9592.25 = load i64, ptr %unsafe.addr.cast.9591.24, align 1
  %icmp.9593.26 = icmp eq i64 %unsafe.load.i64.9592.25, 4
  br i1 %icmp.9593.26, label %if.then.9594, label %if.else.9595

if.then.9594:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9595:
  br label %if.end.9596

if.end.9596:
  %unsafe.addr.9598.28 = getelementptr i8, ptr %call.ret.current.9570.9, i64 120
  %unsafe.addr.cast.9599.29 = bitcast ptr %unsafe.addr.9598.28 to ptr
  %unsafe.load.i64.9600.30 = load i64, ptr %unsafe.addr.cast.9599.29, align 1
  %icmp.9601.31 = icmp sge i64 %unsafe.load.i64.9600.30, 4
  br i1 %icmp.9601.31, label %if.then.9611, label %cond.right.9602

cond.right.9602:
  %unsafe.addr.9604.33 = getelementptr i8, ptr %call.ret.current.9570.9, i64 104
  %unsafe.addr.cast.9605.34 = bitcast ptr %unsafe.addr.9604.33 to ptr
  %unsafe.load.ptr.9606.35 = load ptr, ptr %unsafe.addr.cast.9605.34, align 1
  %unsafe.ptr_is_null.i.9607.36 = ptrtoint ptr %unsafe.load.ptr.9606.35 to i64
  %unsafe.ptr.null.9608.37 = icmp eq i64 %unsafe.ptr_is_null.i.9607.36, 0
  %b2i64.9609.38 = zext i1 %unsafe.ptr.null.9608.37 to i64
  %icmp.9610.39 = icmp eq i64 %b2i64.9609.38, 0
  br i1 %icmp.9610.39, label %if.then.9611, label %if.else.9612

if.then.9611:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9612:
  br label %if.end.9613

if.end.9613:
  %timer_cancel_ret.9615.41 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.9570.9)
  %io_cancel_ret.9617.43 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.9570.9)
  %unsafe.addr.9619.45 = getelementptr i8, ptr %call.ret.current.9570.9, i64 32
  %unsafe.addr.cast.9620.46 = bitcast ptr %unsafe.addr.9619.45 to ptr
  %unsafe.load.i64.9621.47 = load i64, ptr %unsafe.addr.cast.9620.46, align 1
  %icmp.9623.50 = icmp eq i64 %unsafe.load.i64.9621.47, 0
  br i1 %icmp.9623.50, label %if.then.9627, label %cond.right.9624

cond.right.9624:
  %icmp.9626.52 = icmp eq i64 %unsafe.load.i64.9621.47, 3
  br i1 %icmp.9626.52, label %if.then.9627, label %if.else.9628

if.then.9627:
  %unsafe.addr.9631.54 = getelementptr i8, ptr %call.ret.current.9570.9, i64 32
  %unsafe.addr.cast.9632.55 = bitcast ptr %unsafe.addr.9631.54 to ptr
  store i64 1, ptr %unsafe.addr.cast.9632.55, align 1
  %none.9633.56 = load ptr, ptr @py_None
  br label %if.end.9629

if.else.9628:
  br label %if.end.9629

if.end.9629:
  %enqueue_ret.9635.58 = call i64 (ptr) @user_py_virtual_thread_runtime__enqueue(ptr %call.ret.current.9570.9)
  %icmp.9637.61 = icmp eq i64 %enqueue_ret.9635.58, 0
  br i1 %icmp.9637.61, label %if.then.9638, label %if.else.9639

if.then.9638:
  %unsafe.addr.9642.63 = getelementptr i8, ptr %call.ret.current.9570.9, i64 32
  %unsafe.addr.cast.9643.64 = bitcast ptr %unsafe.addr.9642.63 to ptr
  %unsafe.load.i64.9644.65 = load i64, ptr %unsafe.addr.cast.9643.64, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 4, i64 0, i64 0, i64 %unsafe.load.i64.9644.65)
  br label %if.end.9640

if.else.9639:
  br label %if.end.9640

if.end.9640:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %enqueue_ret.9635.58
}
define external i64 @py_virtual_thread_park(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.9648.5 = alloca ptr
  %checked_ret.9647.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.9648.5
  %call.ret.root.ptr.9649.6 = bitcast ptr %call.ret.root.9648.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9649.6, ptr %checked_ret.9647.4)
  %gc.frame.lifo.map.ptr.9650.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9651.8 = bitcast ptr %call.ret.root.9648.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9650.7, ptr %gc.frame.lifo.slots.ptr.9651.8)
  %call.ret.current.9652.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9649.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9649.6, ptr null)
  %gc.frame.lifo.leave.ptr.9653.10 = bitcast ptr %call.ret.root.9648.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9653.10)
  %unsafe.ptr_is_null.i.9655.13 = ptrtoint ptr %call.ret.current.9652.9 to i64
  %unsafe.ptr.null.9656.14 = icmp eq i64 %unsafe.ptr_is_null.i.9655.13, 0
  br i1 %unsafe.ptr.null.9656.14, label %if.then.9663, label %cond.right.9657

cond.right.9657:
  %unsafe.addr.9659.16 = getelementptr i8, ptr %call.ret.current.9652.9, i64 32
  %unsafe.addr.cast.9660.17 = bitcast ptr %unsafe.addr.9659.16 to ptr
  %unsafe.load.i64.9661.18 = load i64, ptr %unsafe.addr.cast.9660.17, align 1
  %icmp.9662.19 = icmp eq i64 %unsafe.load.i64.9661.18, 4
  br i1 %icmp.9662.19, label %if.then.9663, label %if.else.9664

if.then.9663:
  ret i64 -1

if.else.9664:
  br label %if.end.9665

if.end.9665:
  %scheduler_lock_ret.9666.20 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.9667.21 = icmp ne i64 %scheduler_lock_ret.9666.20, 0
  br i1 %icmp.9667.21, label %if.then.9668, label %if.else.9669

if.then.9668:
  ret i64 -1

if.else.9669:
  br label %if.end.9670

if.end.9670:
  %unsafe.addr.9672.23 = getelementptr i8, ptr %call.ret.current.9652.9, i64 32
  %unsafe.addr.cast.9673.24 = bitcast ptr %unsafe.addr.9672.23 to ptr
  %unsafe.load.i64.9674.25 = load i64, ptr %unsafe.addr.cast.9673.24, align 1
  %icmp.9675.26 = icmp eq i64 %unsafe.load.i64.9674.25, 4
  br i1 %icmp.9675.26, label %if.then.9676, label %if.else.9677

if.then.9676:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9677:
  br label %if.end.9678

if.end.9678:
  %unsafe.addr.9680.28 = getelementptr i8, ptr %call.ret.current.9652.9, i64 120
  %unsafe.addr.cast.9681.29 = bitcast ptr %unsafe.addr.9680.28 to ptr
  %unsafe.load.i64.9682.30 = load i64, ptr %unsafe.addr.cast.9681.29, align 1
  %icmp.9683.31 = icmp ne i64 %unsafe.load.i64.9682.30, 0
  br i1 %icmp.9683.31, label %if.then.9684, label %if.else.9685

if.then.9684:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9685:
  br label %if.end.9686

if.end.9686:
  %unsafe.addr.9688.33 = getelementptr i8, ptr %call.ret.current.9652.9, i64 32
  %unsafe.addr.cast.9689.34 = bitcast ptr %unsafe.addr.9688.33 to ptr
  store i64 3, ptr %unsafe.addr.cast.9689.34, align 1
  %none.9690.35 = load ptr, ptr @py_None
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 5, i64 0, i64 0, i64 3)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 0
}
define external i64 @py_virtual_thread_unpark(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.9693.5 = alloca ptr
  %checked_ret.9692.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.9693.5
  %call.ret.root.ptr.9694.6 = bitcast ptr %call.ret.root.9693.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9694.6, ptr %checked_ret.9692.4)
  %gc.frame.lifo.map.ptr.9695.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9696.8 = bitcast ptr %call.ret.root.9693.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9695.7, ptr %gc.frame.lifo.slots.ptr.9696.8)
  %call.ret.current.9697.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9694.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9694.6, ptr null)
  %gc.frame.lifo.leave.ptr.9698.10 = bitcast ptr %call.ret.root.9693.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9698.10)
  %unsafe.ptr_is_null.i.9700.13 = ptrtoint ptr %call.ret.current.9697.9 to i64
  %unsafe.ptr.null.9701.14 = icmp eq i64 %unsafe.ptr_is_null.i.9700.13, 0
  br i1 %unsafe.ptr.null.9701.14, label %if.then.9708, label %cond.right.9702

cond.right.9702:
  %unsafe.addr.9704.16 = getelementptr i8, ptr %call.ret.current.9697.9, i64 32
  %unsafe.addr.cast.9705.17 = bitcast ptr %unsafe.addr.9704.16 to ptr
  %unsafe.load.i64.9706.18 = load i64, ptr %unsafe.addr.cast.9705.17, align 1
  %icmp.9707.19 = icmp eq i64 %unsafe.load.i64.9706.18, 4
  br i1 %icmp.9707.19, label %if.then.9708, label %if.else.9709

if.then.9708:
  ret i64 -1

if.else.9709:
  br label %if.end.9710

if.end.9710:
  %scheduler_lock_ret.9711.20 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.9712.21 = icmp ne i64 %scheduler_lock_ret.9711.20, 0
  br i1 %icmp.9712.21, label %if.then.9713, label %if.else.9714

if.then.9713:
  ret i64 -1

if.else.9714:
  br label %if.end.9715

if.end.9715:
  %unsafe.addr.9717.23 = getelementptr i8, ptr %call.ret.current.9697.9, i64 32
  %unsafe.addr.cast.9718.24 = bitcast ptr %unsafe.addr.9717.23 to ptr
  %unsafe.load.i64.9719.25 = load i64, ptr %unsafe.addr.cast.9718.24, align 1
  %icmp.9720.26 = icmp eq i64 %unsafe.load.i64.9719.25, 4
  br i1 %icmp.9720.26, label %if.then.9721, label %if.else.9722

if.then.9721:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9722:
  br label %if.end.9723

if.end.9723:
  %unsafe.addr.9725.28 = getelementptr i8, ptr %call.ret.current.9697.9, i64 120
  %unsafe.addr.cast.9726.29 = bitcast ptr %unsafe.addr.9725.28 to ptr
  %unsafe.load.i64.9727.30 = load i64, ptr %unsafe.addr.cast.9726.29, align 1
  %icmp.9728.31 = icmp sge i64 %unsafe.load.i64.9727.30, 4
  br i1 %icmp.9728.31, label %if.then.9738, label %cond.right.9729

cond.right.9729:
  %unsafe.addr.9731.33 = getelementptr i8, ptr %call.ret.current.9697.9, i64 104
  %unsafe.addr.cast.9732.34 = bitcast ptr %unsafe.addr.9731.33 to ptr
  %unsafe.load.ptr.9733.35 = load ptr, ptr %unsafe.addr.cast.9732.34, align 1
  %unsafe.ptr_is_null.i.9734.36 = ptrtoint ptr %unsafe.load.ptr.9733.35 to i64
  %unsafe.ptr.null.9735.37 = icmp eq i64 %unsafe.ptr_is_null.i.9734.36, 0
  %b2i64.9736.38 = zext i1 %unsafe.ptr.null.9735.37 to i64
  %icmp.9737.39 = icmp eq i64 %b2i64.9736.38, 0
  br i1 %icmp.9737.39, label %if.then.9738, label %if.else.9739

if.then.9738:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9739:
  br label %if.end.9740

if.end.9740:
  %timer_cancel_ret.9742.41 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.9697.9)
  %io_cancel_ret.9744.43 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.9697.9)
  %make_ready_ret.9746.45 = call i64 (ptr) @user_py_virtual_thread_runtime__make_ready(ptr %call.ret.current.9697.9)
  %icmp.9748.48 = icmp eq i64 %make_ready_ret.9746.45, 0
  br i1 %icmp.9748.48, label %if.then.9749, label %if.else.9750

if.then.9749:
  %unsafe.addr.9753.50 = getelementptr i8, ptr %call.ret.current.9697.9, i64 32
  %unsafe.addr.cast.9754.51 = bitcast ptr %unsafe.addr.9753.50 to ptr
  %unsafe.load.i64.9755.52 = load i64, ptr %unsafe.addr.cast.9754.51, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 6, i64 0, i64 0, i64 %unsafe.load.i64.9755.52)
  br label %if.end.9751

if.else.9750:
  br label %if.end.9751

if.end.9751:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %make_ready_ret.9746.45
}
define external i64 @py_virtual_thread_sleep(ptr %vthread, i64 %delay_ms) "no-builtins" {
entry:
  %call.ret.root.9759.7 = alloca ptr
  %checked_ret.9758.6 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.9759.7
  %call.ret.root.ptr.9760.8 = bitcast ptr %call.ret.root.9759.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9760.8, ptr %checked_ret.9758.6)
  %gc.frame.lifo.map.ptr.9761.9 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9762.10 = bitcast ptr %call.ret.root.9759.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9761.9, ptr %gc.frame.lifo.slots.ptr.9762.10)
  %call.ret.current.9763.11 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9760.8)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9760.8, ptr null)
  %gc.frame.lifo.leave.ptr.9764.12 = bitcast ptr %call.ret.root.9759.7 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9764.12)
  %unsafe.ptr_is_null.i.9766.15 = ptrtoint ptr %call.ret.current.9763.11 to i64
  %unsafe.ptr.null.9767.16 = icmp eq i64 %unsafe.ptr_is_null.i.9766.15, 0
  br i1 %unsafe.ptr.null.9767.16, label %if.then.9774, label %cond.right.9768

cond.right.9768:
  %unsafe.addr.9770.18 = getelementptr i8, ptr %call.ret.current.9763.11, i64 32
  %unsafe.addr.cast.9771.19 = bitcast ptr %unsafe.addr.9770.18 to ptr
  %unsafe.load.i64.9772.20 = load i64, ptr %unsafe.addr.cast.9771.19, align 1
  %icmp.9773.21 = icmp eq i64 %unsafe.load.i64.9772.20, 4
  br i1 %icmp.9773.21, label %if.then.9774, label %if.else.9775

if.then.9774:
  ret i64 -1

if.else.9775:
  br label %if.end.9776

if.end.9776:
  %scheduler_lock_ret.9777.22 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.9778.23 = icmp ne i64 %scheduler_lock_ret.9777.22, 0
  br i1 %icmp.9778.23, label %if.then.9779, label %if.else.9780

if.then.9779:
  ret i64 -1

if.else.9780:
  br label %if.end.9781

if.end.9781:
  %unsafe.addr.9783.25 = getelementptr i8, ptr %call.ret.current.9763.11, i64 32
  %unsafe.addr.cast.9784.26 = bitcast ptr %unsafe.addr.9783.25 to ptr
  %unsafe.load.i64.9785.27 = load i64, ptr %unsafe.addr.cast.9784.26, align 1
  %icmp.9786.28 = icmp eq i64 %unsafe.load.i64.9785.27, 4
  br i1 %icmp.9786.28, label %if.then.9787, label %if.else.9788

if.then.9787:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9788:
  br label %if.end.9789

if.end.9789:
  %unsafe.addr.9791.30 = getelementptr i8, ptr %call.ret.current.9763.11, i64 120
  %unsafe.addr.cast.9792.31 = bitcast ptr %unsafe.addr.9791.30 to ptr
  %unsafe.load.i64.9793.32 = load i64, ptr %unsafe.addr.cast.9792.31, align 1
  %icmp.9794.33 = icmp sge i64 %unsafe.load.i64.9793.32, 4
  br i1 %icmp.9794.33, label %if.then.9804, label %cond.right.9795

cond.right.9795:
  %unsafe.addr.9797.35 = getelementptr i8, ptr %call.ret.current.9763.11, i64 104
  %unsafe.addr.cast.9798.36 = bitcast ptr %unsafe.addr.9797.35 to ptr
  %unsafe.load.ptr.9799.37 = load ptr, ptr %unsafe.addr.cast.9798.36, align 1
  %unsafe.ptr_is_null.i.9800.38 = ptrtoint ptr %unsafe.load.ptr.9799.37 to i64
  %unsafe.ptr.null.9801.39 = icmp eq i64 %unsafe.ptr_is_null.i.9800.38, 0
  %b2i64.9802.40 = zext i1 %unsafe.ptr.null.9801.39 to i64
  %icmp.9803.41 = icmp eq i64 %b2i64.9802.40, 0
  br i1 %icmp.9803.41, label %if.then.9804, label %if.else.9805

if.then.9804:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.9805:
  br label %if.end.9806

if.end.9806:
  %icmp.9808.43 = icmp sle i64 %delay_ms, 0
  br i1 %icmp.9808.43, label %if.then.9809, label %if.else.9810

if.then.9809:
  %io_cancel_ret.9813.45 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.9763.11)
  %timer_cancel_ret.9815.47 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.9763.11)
  %make_ready_ret.9817.49 = call i64 (ptr) @user_py_virtual_thread_runtime__make_ready(ptr %call.ret.current.9763.11)
  %icmp.9819.52 = icmp eq i64 %make_ready_ret.9817.49, 0
  br i1 %icmp.9819.52, label %if.then.9820, label %if.else.9821

if.else.9810:
  br label %if.end.9811

if.end.9811:
  %now_ms_ret.9829.59 = call i64 () @user_py_virtual_thread_runtime__now_ms()
  %add.9831.61 = add i64 %now_ms_ret.9829.59, %delay_ms
  %timer_add_ret.9832.62 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__timer_add(ptr %call.ret.current.9763.11, i64 %add.9831.61)
  %icmp.9834.64 = icmp eq i64 %timer_add_ret.9832.62, 0
  br i1 %icmp.9834.64, label %if.then.9835, label %if.else.9836

if.then.9820:
  %unsafe.addr.9824.54 = getelementptr i8, ptr %call.ret.current.9763.11, i64 32
  %unsafe.addr.cast.9825.55 = bitcast ptr %unsafe.addr.9824.54 to ptr
  %unsafe.load.i64.9826.56 = load i64, ptr %unsafe.addr.cast.9825.55, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 6, i64 0, i64 0, i64 %unsafe.load.i64.9826.56)
  br label %if.end.9822

if.else.9821:
  br label %if.end.9822

if.end.9822:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %make_ready_ret.9817.49

if.then.9835:
  %io_cancel_ret.9839.66 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.9763.11)
  br label %if.end.9837

if.else.9836:
  br label %if.end.9837

if.end.9837:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %timer_add_ret.9832.62
}
define external i64 @py_virtual_thread_cancel(ptr %vthread) "no-builtins" {
strict.nolib.stub:
  %.297 = getelementptr inbounds [86 x i8], ptr @.strict.nolib.msg.32, i32 0, i32 0
  %strict.nolib.exc.13264.298 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.297)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.13264.298)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.13264.298)
  ret i64 0
}
define external i64 @py_virtual_thread_cancel_requested(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.12842.5 = alloca ptr
  %checked_ret.12841.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.12842.5
  %call.ret.root.ptr.12843.6 = bitcast ptr %call.ret.root.12842.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12843.6, ptr %checked_ret.12841.4)
  %gc.frame.lifo.map.ptr.12844.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12845.8 = bitcast ptr %call.ret.root.12842.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12844.7, ptr %gc.frame.lifo.slots.ptr.12845.8)
  %call.ret.current.12846.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.12843.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12843.6, ptr null)
  %gc.frame.lifo.leave.ptr.12847.10 = bitcast ptr %call.ret.root.12842.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12847.10)
  %unsafe.ptr_is_null.i.12849.13 = ptrtoint ptr %call.ret.current.12846.9 to i64
  %unsafe.ptr.null.12850.14 = icmp eq i64 %unsafe.ptr_is_null.i.12849.13, 0
  br i1 %unsafe.ptr.null.12850.14, label %if.then.12851, label %if.else.12852

if.then.12851:
  ret i64 -1

if.else.12852:
  br label %if.end.12853

if.end.12853:
  %scheduler_lock_ret.12854.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12855.16 = icmp ne i64 %scheduler_lock_ret.12854.15, 0
  br i1 %icmp.12855.16, label %if.then.12856, label %if.else.12857

if.then.12856:
  ret i64 -1

if.else.12857:
  br label %if.end.12858

if.end.12858:
  %unsafe.addr.12860.18 = getelementptr i8, ptr %call.ret.current.12846.9, i64 128
  %unsafe.addr.cast.12861.19 = bitcast ptr %unsafe.addr.12860.18 to ptr
  %unsafe.load.i64.12862.20 = load i64, ptr %unsafe.addr.cast.12861.19, align 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.12862.20
}
define external i64 @py_virtual_thread_cancel_complete(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.13336.5 = alloca ptr
  %join_node.addr.32 = alloca ptr
  store ptr null, ptr %join_node.addr.32
  %call.ret.root.13389.43 = alloca ptr
  %checked_ret.13335.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.13336.5
  %call.ret.root.ptr.13337.6 = bitcast ptr %call.ret.root.13336.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13337.6, ptr %checked_ret.13335.4)
  %gc.frame.lifo.map.ptr.13338.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.13339.8 = bitcast ptr %call.ret.root.13336.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.13338.7, ptr %gc.frame.lifo.slots.ptr.13339.8)
  %call.ret.current.13340.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.13337.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13337.6, ptr null)
  %gc.frame.lifo.leave.ptr.13341.10 = bitcast ptr %call.ret.root.13336.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.13341.10)
  %unsafe.ptr_is_null.i.13343.13 = ptrtoint ptr %call.ret.current.13340.9 to i64
  %unsafe.ptr.null.13344.14 = icmp eq i64 %unsafe.ptr_is_null.i.13343.13, 0
  %gc.frame.map.ptr.13400.53 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.13401.54 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13400.53, ptr %gc.frame.slots.ptr.13401.54)
  br i1 %unsafe.ptr.null.13344.14, label %if.then.13345, label %if.else.13346

if.then.13345:
  %gc.frame.leave.ptr.13402.55 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13402.55)
  ret i64 -1

if.else.13346:
  br label %if.end.13347

if.end.13347:
  %scheduler_lock_ret.13348.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.13349.16 = icmp ne i64 %scheduler_lock_ret.13348.15, 0
  br i1 %icmp.13349.16, label %if.then.13350, label %if.else.13351

if.then.13350:
  %gc.frame.leave.ptr.13403.56 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13403.56)
  ret i64 -1

if.else.13351:
  br label %if.end.13352

if.end.13352:
  %unsafe.addr.13354.18 = getelementptr i8, ptr %call.ret.current.13340.9, i64 32
  %unsafe.addr.cast.13355.19 = bitcast ptr %unsafe.addr.13354.18 to ptr
  %unsafe.load.i64.13356.20 = load i64, ptr %unsafe.addr.cast.13355.19, align 1
  %icmp.13357.21 = icmp eq i64 %unsafe.load.i64.13356.20, 4
  br i1 %icmp.13357.21, label %if.then.13358, label %if.else.13359

if.then.13358:
  %unsafe.addr.13362.23 = getelementptr i8, ptr %call.ret.current.13340.9, i64 80
  %unsafe.addr.cast.13363.24 = bitcast ptr %unsafe.addr.13362.23 to ptr
  %unsafe.load.i64.13364.25 = load i64, ptr %unsafe.addr.cast.13363.24, align 1
  %icmp.13365.26 = icmp eq i64 %unsafe.load.i64.13364.25, 3
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %icmp.13365.26, label %if.then.13367, label %if.else.13368

if.else.13359:
  br label %if.end.13360

if.end.13360:
  %channel_terminal_cleanup_locked_ret.13371.30 = call i64 (ptr) @user_py_virtual_thread_runtime__channel_terminal_cleanup_locked(ptr %call.ret.current.13340.9)
  %icmp.13372.31 = icmp slt i64 %channel_terminal_cleanup_locked_ret.13371.30, 0
  br i1 %icmp.13372.31, label %if.then.13373, label %if.else.13374

if.then.13367:
  %gc.frame.leave.ptr.13404.57 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13404.57)
  ret i64 0

if.else.13368:
  br label %if.end.13369

if.end.13369:
  %gc.frame.leave.ptr.13405.58 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13405.58)
  ret i64 -1

if.then.13373:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %gc.frame.leave.ptr.13406.59 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13406.59)
  ret i64 -1

if.else.13374:
  br label %if.end.13375

if.end.13375:
  store ptr null, ptr %join_node.addr.32
  %unsafe.addr.13377.34 = getelementptr i8, ptr %call.ret.current.13340.9, i64 104
  %unsafe.addr.cast.13378.35 = bitcast ptr %unsafe.addr.13377.34 to ptr
  %unsafe.load.ptr.13379.36 = load ptr, ptr %unsafe.addr.cast.13378.35, align 1
  %unsafe.ptr_is_null.i.13380.37 = ptrtoint ptr %unsafe.load.ptr.13379.36 to i64
  %unsafe.ptr.null.13381.38 = icmp eq i64 %unsafe.ptr_is_null.i.13380.37, 0
  %b2i64.13382.39 = zext i1 %unsafe.ptr.null.13381.38 to i64
  %icmp.13383.40 = icmp eq i64 %b2i64.13382.39, 0
  br i1 %icmp.13383.40, label %if.then.13384, label %if.else.13385

if.then.13384:
  %join_unlink_waiter_ret.13388.42 = call ptr (ptr) @user_py_virtual_thread_runtime__join_unlink_waiter(ptr %call.ret.current.13340.9)
  store ptr null, ptr %call.ret.root.13389.43
  %call.ret.root.ptr.13390.44 = bitcast ptr %call.ret.root.13389.43 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13390.44, ptr %join_unlink_waiter_ret.13388.42)
  %gc.frame.lifo.map.ptr.13391.45 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.13392.46 = bitcast ptr %call.ret.root.13389.43 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.13391.45, ptr %gc.frame.lifo.slots.ptr.13392.46)
  %call.ret.current.13393.47 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.13390.44)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13390.44, ptr null)
  %gc.frame.lifo.leave.ptr.13394.48 = bitcast ptr %call.ret.root.13389.43 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.13394.48)
  br i1 0, label %join_node.owned.release.13396, label %join_node.owned.cont.13397

if.else.13385:
  br label %if.end.13386

if.end.13386:
  %join_node.owned.49.phi = phi i1 [ 0, %if.else.13385 ], [ 1, %if.end.13413 ]
  %join_node.gc.slot.13419.67 = bitcast ptr %join_node.addr.32 to ptr
  %join_node.13420.68 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.13419.67)
  %unsafe.ptr_is_null.i.13421.69 = ptrtoint ptr %join_node.13420.68 to i64
  %unsafe.ptr.null.13422.70 = icmp eq i64 %unsafe.ptr_is_null.i.13421.69, 0
  %b2i64.13423.71 = zext i1 %unsafe.ptr.null.13422.70 to i64
  %icmp.13424.72 = icmp eq i64 %b2i64.13423.71, 0
  br i1 %icmp.13424.72, label %if.then.13425, label %if.else.13426

join_node.owned.release.13396:
  %join_node.release.gc.slot.13398.51 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.13398.51, ptr null)
  br label %join_node.owned.cont.13397

join_node.owned.cont.13397:
  %join_node.owned.resolve.13399.52 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.13393.47)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %join_node.owned.resolve.13399.52)
  store ptr %join_node.owned.resolve.13399.52, ptr %join_node.addr.32
  %join_node.gc.slot.13407.60 = bitcast ptr %join_node.addr.32 to ptr
  %join_node.13408.61 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.13407.60)
  %unsafe.ptr_is_null.i.13409.62 = ptrtoint ptr %join_node.13408.61 to i64
  %unsafe.ptr.null.13410.63 = icmp eq i64 %unsafe.ptr_is_null.i.13409.62, 0
  br i1 %unsafe.ptr.null.13410.63, label %if.then.13411, label %if.else.13412

if.then.13411:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %join_node.owned.release.13415, label %join_node.owned.cont.13416

if.else.13412:
  br label %if.end.13413

if.end.13413:
  br label %if.end.13386

join_node.owned.release.13415:
  %join_node.release.gc.slot.13417.65 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.13417.65, ptr null)
  br label %join_node.owned.cont.13416

join_node.owned.cont.13416:
  %gc.frame.leave.ptr.13418.66 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13418.66)
  ret i64 -1

if.then.13425:
  %join_node.gc.slot.13428.73 = bitcast ptr %join_node.addr.32 to ptr
  %join_node.13429.74 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.13428.73)
  call void (ptr) @user_py_virtual_thread_runtime__join_release(ptr %join_node.13429.74)
  br label %if.end.13427

if.else.13426:
  br label %if.end.13427

if.end.13427:
  %timer_cancel_ret.13431.76 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.13340.9)
  %io_cancel_ret.13433.78 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.13340.9)
  %cancel_publish_locked_ret.13435.80 = call i64 (ptr) @user_py_virtual_thread_runtime__cancel_publish_locked(ptr %call.ret.current.13340.9)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.49.phi, label %join_node.owned.release.13438, label %join_node.owned.cont.13439

join_node.owned.release.13438:
  %join_node.release.gc.slot.13440.84 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.13440.84, ptr null)
  br label %join_node.owned.cont.13439

join_node.owned.cont.13439:
  %gc.frame.leave.ptr.13441.85 = bitcast ptr %join_node.addr.32 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13441.85)
  ret i64 %cancel_publish_locked_ret.13435.80
}
define external i64 @py_virtual_thread_cancel_timer(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.9843.5 = alloca ptr
  %checked_ret.9842.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.9843.5
  %call.ret.root.ptr.9844.6 = bitcast ptr %call.ret.root.9843.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9844.6, ptr %checked_ret.9842.4)
  %gc.frame.lifo.map.ptr.9845.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9846.8 = bitcast ptr %call.ret.root.9843.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9845.7, ptr %gc.frame.lifo.slots.ptr.9846.8)
  %call.ret.current.9847.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9844.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9844.6, ptr null)
  %gc.frame.lifo.leave.ptr.9848.10 = bitcast ptr %call.ret.root.9843.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9848.10)
  %unsafe.ptr_is_null.i.9850.13 = ptrtoint ptr %call.ret.current.9847.9 to i64
  %unsafe.ptr.null.9851.14 = icmp eq i64 %unsafe.ptr_is_null.i.9850.13, 0
  br i1 %unsafe.ptr.null.9851.14, label %if.then.9852, label %if.else.9853

if.then.9852:
  ret i64 -1

if.else.9853:
  br label %if.end.9854

if.end.9854:
  %scheduler_lock_ret.9855.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.9856.16 = icmp ne i64 %scheduler_lock_ret.9855.15, 0
  br i1 %icmp.9856.16, label %if.then.9857, label %if.else.9858

if.then.9857:
  ret i64 -1

if.else.9858:
  br label %if.end.9859

if.end.9859:
  %timer_cancel_ret.9861.18 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.9847.9)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %timer_cancel_ret.9861.18
}
define external i64 @py_virtual_thread_poll_timers() "no-builtins" {
strict.nolib.stub:
  %.222 = getelementptr inbounds [91 x i8], ptr @.strict.nolib.msg.29, i32 0, i32 0
  %strict.nolib.exc.10154.223 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.222)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.10154.223)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.10154.223)
  ret i64 0
}
define external i64 @py_virtual_thread_timer_count() "no-builtins" {
entry:
  %scheduler_lock_ret.10155.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10156.2 = icmp ne i64 %scheduler_lock_ret.10155.1, 0
  br i1 %icmp.10156.2, label %if.then.10157, label %if.else.10158

if.then.10157:
  ret i64 -1

if.else.10158:
  br label %if.end.10159

if.end.10159:
  %unsafe.global.load.ptr.10160.4 = load ptr, ptr @pcc_vthread_timer_head_py
  br label %while.cond.10161

while.cond.10161:
  %count.addr.3.phi = phi i64 [ 0, %if.end.10159 ], [ %add.10171.12, %while.latch.10163 ]
  %node.addr.5.phi = phi ptr [ %unsafe.global.load.ptr.10160.4, %if.end.10159 ], [ %unsafe.load.ptr.10175.16, %while.latch.10163 ]
  %unsafe.ptr_is_null.i.10166.7 = ptrtoint ptr %node.addr.5.phi to i64
  %unsafe.ptr.null.10167.8 = icmp eq i64 %unsafe.ptr_is_null.i.10166.7, 0
  %b2i64.10168.9 = zext i1 %unsafe.ptr.null.10167.8 to i64
  %icmp.10169.10 = icmp eq i64 %b2i64.10168.9, 0
  br i1 %icmp.10169.10, label %while.body.10162, label %while.end.10164

while.body.10162:
  %add.10171.12 = add i64 %count.addr.3.phi, 1
  %unsafe.addr.10173.14 = getelementptr i8, ptr %node.addr.5.phi, i64 16
  %unsafe.addr.cast.10174.15 = bitcast ptr %unsafe.addr.10173.14 to ptr
  %unsafe.load.ptr.10175.16 = load ptr, ptr %unsafe.addr.cast.10174.15, align 1
  br label %while.latch.10163

while.latch.10163:
  br label %while.cond.10161

while.end.10164:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %count.addr.3.phi
}
define external i64 @py_virtual_thread_block_on_fd(ptr %vthread, i64 %fd, i64 %events, i64 %timeout_ms) "no-builtins" {
entry:
  %call.ret.root.10612.11 = alloca ptr
  %checked_ret.10611.10 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.10612.11
  %call.ret.root.ptr.10613.12 = bitcast ptr %call.ret.root.10612.11 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10613.12, ptr %checked_ret.10611.10)
  %gc.frame.lifo.map.ptr.10614.13 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10615.14 = bitcast ptr %call.ret.root.10612.11 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10614.13, ptr %gc.frame.lifo.slots.ptr.10615.14)
  %call.ret.current.10616.15 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10613.12)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10613.12, ptr null)
  %gc.frame.lifo.leave.ptr.10617.16 = bitcast ptr %call.ret.root.10612.11 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10617.16)
  %unsafe.ptr_is_null.i.10619.19 = ptrtoint ptr %call.ret.current.10616.15 to i64
  %unsafe.ptr.null.10620.20 = icmp eq i64 %unsafe.ptr_is_null.i.10619.19, 0
  br i1 %unsafe.ptr.null.10620.20, label %if.then.10630, label %cond.right.10621

cond.right.10621:
  %unsafe.addr.10623.22 = getelementptr i8, ptr %call.ret.current.10616.15, i64 32
  %unsafe.addr.cast.10624.23 = bitcast ptr %unsafe.addr.10623.22 to ptr
  %unsafe.load.i64.10625.24 = load i64, ptr %unsafe.addr.cast.10624.23, align 1
  %icmp.10626.25 = icmp eq i64 %unsafe.load.i64.10625.24, 4
  br i1 %icmp.10626.25, label %if.then.10630, label %cond.right.10627

cond.right.10627:
  %icmp.10629.27 = icmp slt i64 %fd, 0
  br i1 %icmp.10629.27, label %if.then.10630, label %if.else.10631

if.then.10630:
  ret i64 -1

if.else.10631:
  br label %if.end.10632

if.end.10632:
  %icmp.10634.29 = icmp eq i64 %events, 0
  br i1 %icmp.10634.29, label %if.then.10635, label %if.else.10636

if.then.10635:
  br label %if.end.10637

if.else.10636:
  br label %if.end.10637

if.end.10637:
  %events.addr.7.phi = phi i64 [ 1, %if.then.10635 ], [ %events, %if.else.10636 ]
  %scheduler_lock_ret.10638.30 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10639.31 = icmp ne i64 %scheduler_lock_ret.10638.30, 0
  br i1 %icmp.10639.31, label %if.then.10640, label %if.else.10641

if.then.10640:
  ret i64 -1

if.else.10641:
  br label %if.end.10642

if.end.10642:
  %unsafe.addr.10644.33 = getelementptr i8, ptr %call.ret.current.10616.15, i64 32
  %unsafe.addr.cast.10645.34 = bitcast ptr %unsafe.addr.10644.33 to ptr
  %unsafe.load.i64.10646.35 = load i64, ptr %unsafe.addr.cast.10645.34, align 1
  %icmp.10647.36 = icmp eq i64 %unsafe.load.i64.10646.35, 4
  br i1 %icmp.10647.36, label %if.then.10648, label %if.else.10649

if.then.10648:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10649:
  br label %if.end.10650

if.end.10650:
  %unsafe.addr.10652.38 = getelementptr i8, ptr %call.ret.current.10616.15, i64 120
  %unsafe.addr.cast.10653.39 = bitcast ptr %unsafe.addr.10652.38 to ptr
  %unsafe.load.i64.10654.40 = load i64, ptr %unsafe.addr.cast.10653.39, align 1
  %icmp.10655.41 = icmp sge i64 %unsafe.load.i64.10654.40, 4
  br i1 %icmp.10655.41, label %if.then.10665, label %cond.right.10656

cond.right.10656:
  %unsafe.addr.10658.43 = getelementptr i8, ptr %call.ret.current.10616.15, i64 104
  %unsafe.addr.cast.10659.44 = bitcast ptr %unsafe.addr.10658.43 to ptr
  %unsafe.load.ptr.10660.45 = load ptr, ptr %unsafe.addr.cast.10659.44, align 1
  %unsafe.ptr_is_null.i.10661.46 = ptrtoint ptr %unsafe.load.ptr.10660.45 to i64
  %unsafe.ptr.null.10662.47 = icmp eq i64 %unsafe.ptr_is_null.i.10661.46, 0
  %b2i64.10663.48 = zext i1 %unsafe.ptr.null.10662.47 to i64
  %icmp.10664.49 = icmp eq i64 %b2i64.10663.48, 0
  br i1 %icmp.10664.49, label %if.then.10665, label %if.else.10666

if.then.10665:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10666:
  br label %if.end.10667

if.end.10667:
  %unsafe.poll_fd.records.10670.52 = alloca [1 x i64]
  %.53 = bitcast ptr %unsafe.poll_fd.records.10670.52 to ptr
  %unsafe.addr.10671.54 = getelementptr i8, ptr %.53, i64 0
  %unsafe.addr.cast.10672.55 = bitcast ptr %unsafe.addr.10671.54 to ptr
  %unsafe.addr.10673.56 = getelementptr i8, ptr %.53, i64 4
  %unsafe.addr.cast.10674.57 = bitcast ptr %unsafe.addr.10673.56 to ptr
  %unsafe.addr.10675.58 = getelementptr i8, ptr %.53, i64 6
  %unsafe.addr.cast.10676.59 = bitcast ptr %unsafe.addr.10675.58 to ptr
  %.60 = trunc i64 %fd to i32
  store i32 %.60, ptr %unsafe.addr.cast.10672.55
  %.61 = trunc i64 %events.addr.7.phi to i16
  store i16 %.61, ptr %unsafe.addr.cast.10674.57
  store i16 0, ptr %unsafe.addr.cast.10676.59
  %.62 = ptrtoint ptr %.53 to i64
  %unsafe.poll_fd.syscall.10677.63 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 7, i64 %.62, i64 1, i64 0, i64 0, i64 0, i64 0)
  %.64 = load i16, ptr %unsafe.addr.cast.10676.59
  %.65 = icmp ne i16 %.64, 0
  %.66 = load i16, ptr %unsafe.addr.cast.10676.59
  %.67 = zext i16 %.66 to i64
  %.68 = icmp slt i64 %unsafe.poll_fd.syscall.10677.63, 0
  %unsafe.poll_fd.result.10678.69 = select i1 %.68, i64 %unsafe.poll_fd.syscall.10677.63, i64 %.67
  %icmp.10680.72 = icmp slt i64 %unsafe.poll_fd.result.10678.69, 0
  br i1 %icmp.10680.72, label %if.then.10681, label %if.else.10682

if.then.10681:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10682:
  br label %if.end.10683

if.end.10683:
  %timer_cancel_ret.10685.74 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.10616.15)
  %io_cancel_ret.10687.76 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.10616.15)
  %icmp.10689.78 = icmp ne i64 %unsafe.poll_fd.result.10678.69, 0
  br i1 %icmp.10689.78, label %if.then.10690, label %if.else.10691

if.then.10690:
  %unsafe.addr.10694.80 = getelementptr i8, ptr %call.ret.current.10616.15, i64 32
  %unsafe.addr.cast.10695.81 = bitcast ptr %unsafe.addr.10694.80 to ptr
  %unsafe.load.i64.10696.82 = load i64, ptr %unsafe.addr.cast.10695.81, align 1
  %icmp.10697.83 = icmp eq i64 %unsafe.load.i64.10696.82, 2
  br i1 %icmp.10697.83, label %if.then.10698, label %if.else.10699

if.else.10691:
  br label %if.end.10692

if.end.10692:
  %icmp.10708.89 = icmp sge i64 %timeout_ms, 0
  br i1 %icmp.10708.89, label %if.then.10709, label %if.else.10710

if.then.10698:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 1

if.else.10699:
  br label %if.end.10700

if.end.10700:
  %make_ready_ret.10702.85 = call i64 (ptr) @user_py_virtual_thread_runtime__make_ready(ptr %call.ret.current.10616.15)
  %icmp.10703.86 = icmp ne i64 %make_ready_ret.10702.85, 0
  br i1 %icmp.10703.86, label %if.then.10704, label %if.else.10705

if.then.10704:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10705:
  br label %if.end.10706

if.end.10706:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 1

if.then.10709:
  %now_ms_ret.10712.90 = call i64 () @user_py_virtual_thread_runtime__now_ms()
  %add.10714.92 = add i64 %now_ms_ret.10712.90, %timeout_ms
  br label %if.end.10711

if.else.10710:
  br label %if.end.10711

if.end.10711:
  %deadline.addr.87.phi = phi i64 [ %add.10714.92, %if.then.10709 ], [ -1, %if.else.10710 ]
  %unsafe.addr.10716.94 = getelementptr i8, ptr %call.ret.current.10616.15, i64 32
  %unsafe.addr.cast.10717.95 = bitcast ptr %unsafe.addr.10716.94 to ptr
  store i64 3, ptr %unsafe.addr.cast.10717.95, align 1
  %none.10718.96 = load ptr, ptr @py_None
  %io_add_ret.10723.101 = call i64 (ptr, i64, i64, i64) @user_py_virtual_thread_runtime__io_add(ptr %call.ret.current.10616.15, i64 %fd, i64 %events.addr.7.phi, i64 %deadline.addr.87.phi)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %io_add_ret.10723.101
}
define external i64 @py_virtual_thread_poll_io(i64 %timeout_ms) "no-builtins" {
strict.nolib.stub:
  %.529 = getelementptr inbounds [87 x i8], ptr @.strict.nolib.msg.30, i32 0, i32 0
  %strict.nolib.exc.11407.530 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.529)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.11407.530)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.11407.530)
  ret i64 0
}
define external i64 @py_virtual_thread_io_wait_count() "no-builtins" {
entry:
  %scheduler_lock_ret.11408.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11409.2 = icmp ne i64 %scheduler_lock_ret.11408.1, 0
  br i1 %icmp.11409.2, label %if.then.11410, label %if.else.11411

if.then.11410:
  ret i64 -1

if.else.11411:
  br label %if.end.11412

if.end.11412:
  %unsafe.global.addr.11413.3 = bitcast ptr @pcc_vthread_io_count_py to ptr
  %counter_ret.11414.4 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11413.3)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %counter_ret.11414.4
}
define external i64 @py_virtual_thread_io_wait_active() "no-builtins" {
entry:
  %scheduler_lock_ret.11416.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11417.2 = icmp ne i64 %scheduler_lock_ret.11416.1, 0
  br i1 %icmp.11417.2, label %if.then.11418, label %if.else.11419

if.then.11418:
  ret i64 0

if.else.11419:
  br label %if.end.11420

if.end.11420:
  %unsafe.global.addr.11421.3 = bitcast ptr @pcc_vthread_wait_active_py to ptr
  %unsafe.addr.11422.4 = getelementptr i8, ptr %unsafe.global.addr.11421.3, i64 0
  %unsafe.addr.cast.11423.5 = bitcast ptr %unsafe.addr.11422.4 to ptr
  %unsafe.load.i32.11424.6 = load i32, ptr %unsafe.addr.cast.11423.5, align 1
  %unsafe.i32.to.i64.11425.7 = sext i32 %unsafe.load.i32.11424.6 to i64
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %icmp.11427.10 = icmp ne i64 %unsafe.i32.to.i64.11425.7, 0
  br i1 %icmp.11427.10, label %if.then.11428, label %if.else.11429

if.then.11428:
  ret i64 1

if.else.11429:
  br label %if.end.11430

if.end.11430:
  ret i64 0
}
define external i64 @py_virtual_thread_io_resource_register(i64 %fd) "no-builtins" {
entry:
  %call.ret.root.10187.9 = alloca ptr
  %icmp.10178.4 = icmp slt i64 %fd, 0
  br i1 %icmp.10178.4, label %if.then.10182, label %cond.right.10179

cond.right.10179:
  %scheduler_lock_ret.10180.5 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10181.6 = icmp ne i64 %scheduler_lock_ret.10180.5, 0
  br i1 %icmp.10181.6, label %if.then.10182, label %if.else.10183

if.then.10182:
  ret i64 -1

if.else.10183:
  br label %if.end.10184

if.end.10184:
  %io_resource_find_ret.10186.8 = call ptr (i64) @user_py_virtual_thread_runtime__io_resource_find(i64 %fd)
  store ptr null, ptr %call.ret.root.10187.9
  %call.ret.root.ptr.10188.10 = bitcast ptr %call.ret.root.10187.9 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10188.10, ptr %io_resource_find_ret.10186.8)
  %gc.frame.lifo.map.ptr.10189.11 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10190.12 = bitcast ptr %call.ret.root.10187.9 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10189.11, ptr %gc.frame.lifo.slots.ptr.10190.12)
  %call.ret.current.10191.13 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10188.10)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10188.10, ptr null)
  %gc.frame.lifo.leave.ptr.10192.14 = bitcast ptr %call.ret.root.10187.9 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10192.14)
  %unsafe.ptr_is_null.i.10193.15 = ptrtoint ptr %call.ret.current.10191.13 to i64
  %unsafe.ptr.null.10194.16 = icmp eq i64 %unsafe.ptr_is_null.i.10193.15, 0
  %b2i64.10195.17 = zext i1 %unsafe.ptr.null.10194.16 to i64
  %icmp.10196.18 = icmp eq i64 %b2i64.10195.17, 0
  br i1 %icmp.10196.18, label %if.then.10197, label %if.else.10198

if.then.10197:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10198:
  br label %if.end.10199

if.end.10199:
  %unsafe.global.addr.10200.19 = bitcast ptr @pcc_vthread_io_resource_generation_py to ptr
  %counter_ret.10201.20 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.10200.19)
  %icmp.10203.23 = icmp sge i64 %counter_ret.10201.20, 9223372036854775807
  br i1 %icmp.10203.23, label %if.then.10204, label %if.else.10205

if.then.10204:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10205:
  br label %if.end.10206

if.end.10206:
  %add.10208.25 = add i64 %counter_ret.10201.20, 1
  %unsafe.malloc.10209.26 = call ptr (i64) @malloc(i64 24)
  %unsafe.ptr_is_null.i.10211.29 = ptrtoint ptr %unsafe.malloc.10209.26 to i64
  %unsafe.ptr.null.10212.30 = icmp eq i64 %unsafe.ptr_is_null.i.10211.29, 0
  br i1 %unsafe.ptr.null.10212.30, label %if.then.10213, label %if.else.10214

if.then.10213:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.10214:
  br label %if.end.10215

if.end.10215:
  %unsafe.addr.10217.32 = getelementptr i8, ptr %unsafe.malloc.10209.26, i64 0
  %unsafe.addr.cast.10218.33 = bitcast ptr %unsafe.addr.10217.32 to ptr
  store i64 %fd, ptr %unsafe.addr.cast.10218.33, align 1
  %none.10220.35 = load ptr, ptr @py_None
  %unsafe.addr.10222.37 = getelementptr i8, ptr %unsafe.malloc.10209.26, i64 8
  %unsafe.addr.cast.10223.38 = bitcast ptr %unsafe.addr.10222.37 to ptr
  store i64 %add.10208.25, ptr %unsafe.addr.cast.10223.38, align 1
  %none.10225.40 = load ptr, ptr @py_None
  %unsafe.addr.10227.42 = getelementptr i8, ptr %unsafe.malloc.10209.26, i64 16
  %unsafe.addr.cast.10228.43 = bitcast ptr %unsafe.addr.10227.42 to ptr
  %unsafe.global.load.ptr.10229.44 = load ptr, ptr @pcc_vthread_io_resource_head_py
  store ptr %unsafe.global.load.ptr.10229.44, ptr %unsafe.addr.cast.10228.43, align 1
  %none.10230.45 = load ptr, ptr @py_None
  store ptr %unsafe.malloc.10209.26, ptr @pcc_vthread_io_resource_head_py
  %none.10232.47 = load ptr, ptr @py_None
  %unsafe.global.addr.10233.48 = bitcast ptr @pcc_vthread_io_resource_generation_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.10233.48, i64 %add.10208.25)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %add.10208.25
}
define external i64 @py_virtual_thread_io_resource_generation(i64 %fd) "no-builtins" {
entry:
  %call.ret.root.10248.11 = alloca ptr
  %node.addr.17 = alloca ptr
  store ptr null, ptr %node.addr.17
  %icmp.10237.4 = icmp slt i64 %fd, 0
  %gc.frame.map.ptr.10259.22 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.10260.23 = bitcast ptr %node.addr.17 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.10259.22, ptr %gc.frame.slots.ptr.10260.23)
  br i1 %icmp.10237.4, label %if.then.10241, label %cond.right.10238

cond.right.10238:
  %scheduler_lock_ret.10239.5 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10240.6 = icmp ne i64 %scheduler_lock_ret.10239.5, 0
  br i1 %icmp.10240.6, label %if.then.10241, label %if.else.10242

if.then.10241:
  %.7 = getelementptr inbounds [27 x i8], ptr @unsafe.cstr.10244, i32 0, i32 0
  %extern.py_exc_new.ret.10245.8 = call ptr (i64, ptr) @py_exc_new(i64 14, ptr %.7)
  call void (ptr) @py_raise_owned(ptr %extern.py_exc_new.ret.10245.8)
  %gc.frame.leave.ptr.10261.24 = bitcast ptr %node.addr.17 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10261.24)
  ret i64 -1

if.else.10242:
  br label %if.end.10243

if.end.10243:
  %io_resource_find_ret.10247.10 = call ptr (i64) @user_py_virtual_thread_runtime__io_resource_find(i64 %fd)
  store ptr null, ptr %call.ret.root.10248.11
  %call.ret.root.ptr.10249.12 = bitcast ptr %call.ret.root.10248.11 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10249.12, ptr %io_resource_find_ret.10247.10)
  %gc.frame.lifo.map.ptr.10250.13 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10251.14 = bitcast ptr %call.ret.root.10248.11 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10250.13, ptr %gc.frame.lifo.slots.ptr.10251.14)
  %call.ret.current.10252.15 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10249.12)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10249.12, ptr null)
  %gc.frame.lifo.leave.ptr.10253.16 = bitcast ptr %call.ret.root.10248.11 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10253.16)
  br i1 0, label %node.owned.release.10255, label %node.owned.cont.10256

node.owned.release.10255:
  %node.release.gc.slot.10257.20 = bitcast ptr %node.addr.17 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.10257.20, ptr null)
  br label %node.owned.cont.10256

node.owned.cont.10256:
  %node.owned.resolve.10258.21 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.10252.15)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.10258.21)
  store ptr %node.owned.resolve.10258.21, ptr %node.addr.17
  %node.gc.slot.10262.26 = bitcast ptr %node.addr.17 to ptr
  %node.10263.27 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.10262.26)
  %unsafe.ptr_is_null.i.10264.28 = ptrtoint ptr %node.10263.27 to i64
  %unsafe.ptr.null.10265.29 = icmp eq i64 %unsafe.ptr_is_null.i.10264.28, 0
  %b2i64.10266.30 = zext i1 %unsafe.ptr.null.10265.29 to i64
  %icmp.10267.31 = icmp eq i64 %b2i64.10266.30, 0
  br i1 %icmp.10267.31, label %if.then.10268, label %if.else.10269

if.then.10268:
  %node.gc.slot.10271.32 = bitcast ptr %node.addr.17 to ptr
  %node.10272.33 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.10271.32)
  %unsafe.addr.10273.34 = getelementptr i8, ptr %node.10272.33, i64 8
  %unsafe.addr.cast.10274.35 = bitcast ptr %unsafe.addr.10273.34 to ptr
  %unsafe.load.i64.10275.36 = load i64, ptr %unsafe.addr.cast.10274.35, align 1
  br label %if.end.10270

if.else.10269:
  br label %if.end.10270

if.end.10270:
  %generation.addr.25.phi = phi i64 [ %unsafe.load.i64.10275.36, %if.then.10268 ], [ -1, %if.else.10269 ]
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %icmp.10277.38 = icmp slt i64 %generation.addr.25.phi, 0
  br i1 %icmp.10277.38, label %if.then.10278, label %if.else.10279

if.then.10278:
  %.39 = getelementptr inbounds [27 x i8], ptr @unsafe.cstr.10281, i32 0, i32 0
  %extern.py_exc_new.ret.10282.40 = call ptr (i64, ptr) @py_exc_new(i64 14, ptr %.39)
  call void (ptr) @py_raise_owned(ptr %extern.py_exc_new.ret.10282.40)
  br label %if.end.10280

if.else.10279:
  br label %if.end.10280

if.end.10280:
  br i1 1, label %node.owned.release.10285, label %node.owned.cont.10286

node.owned.release.10285:
  %node.release.gc.slot.10287.43 = bitcast ptr %node.addr.17 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.10287.43, ptr null)
  br label %node.owned.cont.10286

node.owned.cont.10286:
  %gc.frame.leave.ptr.10288.44 = bitcast ptr %node.addr.17 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10288.44)
  ret i64 %generation.addr.25.phi
}
define external i64 @py_virtual_thread_io_resource_operation_begin(i64 %fd, i64 %generation) "no-builtins" {
entry:
  %call.ret.root.10304.15 = alloca ptr
  %node.addr.21 = alloca ptr
  store ptr null, ptr %node.addr.21
  %icmp.10290.6 = icmp slt i64 %fd, 0
  %gc.frame.map.ptr.10315.26 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.10316.27 = bitcast ptr %node.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.10315.26, ptr %gc.frame.slots.ptr.10316.27)
  br i1 %icmp.10290.6, label %if.then.10297, label %cond.right.10291

cond.right.10291:
  %icmp.10293.8 = icmp sle i64 %generation, 0
  br i1 %icmp.10293.8, label %if.then.10297, label %cond.right.10294

cond.right.10294:
  %scheduler_lock_ret.10295.9 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10296.10 = icmp ne i64 %scheduler_lock_ret.10295.9, 0
  br i1 %icmp.10296.10, label %if.then.10297, label %if.else.10298

if.then.10297:
  %.11 = getelementptr inbounds [26 x i8], ptr @unsafe.cstr.10300, i32 0, i32 0
  %extern.py_exc_new.ret.10301.12 = call ptr (i64, ptr) @py_exc_new(i64 14, ptr %.11)
  call void (ptr) @py_raise_owned(ptr %extern.py_exc_new.ret.10301.12)
  %gc.frame.leave.ptr.10317.28 = bitcast ptr %node.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10317.28)
  ret i64 -1

if.else.10298:
  br label %if.end.10299

if.end.10299:
  %io_resource_find_ret.10303.14 = call ptr (i64) @user_py_virtual_thread_runtime__io_resource_find(i64 %fd)
  store ptr null, ptr %call.ret.root.10304.15
  %call.ret.root.ptr.10305.16 = bitcast ptr %call.ret.root.10304.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10305.16, ptr %io_resource_find_ret.10303.14)
  %gc.frame.lifo.map.ptr.10306.17 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10307.18 = bitcast ptr %call.ret.root.10304.15 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10306.17, ptr %gc.frame.lifo.slots.ptr.10307.18)
  %call.ret.current.10308.19 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10305.16)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10305.16, ptr null)
  %gc.frame.lifo.leave.ptr.10309.20 = bitcast ptr %call.ret.root.10304.15 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10309.20)
  br i1 0, label %node.owned.release.10311, label %node.owned.cont.10312

node.owned.release.10311:
  %node.release.gc.slot.10313.24 = bitcast ptr %node.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.10313.24, ptr null)
  br label %node.owned.cont.10312

node.owned.cont.10312:
  %node.owned.resolve.10314.25 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.10308.19)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.10314.25)
  store ptr %node.owned.resolve.10314.25, ptr %node.addr.21
  %node.gc.slot.10318.29 = bitcast ptr %node.addr.21 to ptr
  %node.10319.30 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.10318.29)
  %unsafe.ptr_is_null.i.10320.31 = ptrtoint ptr %node.10319.30 to i64
  %unsafe.ptr.null.10321.32 = icmp eq i64 %unsafe.ptr_is_null.i.10320.31, 0
  br i1 %unsafe.ptr.null.10321.32, label %if.then.10330, label %cond.right.10322

cond.right.10322:
  %node.gc.slot.10323.33 = bitcast ptr %node.addr.21 to ptr
  %node.10324.34 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.10323.33)
  %unsafe.addr.10325.35 = getelementptr i8, ptr %node.10324.34, i64 8
  %unsafe.addr.cast.10326.36 = bitcast ptr %unsafe.addr.10325.35 to ptr
  %unsafe.load.i64.10327.37 = load i64, ptr %unsafe.addr.cast.10326.36, align 1
  %icmp.10329.39 = icmp ne i64 %unsafe.load.i64.10327.37, %generation
  br i1 %icmp.10329.39, label %if.then.10330, label %if.else.10331

if.then.10330:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %.40 = getelementptr inbounds [26 x i8], ptr @unsafe.cstr.10333, i32 0, i32 0
  %extern.py_exc_new.ret.10334.41 = call ptr (i64, ptr) @py_exc_new(i64 14, ptr %.40)
  call void (ptr) @py_raise_owned(ptr %extern.py_exc_new.ret.10334.41)
  br i1 1, label %node.owned.release.10336, label %node.owned.cont.10337

if.else.10331:
  br label %if.end.10332

if.end.10332:
  br i1 1, label %node.owned.release.10341, label %node.owned.cont.10342

node.owned.release.10336:
  %node.release.gc.slot.10338.43 = bitcast ptr %node.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.10338.43, ptr null)
  br label %node.owned.cont.10337

node.owned.cont.10337:
  %gc.frame.leave.ptr.10339.44 = bitcast ptr %node.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10339.44)
  ret i64 -1

node.owned.release.10341:
  %node.release.gc.slot.10343.46 = bitcast ptr %node.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.10343.46, ptr null)
  br label %node.owned.cont.10342

node.owned.cont.10342:
  %gc.frame.leave.ptr.10344.47 = bitcast ptr %node.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10344.47)
  ret i64 0
}
define external void @py_virtual_thread_io_resource_operation_end() "no-builtins" {
entry:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret void
}
define external i64 @py_virtual_thread_io_resource_close_begin(i64 %fd) "no-builtins" {
entry:
  %previous.addr.7 = alloca ptr
  store ptr null, ptr %previous.addr.7
  %icmp.10346.4 = icmp slt i64 %fd, 0
  %gc.frame.map.ptr.10375.25 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.10376.26 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.10375.25, ptr %gc.frame.slots.ptr.10376.26)
  br i1 %icmp.10346.4, label %if.then.10350, label %cond.right.10347

cond.right.10347:
  %scheduler_lock_ret.10348.5 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10349.6 = icmp ne i64 %scheduler_lock_ret.10348.5, 0
  br i1 %icmp.10349.6, label %if.then.10350, label %if.else.10351

if.then.10350:
  %gc.frame.leave.ptr.10377.27 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10377.27)
  ret i64 -1

if.else.10351:
  br label %if.end.10352

if.end.10352:
  store ptr null, ptr %previous.addr.7
  %unsafe.global.load.ptr.10353.8 = load ptr, ptr @pcc_vthread_io_resource_head_py
  br label %while.cond.10354

while.cond.10354:
  %node.addr.9.phi = phi ptr [ %unsafe.global.load.ptr.10353.8, %if.end.10352 ], [ %unsafe.load.ptr.10381.31, %while.latch.10356 ]
  %previous.owned.22.phi = phi i1 [ 0, %if.end.10352 ], [ 0, %while.latch.10356 ]
  %unsafe.ptr_is_null.i.10359.11 = ptrtoint ptr %node.addr.9.phi to i64
  %unsafe.ptr.null.10360.12 = icmp eq i64 %unsafe.ptr_is_null.i.10359.11, 0
  %b2i64.10361.13 = zext i1 %unsafe.ptr.null.10360.12 to i64
  %icmp.10362.14 = icmp eq i64 %b2i64.10361.13, 0
  br i1 %icmp.10362.14, label %cond.right.10363, label %while.end.10357

while.body.10355:
  br i1 %previous.owned.22.phi, label %previous.owned.release.10372, label %previous.owned.cont.10373

while.latch.10356:
  br label %while.cond.10354

while.end.10357:
  %unsafe.ptr_is_null.i.10383.33 = ptrtoint ptr %node.addr.9.phi to i64
  %unsafe.ptr.null.10384.34 = icmp eq i64 %unsafe.ptr_is_null.i.10383.33, 0
  br i1 %unsafe.ptr.null.10384.34, label %if.then.10385, label %if.else.10386

cond.right.10363:
  %unsafe.addr.10365.16 = getelementptr i8, ptr %node.addr.9.phi, i64 0
  %unsafe.addr.cast.10366.17 = bitcast ptr %unsafe.addr.10365.16 to ptr
  %unsafe.load.i64.10367.18 = load i64, ptr %unsafe.addr.cast.10366.17, align 1
  %icmp.10369.20 = icmp ne i64 %unsafe.load.i64.10367.18, %fd
  br i1 %icmp.10369.20, label %while.body.10355, label %while.end.10357

previous.owned.release.10372:
  %previous.release.gc.slot.10374.24 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %previous.release.gc.slot.10374.24, ptr null)
  br label %previous.owned.cont.10373

previous.owned.cont.10373:
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.addr.9.phi)
  store ptr %node.addr.9.phi, ptr %previous.addr.7
  %unsafe.addr.10379.29 = getelementptr i8, ptr %node.addr.9.phi, i64 16
  %unsafe.addr.cast.10380.30 = bitcast ptr %unsafe.addr.10379.29 to ptr
  %unsafe.load.ptr.10381.31 = load ptr, ptr %unsafe.addr.cast.10380.30, align 1
  br label %while.latch.10356

if.then.10385:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %gc.frame.leave.ptr.10388.35 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10388.35)
  ret i64 -1

if.else.10386:
  br label %if.end.10387

if.end.10387:
  %io_close_waiters_locked_ret.10390.37 = call i64 (i64) @user_py_virtual_thread_runtime__io_close_waiters_locked(i64 %fd)
  %icmp.10391.38 = icmp ne i64 %io_close_waiters_locked_ret.10390.37, 0
  br i1 %icmp.10391.38, label %if.then.10392, label %if.else.10393

if.then.10392:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %gc.frame.leave.ptr.10395.39 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10395.39)
  ret i64 -1

if.else.10393:
  br label %if.end.10394

if.end.10394:
  %unsafe.addr.10397.41 = getelementptr i8, ptr %node.addr.9.phi, i64 16
  %unsafe.addr.cast.10398.42 = bitcast ptr %unsafe.addr.10397.41 to ptr
  %unsafe.load.ptr.10399.43 = load ptr, ptr %unsafe.addr.cast.10398.42, align 1
  %previous.gc.slot.10400.45 = bitcast ptr %previous.addr.7 to ptr
  %previous.10401.46 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %previous.gc.slot.10400.45)
  %unsafe.ptr_is_null.i.10402.47 = ptrtoint ptr %previous.10401.46 to i64
  %unsafe.ptr.null.10403.48 = icmp eq i64 %unsafe.ptr_is_null.i.10402.47, 0
  br i1 %unsafe.ptr.null.10403.48, label %if.then.10404, label %if.else.10405

if.then.10404:
  store ptr %unsafe.load.ptr.10399.43, ptr @pcc_vthread_io_resource_head_py
  %none.10408.50 = load ptr, ptr @py_None
  br label %if.end.10406

if.else.10405:
  %previous.gc.slot.10409.51 = bitcast ptr %previous.addr.7 to ptr
  %previous.10410.52 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %previous.gc.slot.10409.51)
  %unsafe.addr.10411.53 = getelementptr i8, ptr %previous.10410.52, i64 16
  %unsafe.addr.cast.10412.54 = bitcast ptr %unsafe.addr.10411.53 to ptr
  store ptr %unsafe.load.ptr.10399.43, ptr %unsafe.addr.cast.10412.54, align 1
  %none.10414.56 = load ptr, ptr @py_None
  br label %if.end.10406

if.end.10406:
  call void (ptr) @free(ptr %node.addr.9.phi)
  %none.10416.58 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.10417.59 = bitcast ptr %previous.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10417.59)
  ret i64 0
}
define external i64 @py_virtual_thread_block_on_fd_generation(ptr %vthread, i64 %fd, i64 %generation, i64 %events, i64 %timeout_ms) "no-builtins" {
entry:
  %call.ret.root.10420.13 = alloca ptr
  %call.ret.root.10456.38 = alloca ptr
  %resource.addr.44 = alloca ptr
  store ptr null, ptr %resource.addr.44
  %checked_ret.10419.12 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.10420.13
  %call.ret.root.ptr.10421.14 = bitcast ptr %call.ret.root.10420.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10421.14, ptr %checked_ret.10419.12)
  %gc.frame.lifo.map.ptr.10422.15 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10423.16 = bitcast ptr %call.ret.root.10420.13 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10422.15, ptr %gc.frame.lifo.slots.ptr.10423.16)
  %call.ret.current.10424.17 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10421.14)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10421.14, ptr null)
  %gc.frame.lifo.leave.ptr.10425.18 = bitcast ptr %call.ret.root.10420.13 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10425.18)
  %unsafe.ptr_is_null.i.10427.21 = ptrtoint ptr %call.ret.current.10424.17 to i64
  %unsafe.ptr.null.10428.22 = icmp eq i64 %unsafe.ptr_is_null.i.10427.21, 0
  %gc.frame.map.ptr.10467.49 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.10468.50 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.10467.49, ptr %gc.frame.slots.ptr.10468.50)
  br i1 %unsafe.ptr.null.10428.22, label %if.then.10441, label %cond.right.10429

cond.right.10429:
  %unsafe.addr.10431.24 = getelementptr i8, ptr %call.ret.current.10424.17, i64 32
  %unsafe.addr.cast.10432.25 = bitcast ptr %unsafe.addr.10431.24 to ptr
  %unsafe.load.i64.10433.26 = load i64, ptr %unsafe.addr.cast.10432.25, align 1
  %icmp.10434.27 = icmp eq i64 %unsafe.load.i64.10433.26, 4
  br i1 %icmp.10434.27, label %if.then.10441, label %cond.right.10435

cond.right.10435:
  %icmp.10437.29 = icmp slt i64 %fd, 0
  br i1 %icmp.10437.29, label %if.then.10441, label %cond.right.10438

cond.right.10438:
  %icmp.10440.31 = icmp sle i64 %generation, 0
  br i1 %icmp.10440.31, label %if.then.10441, label %if.else.10442

if.then.10441:
  %gc.frame.leave.ptr.10469.51 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10469.51)
  ret i64 -1

if.else.10442:
  br label %if.end.10443

if.end.10443:
  %icmp.10445.33 = icmp eq i64 %events, 0
  br i1 %icmp.10445.33, label %if.then.10446, label %if.else.10447

if.then.10446:
  br label %if.end.10448

if.else.10447:
  br label %if.end.10448

if.end.10448:
  %events.addr.9.phi = phi i64 [ 1, %if.then.10446 ], [ %events, %if.else.10447 ]
  %scheduler_lock_ret.10449.34 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.10450.35 = icmp ne i64 %scheduler_lock_ret.10449.34, 0
  br i1 %icmp.10450.35, label %if.then.10451, label %if.else.10452

if.then.10451:
  %gc.frame.leave.ptr.10470.52 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10470.52)
  ret i64 -1

if.else.10452:
  br label %if.end.10453

if.end.10453:
  %io_resource_find_ret.10455.37 = call ptr (i64) @user_py_virtual_thread_runtime__io_resource_find(i64 %fd)
  store ptr null, ptr %call.ret.root.10456.38
  %call.ret.root.ptr.10457.39 = bitcast ptr %call.ret.root.10456.38 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10457.39, ptr %io_resource_find_ret.10455.37)
  %gc.frame.lifo.map.ptr.10458.40 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.10459.41 = bitcast ptr %call.ret.root.10456.38 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.10458.40, ptr %gc.frame.lifo.slots.ptr.10459.41)
  %call.ret.current.10460.42 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.10457.39)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.10457.39, ptr null)
  %gc.frame.lifo.leave.ptr.10461.43 = bitcast ptr %call.ret.root.10456.38 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.10461.43)
  br i1 0, label %resource.owned.release.10463, label %resource.owned.cont.10464

resource.owned.release.10463:
  %resource.release.gc.slot.10465.47 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10465.47, ptr null)
  br label %resource.owned.cont.10464

resource.owned.cont.10464:
  %resource.owned.resolve.10466.48 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.10460.42)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %resource.owned.resolve.10466.48)
  store ptr %resource.owned.resolve.10466.48, ptr %resource.addr.44
  %resource.gc.slot.10471.53 = bitcast ptr %resource.addr.44 to ptr
  %resource.10472.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %resource.gc.slot.10471.53)
  %unsafe.ptr_is_null.i.10473.55 = ptrtoint ptr %resource.10472.54 to i64
  %unsafe.ptr.null.10474.56 = icmp eq i64 %unsafe.ptr_is_null.i.10473.55, 0
  br i1 %unsafe.ptr.null.10474.56, label %if.then.10483, label %cond.right.10475

cond.right.10475:
  %resource.gc.slot.10476.57 = bitcast ptr %resource.addr.44 to ptr
  %resource.10477.58 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %resource.gc.slot.10476.57)
  %unsafe.addr.10478.59 = getelementptr i8, ptr %resource.10477.58, i64 8
  %unsafe.addr.cast.10479.60 = bitcast ptr %unsafe.addr.10478.59 to ptr
  %unsafe.load.i64.10480.61 = load i64, ptr %unsafe.addr.cast.10479.60, align 1
  %icmp.10482.63 = icmp ne i64 %unsafe.load.i64.10480.61, %generation
  br i1 %icmp.10482.63, label %if.then.10483, label %if.else.10484

if.then.10483:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %.64 = getelementptr inbounds [26 x i8], ptr @unsafe.cstr.10486, i32 0, i32 0
  %extern.py_exc_new.ret.10487.65 = call ptr (i64, ptr) @py_exc_new(i64 14, ptr %.64)
  call void (ptr) @py_raise_owned(ptr %extern.py_exc_new.ret.10487.65)
  br i1 1, label %resource.owned.release.10489, label %resource.owned.cont.10490

if.else.10484:
  br label %if.end.10485

if.end.10485:
  %unsafe.addr.10494.70 = getelementptr i8, ptr %call.ret.current.10424.17, i64 32
  %unsafe.addr.cast.10495.71 = bitcast ptr %unsafe.addr.10494.70 to ptr
  %unsafe.load.i64.10496.72 = load i64, ptr %unsafe.addr.cast.10495.71, align 1
  %icmp.10497.73 = icmp eq i64 %unsafe.load.i64.10496.72, 4
  br i1 %icmp.10497.73, label %if.then.10498, label %if.else.10499

resource.owned.release.10489:
  %resource.release.gc.slot.10491.67 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10491.67, ptr null)
  br label %resource.owned.cont.10490

resource.owned.cont.10490:
  %gc.frame.leave.ptr.10492.68 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10492.68)
  ret i64 -1

if.then.10498:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10502, label %resource.owned.cont.10503

if.else.10499:
  br label %if.end.10500

if.end.10500:
  %unsafe.addr.10507.78 = getelementptr i8, ptr %call.ret.current.10424.17, i64 120
  %unsafe.addr.cast.10508.79 = bitcast ptr %unsafe.addr.10507.78 to ptr
  %unsafe.load.i64.10509.80 = load i64, ptr %unsafe.addr.cast.10508.79, align 1
  %icmp.10510.81 = icmp sge i64 %unsafe.load.i64.10509.80, 4
  br i1 %icmp.10510.81, label %if.then.10520, label %cond.right.10511

resource.owned.release.10502:
  %resource.release.gc.slot.10504.75 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10504.75, ptr null)
  br label %resource.owned.cont.10503

resource.owned.cont.10503:
  %gc.frame.leave.ptr.10505.76 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10505.76)
  ret i64 -1

cond.right.10511:
  %unsafe.addr.10513.83 = getelementptr i8, ptr %call.ret.current.10424.17, i64 104
  %unsafe.addr.cast.10514.84 = bitcast ptr %unsafe.addr.10513.83 to ptr
  %unsafe.load.ptr.10515.85 = load ptr, ptr %unsafe.addr.cast.10514.84, align 1
  %unsafe.ptr_is_null.i.10516.86 = ptrtoint ptr %unsafe.load.ptr.10515.85 to i64
  %unsafe.ptr.null.10517.87 = icmp eq i64 %unsafe.ptr_is_null.i.10516.86, 0
  %b2i64.10518.88 = zext i1 %unsafe.ptr.null.10517.87 to i64
  %icmp.10519.89 = icmp eq i64 %b2i64.10518.88, 0
  br i1 %icmp.10519.89, label %if.then.10520, label %if.else.10521

if.then.10520:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10524, label %resource.owned.cont.10525

if.else.10521:
  br label %if.end.10522

if.end.10522:
  %unsafe.poll_fd.records.10530.95 = alloca [1 x i64]
  %.96 = bitcast ptr %unsafe.poll_fd.records.10530.95 to ptr
  %unsafe.addr.10531.97 = getelementptr i8, ptr %.96, i64 0
  %unsafe.addr.cast.10532.98 = bitcast ptr %unsafe.addr.10531.97 to ptr
  %unsafe.addr.10533.99 = getelementptr i8, ptr %.96, i64 4
  %unsafe.addr.cast.10534.100 = bitcast ptr %unsafe.addr.10533.99 to ptr
  %unsafe.addr.10535.101 = getelementptr i8, ptr %.96, i64 6
  %unsafe.addr.cast.10536.102 = bitcast ptr %unsafe.addr.10535.101 to ptr
  %.103 = trunc i64 %fd to i32
  store i32 %.103, ptr %unsafe.addr.cast.10532.98
  %.104 = trunc i64 %events.addr.9.phi to i16
  store i16 %.104, ptr %unsafe.addr.cast.10534.100
  store i16 0, ptr %unsafe.addr.cast.10536.102
  %.105 = ptrtoint ptr %.96 to i64
  %unsafe.poll_fd.syscall.10537.106 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 7, i64 %.105, i64 1, i64 0, i64 0, i64 0, i64 0)
  %.107 = load i16, ptr %unsafe.addr.cast.10536.102
  %.108 = icmp ne i16 %.107, 0
  %.109 = load i16, ptr %unsafe.addr.cast.10536.102
  %.110 = zext i16 %.109 to i64
  %.111 = icmp slt i64 %unsafe.poll_fd.syscall.10537.106, 0
  %unsafe.poll_fd.result.10538.112 = select i1 %.111, i64 %unsafe.poll_fd.syscall.10537.106, i64 %.110
  %icmp.10540.115 = icmp slt i64 %unsafe.poll_fd.result.10538.112, 0
  br i1 %icmp.10540.115, label %if.then.10541, label %if.else.10542

resource.owned.release.10524:
  %resource.release.gc.slot.10526.91 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10526.91, ptr null)
  br label %resource.owned.cont.10525

resource.owned.cont.10525:
  %gc.frame.leave.ptr.10527.92 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10527.92)
  ret i64 -1

if.then.10541:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10545, label %resource.owned.cont.10546

if.else.10542:
  br label %if.end.10543

if.end.10543:
  %timer_cancel_ret.10550.120 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.10424.17)
  %io_cancel_ret.10552.122 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.10424.17)
  %icmp.10554.124 = icmp ne i64 %unsafe.poll_fd.result.10538.112, 0
  br i1 %icmp.10554.124, label %if.then.10555, label %if.else.10556

resource.owned.release.10545:
  %resource.release.gc.slot.10547.117 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10547.117, ptr null)
  br label %resource.owned.cont.10546

resource.owned.cont.10546:
  %gc.frame.leave.ptr.10548.118 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10548.118)
  ret i64 -1

if.then.10555:
  %unsafe.addr.10559.126 = getelementptr i8, ptr %call.ret.current.10424.17, i64 32
  %unsafe.addr.cast.10560.127 = bitcast ptr %unsafe.addr.10559.126 to ptr
  %unsafe.load.i64.10561.128 = load i64, ptr %unsafe.addr.cast.10560.127, align 1
  %icmp.10562.129 = icmp eq i64 %unsafe.load.i64.10561.128, 2
  br i1 %icmp.10562.129, label %if.then.10563, label %if.else.10564

if.else.10556:
  br label %if.end.10557

if.end.10557:
  %icmp.10588.144 = icmp sge i64 %timeout_ms, 0
  br i1 %icmp.10588.144, label %if.then.10589, label %if.else.10590

if.then.10563:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10567, label %resource.owned.cont.10568

if.else.10564:
  br label %if.end.10565

if.end.10565:
  %make_ready_ret.10572.134 = call i64 (ptr) @user_py_virtual_thread_runtime__make_ready(ptr %call.ret.current.10424.17)
  %icmp.10573.135 = icmp ne i64 %make_ready_ret.10572.134, 0
  br i1 %icmp.10573.135, label %if.then.10574, label %if.else.10575

resource.owned.release.10567:
  %resource.release.gc.slot.10569.131 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10569.131, ptr null)
  br label %resource.owned.cont.10568

resource.owned.cont.10568:
  %gc.frame.leave.ptr.10570.132 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10570.132)
  ret i64 1

if.then.10574:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10578, label %resource.owned.cont.10579

if.else.10575:
  br label %if.end.10576

if.end.10576:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10583, label %resource.owned.cont.10584

resource.owned.release.10578:
  %resource.release.gc.slot.10580.137 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10580.137, ptr null)
  br label %resource.owned.cont.10579

resource.owned.cont.10579:
  %gc.frame.leave.ptr.10581.138 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10581.138)
  ret i64 -1

resource.owned.release.10583:
  %resource.release.gc.slot.10585.140 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10585.140, ptr null)
  br label %resource.owned.cont.10584

resource.owned.cont.10584:
  %gc.frame.leave.ptr.10586.141 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10586.141)
  ret i64 1

if.then.10589:
  %now_ms_ret.10592.145 = call i64 () @user_py_virtual_thread_runtime__now_ms()
  %add.10594.147 = add i64 %now_ms_ret.10592.145, %timeout_ms
  br label %if.end.10591

if.else.10590:
  br label %if.end.10591

if.end.10591:
  %deadline.addr.142.phi = phi i64 [ %add.10594.147, %if.then.10589 ], [ -1, %if.else.10590 ]
  %unsafe.addr.10596.149 = getelementptr i8, ptr %call.ret.current.10424.17, i64 32
  %unsafe.addr.cast.10597.150 = bitcast ptr %unsafe.addr.10596.149 to ptr
  store i64 3, ptr %unsafe.addr.cast.10597.150, align 1
  %none.10598.151 = load ptr, ptr @py_None
  %io_add_ret.10603.156 = call i64 (ptr, i64, i64, i64) @user_py_virtual_thread_runtime__io_add(ptr %call.ret.current.10424.17, i64 %fd, i64 %events.addr.9.phi, i64 %deadline.addr.142.phi)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %resource.owned.release.10606, label %resource.owned.cont.10607

resource.owned.release.10606:
  %resource.release.gc.slot.10608.160 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %resource.release.gc.slot.10608.160, ptr null)
  br label %resource.owned.cont.10607

resource.owned.cont.10607:
  %gc.frame.leave.ptr.10609.161 = bitcast ptr %resource.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10609.161)
  ret i64 %io_add_ret.10603.156
}
define external i64 @py_virtual_thread_io_backend() "no-builtins" {
entry:
  %scheduler_lock_ret.11431.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11432.2 = icmp ne i64 %scheduler_lock_ret.11431.1, 0
  br i1 %icmp.11432.2, label %if.then.11433, label %if.else.11434

if.then.11433:
  ret i64 -1

if.else.11434:
  br label %if.end.11435

if.end.11435:
  %waitset_init_ret.11436.3 = call i64 () @user_py_virtual_thread_runtime__waitset_init()
  %icmp.11437.4 = icmp ne i64 %waitset_init_ret.11436.3, 0
  br i1 %icmp.11437.4, label %if.then.11438, label %if.else.11439

if.then.11438:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.11439:
  br label %if.end.11440

if.end.11440:
  %unsafe.global.addr.11441.5 = bitcast ptr @pcc_vthread_waitset_backend_py to ptr
  %unsafe.addr.11442.6 = getelementptr i8, ptr %unsafe.global.addr.11441.5, i64 0
  %unsafe.addr.cast.11443.7 = bitcast ptr %unsafe.addr.11442.6 to ptr
  %unsafe.load.i32.11444.8 = load i32, ptr %unsafe.addr.cast.11443.7, align 1
  %unsafe.i32.to.i64.11445.9 = sext i32 %unsafe.load.i32.11444.8 to i64
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.i32.to.i64.11445.9
}
define external i64 @py_virtual_thread_pin_enter(ptr %vthread, ptr %reason) "no-builtins" {
entry:
  %call.ret.root.14906.7 = alloca ptr
  %checked_ret.14905.6 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14906.7
  %call.ret.root.ptr.14907.8 = bitcast ptr %call.ret.root.14906.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14907.8, ptr %checked_ret.14905.6)
  %gc.frame.lifo.map.ptr.14908.9 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14909.10 = bitcast ptr %call.ret.root.14906.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14908.9, ptr %gc.frame.lifo.slots.ptr.14909.10)
  %call.ret.current.14910.11 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14907.8)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14907.8, ptr null)
  %gc.frame.lifo.leave.ptr.14911.12 = bitcast ptr %call.ret.root.14906.7 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14911.12)
  %unsafe.ptr_is_null.i.14913.15 = ptrtoint ptr %call.ret.current.14910.11 to i64
  %unsafe.ptr.null.14914.16 = icmp eq i64 %unsafe.ptr_is_null.i.14913.15, 0
  br i1 %unsafe.ptr.null.14914.16, label %if.then.14921, label %cond.right.14915

cond.right.14915:
  %unsafe.addr.14917.18 = getelementptr i8, ptr %call.ret.current.14910.11, i64 32
  %unsafe.addr.cast.14918.19 = bitcast ptr %unsafe.addr.14917.18 to ptr
  %unsafe.load.i64.14919.20 = load i64, ptr %unsafe.addr.cast.14918.19, align 1
  %icmp.14920.21 = icmp eq i64 %unsafe.load.i64.14919.20, 4
  br i1 %icmp.14920.21, label %if.then.14921, label %if.else.14922

if.then.14921:
  ret i64 -1

if.else.14922:
  br label %if.end.14923

if.end.14923:
  %scheduler_lock_ret.14924.22 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14925.23 = icmp ne i64 %scheduler_lock_ret.14924.22, 0
  br i1 %icmp.14925.23, label %if.then.14926, label %if.else.14927

if.then.14926:
  ret i64 -1

if.else.14927:
  br label %if.end.14928

if.end.14928:
  %unsafe.addr.14930.25 = getelementptr i8, ptr %call.ret.current.14910.11, i64 32
  %unsafe.addr.cast.14931.26 = bitcast ptr %unsafe.addr.14930.25 to ptr
  %unsafe.load.i64.14932.27 = load i64, ptr %unsafe.addr.cast.14931.26, align 1
  %icmp.14933.28 = icmp eq i64 %unsafe.load.i64.14932.27, 4
  br i1 %icmp.14933.28, label %if.then.14934, label %if.else.14935

if.then.14934:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.14935:
  br label %if.end.14936

if.end.14936:
  %unsafe.addr.14938.30 = getelementptr i8, ptr %call.ret.current.14910.11, i64 48
  %unsafe.addr.cast.14939.31 = bitcast ptr %unsafe.addr.14938.30 to ptr
  %unsafe.load.i64.14940.32 = load i64, ptr %unsafe.addr.cast.14939.31, align 1
  %icmp.14942.35 = icmp eq i64 %unsafe.load.i64.14940.32, 0
  br i1 %icmp.14942.35, label %if.then.14943, label %if.else.14944

if.then.14943:
  call void (ptr) @pcc_gc_pin(ptr %call.ret.current.14910.11)
  br label %if.end.14945

if.else.14944:
  br label %if.end.14945

if.end.14945:
  %add.14948.38 = add i64 %unsafe.load.i64.14940.32, 1
  %unsafe.addr.14950.40 = getelementptr i8, ptr %call.ret.current.14910.11, i64 48
  %unsafe.addr.cast.14951.41 = bitcast ptr %unsafe.addr.14950.40 to ptr
  store i64 %add.14948.38, ptr %unsafe.addr.cast.14951.41, align 1
  %none.14953.43 = load ptr, ptr @py_None
  %unsafe.global.addr.14954.44 = bitcast ptr @pcc_vthread_pin_depth_py to ptr
  %counter_add_ret.14955.45 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.14954.44, i64 1)
  %unsafe.global.addr.14956.46 = bitcast ptr @pcc_vthread_pin_events_py to ptr
  %counter_add_ret.14957.47 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.14956.46, i64 1)
  call void (ptr) @user_py_virtual_thread_runtime__pin_reason_note(ptr %reason)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %add.14948.38
}
define external i64 @py_virtual_thread_pin_leave(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.14962.5 = alloca ptr
  %checked_ret.14961.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14962.5
  %call.ret.root.ptr.14963.6 = bitcast ptr %call.ret.root.14962.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14963.6, ptr %checked_ret.14961.4)
  %gc.frame.lifo.map.ptr.14964.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14965.8 = bitcast ptr %call.ret.root.14962.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14964.7, ptr %gc.frame.lifo.slots.ptr.14965.8)
  %call.ret.current.14966.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14963.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14963.6, ptr null)
  %gc.frame.lifo.leave.ptr.14967.10 = bitcast ptr %call.ret.root.14962.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14967.10)
  %unsafe.ptr_is_null.i.14969.13 = ptrtoint ptr %call.ret.current.14966.9 to i64
  %unsafe.ptr.null.14970.14 = icmp eq i64 %unsafe.ptr_is_null.i.14969.13, 0
  br i1 %unsafe.ptr.null.14970.14, label %if.then.14971, label %if.else.14972

if.then.14971:
  ret i64 -1

if.else.14972:
  br label %if.end.14973

if.end.14973:
  %scheduler_lock_ret.14974.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14975.16 = icmp ne i64 %scheduler_lock_ret.14974.15, 0
  br i1 %icmp.14975.16, label %if.then.14976, label %if.else.14977

if.then.14976:
  ret i64 -1

if.else.14977:
  br label %if.end.14978

if.end.14978:
  %unsafe.addr.14980.18 = getelementptr i8, ptr %call.ret.current.14966.9, i64 48
  %unsafe.addr.cast.14981.19 = bitcast ptr %unsafe.addr.14980.18 to ptr
  %unsafe.load.i64.14982.20 = load i64, ptr %unsafe.addr.cast.14981.19, align 1
  %icmp.14984.23 = icmp sgt i64 %unsafe.load.i64.14982.20, 0
  br i1 %icmp.14984.23, label %if.then.14985, label %if.else.14986

if.then.14985:
  %sub.14989.25 = sub i64 %unsafe.load.i64.14982.20, 1
  %unsafe.addr.14991.27 = getelementptr i8, ptr %call.ret.current.14966.9, i64 48
  %unsafe.addr.cast.14992.28 = bitcast ptr %unsafe.addr.14991.27 to ptr
  store i64 %sub.14989.25, ptr %unsafe.addr.cast.14992.28, align 1
  %none.14994.30 = load ptr, ptr @py_None
  %unsafe.global.addr.14995.31 = bitcast ptr @pcc_vthread_pin_depth_py to ptr
  %counter_ret.14996.32 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.14995.31)
  %icmp.14997.33 = icmp sgt i64 %counter_ret.14996.32, 0
  br i1 %icmp.14997.33, label %if.then.14998, label %if.else.14999

if.else.14986:
  br label %if.end.14987

if.end.14987:
  %pinned.addr.21.phi = phi i64 [ %unsafe.load.i64.14982.20, %if.else.14986 ], [ %sub.14989.25, %if.end.15007 ]
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %pinned.addr.21.phi

if.then.14998:
  %unsafe.global.addr.15001.34 = bitcast ptr @pcc_vthread_pin_depth_py to ptr
  %counter_add_ret.15002.35 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.15001.34, i64 -1)
  br label %if.end.15000

if.else.14999:
  br label %if.end.15000

if.end.15000:
  %icmp.15004.37 = icmp eq i64 %sub.14989.25, 0
  br i1 %icmp.15004.37, label %if.then.15005, label %if.else.15006

if.then.15005:
  call void (ptr) @pcc_gc_unpin(ptr %call.ret.current.14966.9)
  br label %if.end.15007

if.else.15006:
  br label %if.end.15007

if.end.15007:
  br label %if.end.14987
}
define external i64 @py_virtual_thread_pin_count(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.15012.5 = alloca ptr
  %checked_ret.15011.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.15012.5
  %call.ret.root.ptr.15013.6 = bitcast ptr %call.ret.root.15012.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.15013.6, ptr %checked_ret.15011.4)
  %gc.frame.lifo.map.ptr.15014.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.15015.8 = bitcast ptr %call.ret.root.15012.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.15014.7, ptr %gc.frame.lifo.slots.ptr.15015.8)
  %call.ret.current.15016.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.15013.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.15013.6, ptr null)
  %gc.frame.lifo.leave.ptr.15017.10 = bitcast ptr %call.ret.root.15012.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.15017.10)
  %unsafe.ptr_is_null.i.15019.13 = ptrtoint ptr %call.ret.current.15016.9 to i64
  %unsafe.ptr.null.15020.14 = icmp eq i64 %unsafe.ptr_is_null.i.15019.13, 0
  br i1 %unsafe.ptr.null.15020.14, label %if.then.15021, label %if.else.15022

if.then.15021:
  ret i64 -1

if.else.15022:
  br label %if.end.15023

if.end.15023:
  %scheduler_lock_ret.15024.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.15025.16 = icmp ne i64 %scheduler_lock_ret.15024.15, 0
  br i1 %icmp.15025.16, label %if.then.15026, label %if.else.15027

if.then.15026:
  ret i64 -1

if.else.15027:
  br label %if.end.15028

if.end.15028:
  %unsafe.addr.15030.18 = getelementptr i8, ptr %call.ret.current.15016.9, i64 48
  %unsafe.addr.cast.15031.19 = bitcast ptr %unsafe.addr.15030.18 to ptr
  %unsafe.load.i64.15032.20 = load i64, ptr %unsafe.addr.cast.15031.19, align 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.15032.20
}
define external i64 @py_virtual_thread_pinned_count() "no-builtins" {
entry:
  %unsafe.global.addr.15034.1 = bitcast ptr @pcc_vthread_pin_depth_py to ptr
  %counter_ret.15035.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.15034.1)
  ret i64 %counter_ret.15035.2
}
define external i64 @py_virtual_thread_pin_event_count() "no-builtins" {
entry:
  %unsafe.global.addr.15036.1 = bitcast ptr @pcc_vthread_pin_events_py to ptr
  %counter_ret.15037.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.15036.1)
  ret i64 %counter_ret.15037.2
}
define external ptr @py_virtual_thread_poll_ready() "no-builtins" {
entry:
  %call.ret.root.11453.4 = alloca ptr
  %ready.addr.10 = alloca ptr
  store ptr null, ptr %ready.addr.10
  %scheduler_lock_ret.11447.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11448.2 = icmp ne i64 %scheduler_lock_ret.11447.1, 0
  %gc.frame.map.ptr.11464.15 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.11465.16 = bitcast ptr %ready.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.11464.15, ptr %gc.frame.slots.ptr.11465.16)
  br i1 %icmp.11448.2, label %if.then.11449, label %if.else.11450

if.then.11449:
  %gc.frame.leave.ptr.11466.17 = bitcast ptr %ready.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.11466.17)
  ret ptr null

if.else.11450:
  br label %if.end.11451

if.end.11451:
  %dequeue_ret.11452.3 = call ptr () @user_py_virtual_thread_runtime__dequeue()
  store ptr null, ptr %call.ret.root.11453.4
  %call.ret.root.ptr.11454.5 = bitcast ptr %call.ret.root.11453.4 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.11454.5, ptr %dequeue_ret.11452.3)
  %gc.frame.lifo.map.ptr.11455.6 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.11456.7 = bitcast ptr %call.ret.root.11453.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.11455.6, ptr %gc.frame.lifo.slots.ptr.11456.7)
  %call.ret.current.11457.8 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.11454.5)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.11454.5, ptr null)
  %gc.frame.lifo.leave.ptr.11458.9 = bitcast ptr %call.ret.root.11453.4 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.11458.9)
  br i1 0, label %ready.owned.release.11460, label %ready.owned.cont.11461

ready.owned.release.11460:
  %ready.release.gc.slot.11462.13 = bitcast ptr %ready.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ready.release.gc.slot.11462.13, ptr null)
  br label %ready.owned.cont.11461

ready.owned.cont.11461:
  %ready.owned.resolve.11463.14 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.11457.8)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %ready.owned.resolve.11463.14)
  store ptr %ready.owned.resolve.11463.14, ptr %ready.addr.10
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %ready.gc.slot.11467.18 = bitcast ptr %ready.addr.10 to ptr
  %ready.11468.19 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ready.gc.slot.11467.18)
  br i1 1, label %ret.local.ready.11471, label %ret.local.borrowed.11470

ret.local.borrowed.11470:
  %ret.local.retain.11472.21 = call ptr (ptr) @pcc_gc_retain(ptr %ready.11468.19)
  br label %ret.local.ready.11471

ret.local.ready.11471:
  %ret.local.value.11473.22 = phi ptr [%ready.11468.19, %ready.owned.cont.11461], [%ret.local.retain.11472.21, %ret.local.borrowed.11470]
  %ret.tmp.root.11474.23 = alloca ptr
  store ptr null, ptr %ret.tmp.root.11474.23
  %ret.tmp.root.ptr.11475.24 = bitcast ptr %ret.tmp.root.11474.23 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.11475.24, ptr %ret.local.value.11473.22)
  %gc.frame.lifo.map.ptr.11476.25 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.11477.26 = bitcast ptr %ret.tmp.root.11474.23 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.11476.25, ptr %gc.frame.lifo.slots.ptr.11477.26)
  %gc.frame.leave.ptr.11478.27 = bitcast ptr %ready.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.11478.27)
  %ret.tmp.current.11479.28 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.11475.24)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.11475.24, ptr null)
  %gc.frame.lifo.leave.ptr.11480.29 = bitcast ptr %ret.tmp.root.11474.23 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.11480.29)
  ret ptr %ret.tmp.current.11479.28
}
define external i64 @py_virtual_thread_ready_count() "no-builtins" {
entry:
  %scheduler_lock_ret.11481.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11482.2 = icmp ne i64 %scheduler_lock_ret.11481.1, 0
  br i1 %icmp.11482.2, label %if.then.11483, label %if.else.11484

if.then.11483:
  ret i64 -1

if.else.11484:
  br label %if.end.11485

if.end.11485:
  %unsafe.global.addr.11486.3 = bitcast ptr @pcc_vthread_ready_count_py to ptr
  %counter_ret.11487.4 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11486.3)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %counter_ret.11487.4
}
define external i64 @py_virtual_thread_node_pool_stat(i64 %family, i64 %metric) "no-builtins" {
entry:
  %icmp.11490.6 = icmp slt i64 %metric, 0
  br i1 %icmp.11490.6, label %if.then.11494, label %cond.right.11491

cond.right.11491:
  %icmp.11493.8 = icmp sgt i64 %metric, 2
  br i1 %icmp.11493.8, label %if.then.11494, label %if.else.11495

if.then.11494:
  ret i64 -1

if.else.11495:
  br label %if.end.11496

if.end.11496:
  %icmp.11498.10 = icmp eq i64 %family, 0
  br i1 %icmp.11498.10, label %if.then.11499, label %if.else.11500

if.then.11499:
  %icmp.11503.12 = icmp eq i64 %metric, 0
  br i1 %icmp.11503.12, label %if.then.11504, label %if.else.11505

if.else.11500:
  %icmp.11519.22 = icmp eq i64 %family, 1
  br i1 %icmp.11519.22, label %if.then.11520, label %if.else.11521

if.end.11501:
  ret i64 0

if.then.11504:
  %unsafe.global.addr.11507.13 = bitcast ptr @pcc_vthread_ready_alloc_py to ptr
  %counter_ret.11508.14 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11507.13)
  ret i64 %counter_ret.11508.14

if.else.11505:
  br label %if.end.11506

if.end.11506:
  %icmp.11510.16 = icmp eq i64 %metric, 1
  br i1 %icmp.11510.16, label %if.then.11511, label %if.else.11512

if.then.11511:
  %unsafe.global.addr.11514.17 = bitcast ptr @pcc_vthread_ready_reuse_py to ptr
  %counter_ret.11515.18 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11514.17)
  ret i64 %counter_ret.11515.18

if.else.11512:
  br label %if.end.11513

if.end.11513:
  %unsafe.global.addr.11516.19 = bitcast ptr @pcc_vthread_ready_cached_py to ptr
  %counter_ret.11517.20 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11516.19)
  ret i64 %counter_ret.11517.20

if.then.11520:
  %icmp.11524.24 = icmp eq i64 %metric, 0
  br i1 %icmp.11524.24, label %if.then.11525, label %if.else.11526

if.else.11521:
  %icmp.11540.34 = icmp eq i64 %family, 2
  br i1 %icmp.11540.34, label %if.then.11541, label %if.else.11542

if.end.11522:
  br label %if.end.11501

if.then.11525:
  %unsafe.global.addr.11528.25 = bitcast ptr @pcc_vthread_waiter_alloc_py to ptr
  %counter_ret.11529.26 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11528.25)
  ret i64 %counter_ret.11529.26

if.else.11526:
  br label %if.end.11527

if.end.11527:
  %icmp.11531.28 = icmp eq i64 %metric, 1
  br i1 %icmp.11531.28, label %if.then.11532, label %if.else.11533

if.then.11532:
  %unsafe.global.addr.11535.29 = bitcast ptr @pcc_vthread_waiter_reuse_py to ptr
  %counter_ret.11536.30 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11535.29)
  ret i64 %counter_ret.11536.30

if.else.11533:
  br label %if.end.11534

if.end.11534:
  %unsafe.global.addr.11537.31 = bitcast ptr @pcc_vthread_waiter_cached_py to ptr
  %counter_ret.11538.32 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11537.31)
  ret i64 %counter_ret.11538.32

if.then.11541:
  %icmp.11545.36 = icmp eq i64 %metric, 0
  br i1 %icmp.11545.36, label %if.then.11546, label %if.else.11547

if.else.11542:
  %icmp.11561.46 = icmp eq i64 %family, 3
  br i1 %icmp.11561.46, label %if.then.11562, label %if.else.11563

if.end.11543:
  br label %if.end.11522

if.then.11546:
  %unsafe.global.addr.11549.37 = bitcast ptr @pcc_vthread_timer_alloc_py to ptr
  %counter_ret.11550.38 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11549.37)
  ret i64 %counter_ret.11550.38

if.else.11547:
  br label %if.end.11548

if.end.11548:
  %icmp.11552.40 = icmp eq i64 %metric, 1
  br i1 %icmp.11552.40, label %if.then.11553, label %if.else.11554

if.then.11553:
  %unsafe.global.addr.11556.41 = bitcast ptr @pcc_vthread_timer_reuse_py to ptr
  %counter_ret.11557.42 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11556.41)
  ret i64 %counter_ret.11557.42

if.else.11554:
  br label %if.end.11555

if.end.11555:
  %unsafe.global.addr.11558.43 = bitcast ptr @pcc_vthread_timer_cached_py to ptr
  %counter_ret.11559.44 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11558.43)
  ret i64 %counter_ret.11559.44

if.then.11562:
  %icmp.11566.48 = icmp eq i64 %metric, 0
  br i1 %icmp.11566.48, label %if.then.11567, label %if.else.11568

if.else.11563:
  ret i64 -1

if.end.11564:
  br label %if.end.11543

if.then.11567:
  %unsafe.global.addr.11570.49 = bitcast ptr @pcc_vthread_io_alloc_py to ptr
  %counter_ret.11571.50 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11570.49)
  ret i64 %counter_ret.11571.50

if.else.11568:
  br label %if.end.11569

if.end.11569:
  %icmp.11573.52 = icmp eq i64 %metric, 1
  br i1 %icmp.11573.52, label %if.then.11574, label %if.else.11575

if.then.11574:
  %unsafe.global.addr.11577.53 = bitcast ptr @pcc_vthread_io_reuse_py to ptr
  %counter_ret.11578.54 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11577.53)
  ret i64 %counter_ret.11578.54

if.else.11575:
  br label %if.end.11576

if.end.11576:
  %unsafe.global.addr.11579.55 = bitcast ptr @pcc_vthread_io_cached_py to ptr
  %counter_ret.11580.56 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11579.55)
  ret i64 %counter_ret.11580.56
}
define external i64 @py_virtual_thread_effect_reset() "no-builtins" {
entry:
  %call.ret.root.462.2 = alloca ptr
  %effect_buffer_ret.461.1 = call ptr () @user_py_virtual_thread_runtime__effect_buffer()
  store ptr null, ptr %call.ret.root.462.2
  %call.ret.root.ptr.463.3 = bitcast ptr %call.ret.root.462.2 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.463.3, ptr %effect_buffer_ret.461.1)
  %gc.frame.lifo.map.ptr.464.4 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.465.5 = bitcast ptr %call.ret.root.462.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.464.4, ptr %gc.frame.lifo.slots.ptr.465.5)
  %call.ret.current.466.6 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.463.3)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.463.3, ptr null)
  %gc.frame.lifo.leave.ptr.467.7 = bitcast ptr %call.ret.root.462.2 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.467.7)
  call void (ptr) @pcc_gc_release_known(ptr %call.ret.current.466.6)
  %unsafe.global.addr.468.8 = bitcast ptr @pcc_vthread_effect_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.468.8, i64 0)
  %unsafe.global.addr.469.9 = bitcast ptr @pcc_vthread_effect_dropped_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.469.9, i64 0)
  ret i64 0
}
define external i64 @py_virtual_thread_effect_count() "no-builtins" {
entry:
  %unsafe.global.addr.470.1 = bitcast ptr @pcc_vthread_effect_count_py to ptr
  %counter_ret.471.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.470.1)
  %icmp.473.5 = icmp sgt i64 %counter_ret.471.2, 4096
  br i1 %icmp.473.5, label %if.then.474, label %if.else.475

if.then.474:
  ret i64 4096

if.else.475:
  br label %if.end.476

if.end.476:
  ret i64 %counter_ret.471.2
}
define external i64 @py_virtual_thread_effect_dropped() "no-builtins" {
entry:
  %unsafe.global.addr.478.1 = bitcast ptr @pcc_vthread_effect_dropped_py to ptr
  %counter_ret.479.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.478.1)
  ret i64 %counter_ret.479.2
}
define external i64 @py_virtual_thread_effect_kind_at(i64 %index) "no-builtins" {
entry:
  %effect_field_ret.481.4 = call i64 (i64, i64) @user_py_virtual_thread_runtime__effect_field(i64 %index, i64 0)
  ret i64 %effect_field_ret.481.4
}
define external i64 @py_virtual_thread_effect_detail_at(i64 %index) "no-builtins" {
entry:
  %effect_field_ret.483.4 = call i64 (i64, i64) @user_py_virtual_thread_runtime__effect_field(i64 %index, i64 1)
  ret i64 %effect_field_ret.483.4
}
define external i64 @py_virtual_thread_effect_root_delta_at(i64 %index) "no-builtins" {
entry:
  %effect_field_ret.485.4 = call i64 (i64, i64) @user_py_virtual_thread_runtime__effect_field(i64 %index, i64 2)
  ret i64 %effect_field_ret.485.4
}
define external i64 @py_virtual_thread_effect_state_at(i64 %index) "no-builtins" {
entry:
  %effect_field_ret.487.4 = call i64 (i64, i64) @user_py_virtual_thread_runtime__effect_field(i64 %index, i64 3)
  ret i64 %effect_field_ret.487.4
}
define external i64 @py_virtual_thread_carrier_count() "no-builtins" {
entry:
  %unsafe.global.addr.11581.1 = bitcast ptr @pcc_vthread_carrier_count_py to ptr
  %counter_ret.11582.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11581.1)
  ret i64 %counter_ret.11582.2
}
define external i64 @py_virtual_thread_carrier_steal_count() "no-builtins" {
entry:
  %unsafe.global.addr.11583.1 = bitcast ptr @pcc_vthread_carrier_steal_count_py to ptr
  %counter_ret.11584.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11583.1)
  ret i64 %counter_ret.11584.2
}
define external i64 @py_virtual_thread_run_once() "no-builtins" {
entry:
  %py_virtual_thread_poll_timers_ret.11632.1 = call i64 () @py_virtual_thread_poll_timers()
  %py_virtual_thread_poll_io_ret.11633.2 = call i64 (i64) @py_virtual_thread_poll_io(i64 0)
  %run_ready_step_ret.11634.3 = call i64 () @user_py_virtual_thread_runtime__run_ready_step()
  ret i64 %run_ready_step_ret.11634.3
}
define external i64 @py_virtual_thread_run_until_idle(i64 %max_steps) "no-builtins" {
entry:
  %icmp.12007.4 = icmp sle i64 %max_steps, 0
  br i1 %icmp.12007.4, label %if.then.12008, label %if.else.12009

if.then.12008:
  ret i64 0

if.else.12009:
  br label %if.end.12010

if.end.12010:
  br label %while.cond.12011

while.cond.12011:
  %ran.addr.5.phi.2 = phi i64 [ 0, %if.end.12010 ], [ %ran.addr.5.phi.1, %while.latch.12013 ]
  %steps.addr.6.phi.2 = phi i64 [ 0, %if.end.12010 ], [ %steps.addr.6.phi.1, %while.latch.12013 ]
  %icmp.12017.9 = icmp slt i64 %steps.addr.6.phi.2, %max_steps
  br i1 %icmp.12017.9, label %while.body.12012, label %while.end.12014

while.body.12012:
  %py_virtual_thread_poll_timers_ret.12018.10 = call i64 () @py_virtual_thread_poll_timers()
  %py_virtual_thread_poll_io_ret.12019.11 = call i64 (i64) @py_virtual_thread_poll_io(i64 0)
  %py_virtual_thread_ready_count_ret.12020.12 = call i64 () @py_virtual_thread_ready_count()
  %icmp.12022.15 = icmp sle i64 %py_virtual_thread_ready_count_ret.12020.12, 0
  br i1 %icmp.12022.15, label %if.then.12023, label %if.else.12024

while.latch.12013:
  %ran.addr.5.phi.1 = phi i64 [ %ran.addr.5.phi.2, %if.end.12035 ], [ %ran.addr.5.phi, %while.end.12039 ]
  %steps.addr.6.phi.1 = phi i64 [ %steps.addr.6.phi.2, %if.end.12035 ], [ %steps.addr.6.phi, %while.end.12039 ]
  br label %while.cond.12011

while.end.12014:
  ret i64 %ran.addr.5.phi.2

if.then.12023:
  %py_virtual_thread_io_wait_count_ret.12026.16 = call i64 () @py_virtual_thread_io_wait_count()
  %icmp.12027.17 = icmp sle i64 %py_virtual_thread_io_wait_count_ret.12026.16, 0
  br i1 %icmp.12027.17, label %if.then.12028, label %if.else.12029

if.else.12024:
  br label %if.end.12025

if.end.12025:
  br label %while.cond.12036

if.then.12028:
  br label %while.end.12014

if.else.12029:
  br label %if.end.12030

if.end.12030:
  %py_virtual_thread_poll_io_ret.12031.18 = call i64 (i64) @py_virtual_thread_poll_io(i64 -1)
  %icmp.12032.19 = icmp slt i64 %py_virtual_thread_poll_io_ret.12031.18, 0
  br i1 %icmp.12032.19, label %if.then.12033, label %if.else.12034

if.then.12033:
  ret i64 -1

if.else.12034:
  br label %if.end.12035

if.end.12035:
  br label %while.latch.12013

while.cond.12036:
  %batch.addr.13.phi = phi i64 [ %py_virtual_thread_ready_count_ret.12020.12, %if.end.12025 ], [ %sub.12063.37, %while.latch.12038 ]
  %ran.addr.5.phi = phi i64 [ %ran.addr.5.phi.2, %if.end.12025 ], [ %add.12059.33, %while.latch.12038 ]
  %steps.addr.6.phi = phi i64 [ %steps.addr.6.phi.2, %if.end.12025 ], [ %add.12061.35, %while.latch.12038 ]
  %icmp.12041.21 = icmp sgt i64 %batch.addr.13.phi, 0
  br i1 %icmp.12041.21, label %cond.right.12042, label %while.end.12039

while.body.12037:
  %run_ready_step_ret.12046.25 = call i64 () @user_py_virtual_thread_runtime__run_ready_step()
  %icmp.12048.28 = icmp slt i64 %run_ready_step_ret.12046.25, 0
  br i1 %icmp.12048.28, label %if.then.12049, label %if.else.12050

while.latch.12038:
  br label %while.cond.12036

while.end.12039:
  br label %while.latch.12013

cond.right.12042:
  %icmp.12045.24 = icmp slt i64 %steps.addr.6.phi, %max_steps
  br i1 %icmp.12045.24, label %while.body.12037, label %while.end.12039

if.then.12049:
  ret i64 -1

if.else.12050:
  br label %if.end.12051

if.end.12051:
  %icmp.12053.30 = icmp eq i64 %run_ready_step_ret.12046.25, 0
  br i1 %icmp.12053.30, label %if.then.12054, label %if.else.12055

if.then.12054:
  br label %while.end.12039

if.else.12055:
  br label %if.end.12056

if.end.12056:
  %add.12059.33 = add i64 %ran.addr.5.phi, %run_ready_step_ret.12046.25
  %add.12061.35 = add i64 %steps.addr.6.phi, 1
  %sub.12063.37 = sub i64 %batch.addr.13.phi, 1
  br label %while.latch.12038
}
define external i64 @py_virtual_thread_run_carrier_pool(i64 %carrier_count, i64 %max_steps) "no-builtins" {
entry:
  %icmp.12171.6 = icmp sle i64 %max_steps, 0
  br i1 %icmp.12171.6, label %if.then.12172, label %if.else.12173

if.then.12172:
  ret i64 0

if.else.12173:
  br label %if.end.12174

if.end.12174:
  %icmp.12176.8 = icmp sle i64 %carrier_count, 1
  br i1 %icmp.12176.8, label %if.then.12180, label %cond.right.12177

cond.right.12177:
  %extern.pcc_threads_enabled.ret.12178.9 = call i64 () @pcc_threads_enabled()
  %icmp.12179.10 = icmp eq i64 %extern.pcc_threads_enabled.ret.12178.9, 0
  br i1 %icmp.12179.10, label %if.then.12180, label %if.else.12181

if.then.12180:
  %py_virtual_thread_run_until_idle_ret.12184.12 = call i64 (i64) @py_virtual_thread_run_until_idle(i64 %max_steps)
  ret i64 %py_virtual_thread_run_until_idle_ret.12184.12

if.else.12181:
  br label %if.end.12182

if.end.12182:
  %icmp.12186.14 = icmp sgt i64 %carrier_count, 64
  br i1 %icmp.12186.14, label %if.then.12187, label %if.else.12188

if.then.12187:
  br label %if.end.12189

if.else.12188:
  br label %if.end.12189

if.end.12189:
  %carrier_count.addr.3.phi = phi i64 [ 64, %if.then.12187 ], [ %carrier_count, %if.else.12188 ]
  %unsafe.calloc.12191.16 = call ptr (i64, i64) @calloc(i64 %carrier_count.addr.3.phi, i64 8)
  %unsafe.calloc.12193.19 = call ptr (i64, i64) @calloc(i64 %carrier_count.addr.3.phi, i64 16)
  %unsafe.calloc.12194.21 = call ptr (i64, i64) @calloc(i64 1, i64 56)
  %unsafe.ptr_is_null.i.12196.24 = ptrtoint ptr %unsafe.calloc.12191.16 to i64
  %unsafe.ptr.null.12197.25 = icmp eq i64 %unsafe.ptr_is_null.i.12196.24, 0
  br i1 %unsafe.ptr.null.12197.25, label %if.then.12206, label %cond.right.12198

cond.right.12198:
  %unsafe.ptr_is_null.i.12200.27 = ptrtoint ptr %unsafe.calloc.12193.19 to i64
  %unsafe.ptr.null.12201.28 = icmp eq i64 %unsafe.ptr_is_null.i.12200.27, 0
  br i1 %unsafe.ptr.null.12201.28, label %if.then.12206, label %cond.right.12202

cond.right.12202:
  %unsafe.ptr_is_null.i.12204.30 = ptrtoint ptr %unsafe.calloc.12194.21 to i64
  %unsafe.ptr.null.12205.31 = icmp eq i64 %unsafe.ptr_is_null.i.12204.30, 0
  br i1 %unsafe.ptr.null.12205.31, label %if.then.12206, label %if.else.12207

if.then.12206:
  call void (ptr) @free(ptr %unsafe.calloc.12194.21)
  %none.12210.33 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12193.19)
  %none.12212.35 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12191.16)
  %none.12214.37 = load ptr, ptr @py_None
  ret i64 -1

if.else.12207:
  br label %if.end.12208

if.end.12208:
  %unsafe.addr.12216.39 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 0
  %unsafe.addr.cast.12217.40 = bitcast ptr %unsafe.addr.12216.39 to ptr
  store i64 %max_steps, ptr %unsafe.addr.cast.12217.40, align 1
  %none.12219.42 = load ptr, ptr @py_None
  %unsafe.addr.12221.44 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 32
  %unsafe.addr.cast.12222.45 = bitcast ptr %unsafe.addr.12221.44 to ptr
  store i64 %carrier_count.addr.3.phi, ptr %unsafe.addr.cast.12222.45, align 1
  %none.12224.47 = load ptr, ptr @py_None
  %scheduler_lock_ret.12225.48 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12226.49 = icmp ne i64 %scheduler_lock_ret.12225.48, 0
  br i1 %icmp.12226.49, label %if.then.12227, label %if.else.12228

if.then.12227:
  call void (ptr) @free(ptr %unsafe.calloc.12194.21)
  %none.12231.51 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12193.19)
  %none.12233.53 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12191.16)
  %none.12235.55 = load ptr, ptr @py_None
  ret i64 -1

if.else.12228:
  br label %if.end.12229

if.end.12229:
  %unsafe.global.addr.12236.56 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  %counter_ret.12237.57 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12236.56)
  %icmp.12238.58 = icmp ne i64 %counter_ret.12237.57, 0
  br i1 %icmp.12238.58, label %if.then.12247, label %cond.right.12239

cond.right.12239:
  %unsafe.global.addr.12240.59 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  %counter_ret.12241.60 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12240.59)
  %icmp.12242.61 = icmp ne i64 %counter_ret.12241.60, 0
  br i1 %icmp.12242.61, label %if.then.12247, label %cond.right.12243

cond.right.12243:
  %unsafe.global.addr.12244.62 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  %counter_ret.12245.63 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12244.62)
  %icmp.12246.64 = icmp ne i64 %counter_ret.12245.63, 0
  br i1 %icmp.12246.64, label %if.then.12247, label %if.else.12248

if.then.12247:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12194.21)
  %none.12251.66 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12193.19)
  %none.12253.68 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12191.16)
  %none.12255.70 = load ptr, ptr @py_None
  ret i64 -1

if.else.12248:
  br label %if.end.12249

if.end.12249:
  %unsafe.global.addr.12256.71 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12256.71, i64 1)
  %carrier_queues_open_ret.12258.73 = call i64 (i64) @user_py_virtual_thread_runtime__carrier_queues_open(i64 %carrier_count.addr.3.phi)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %icmp.12260.76 = icmp ne i64 %carrier_queues_open_ret.12258.73, 0
  br i1 %icmp.12260.76, label %if.then.12261, label %if.else.12262

if.then.12261:
  %unsafe.global.addr.12264.77 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12264.77, i64 0)
  call void (ptr) @free(ptr %unsafe.calloc.12194.21)
  %none.12266.79 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12193.19)
  %none.12268.81 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12191.16)
  %none.12270.83 = load ptr, ptr @py_None
  ret i64 -1

if.else.12262:
  br label %if.end.12263

if.end.12263:
  br label %while.cond.12271

while.cond.12271:
  %index.addr.85.phi.1 = phi i64 [ 0, %if.end.12263 ], [ %add.12311.120, %while.latch.12273 ]
  %started.addr.84.phi = phi i64 [ 0, %if.end.12263 ], [ %add.12309.118, %while.latch.12273 ]
  %icmp.12277.88 = icmp slt i64 %index.addr.85.phi.1, %carrier_count.addr.3.phi
  br i1 %icmp.12277.88, label %while.body.12272, label %while.end.12274

while.body.12272:
  %mul.12280.91 = mul i64 %index.addr.85.phi.1, 16
  %unsafe.ptr.add.12281.92 = getelementptr i8, ptr %unsafe.calloc.12193.19, i64 %mul.12280.91
  %unsafe.addr.12283.95 = getelementptr i8, ptr %unsafe.ptr.add.12281.92, i64 0
  %unsafe.addr.cast.12284.96 = bitcast ptr %unsafe.addr.12283.95 to ptr
  store ptr %unsafe.calloc.12194.21, ptr %unsafe.addr.cast.12284.96, align 1
  %none.12286.98 = load ptr, ptr @py_None
  %unsafe.addr.12288.100 = getelementptr i8, ptr %unsafe.ptr.add.12281.92, i64 8
  %unsafe.addr.cast.12289.101 = bitcast ptr %unsafe.addr.12288.100 to ptr
  store i64 %index.addr.85.phi.1, ptr %unsafe.addr.cast.12289.101, align 1
  %none.12291.103 = load ptr, ptr @py_None
  %mul.12294.106 = mul i64 %index.addr.85.phi.1, 8
  %unsafe.ptr.add.12295.107 = getelementptr i8, ptr %unsafe.calloc.12191.16, i64 %mul.12294.106
  %unsafe.function.addr.12296.108 = bitcast ptr @pcc_vthread_carrier_pool_worker_py to ptr
  %extern.pcc_thread_start.ret.12298.110 = call i64 (ptr, ptr, ptr) @pcc_thread_start(ptr %unsafe.ptr.add.12295.107, ptr %unsafe.function.addr.12296.108, ptr %unsafe.ptr.add.12281.92)
  %icmp.12299.111 = icmp ne i64 %extern.pcc_thread_start.ret.12298.110, 0
  br i1 %icmp.12299.111, label %if.then.12300, label %if.else.12301

while.latch.12273:
  br label %while.cond.12271

while.end.12274:
  %unsafe.addr.12313.122 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 32
  %unsafe.addr.cast.12314.123 = bitcast ptr %unsafe.addr.12313.122 to ptr
  store atomic i64 %started.addr.84.phi, ptr %unsafe.addr.cast.12314.123 release, align 8
  %none.12316.125 = load ptr, ptr @py_None
  br label %while.cond.12317

if.then.12300:
  %unsafe.ptr.add.12304.113 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 24
  %counter_add_ret.12305.114 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.ptr.add.12304.113, i64 1)
  %unsafe.global.addr.12306.115 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12307.116 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12306.115, i64 1)
  br label %while.end.12274

if.else.12301:
  br label %if.end.12302

if.end.12302:
  %add.12309.118 = add i64 %started.addr.84.phi, 1
  %add.12311.120 = add i64 %index.addr.85.phi.1, 1
  br label %while.latch.12273

while.cond.12317:
  %unsafe.addr.12322.127 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 40
  %unsafe.addr.cast.12323.128 = bitcast ptr %unsafe.addr.12322.127 to ptr
  %unsafe.atomic.load.12324.129 = load atomic i64, ptr %unsafe.addr.cast.12323.128 acquire, align 8
  %icmp.12326.131 = icmp slt i64 %unsafe.atomic.load.12324.129, %started.addr.84.phi
  br i1 %icmp.12326.131, label %while.body.12318, label %while.end.12320

while.body.12318:
  call void () @pcc_thread_safepoint()
  br label %while.latch.12319

while.latch.12319:
  br label %while.cond.12317

while.end.12320:
  %unsafe.addr.12328.133 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 48
  %unsafe.addr.cast.12329.134 = bitcast ptr %unsafe.addr.12328.133 to ptr
  store atomic i64 1, ptr %unsafe.addr.cast.12329.134 release, align 8
  %none.12330.135 = load ptr, ptr @py_None
  br label %while.cond.12331

while.cond.12331:
  %index.addr.85.phi = phi i64 [ 0, %while.end.12320 ], [ %add.12355.153, %while.latch.12333 ]
  %icmp.12337.138 = icmp slt i64 %index.addr.85.phi, %started.addr.84.phi
  br i1 %icmp.12337.138, label %while.body.12332, label %while.end.12334

while.body.12332:
  %mul.12340.141 = mul i64 %index.addr.85.phi, 8
  %unsafe.addr.12341.142 = getelementptr i8, ptr %unsafe.calloc.12191.16, i64 %mul.12340.141
  %unsafe.addr.cast.12342.143 = bitcast ptr %unsafe.addr.12341.142 to ptr
  %unsafe.load.ptr.12343.144 = load ptr, ptr %unsafe.addr.cast.12342.143, align 1
  %extern.pcc_thread_join.ret.12344.145 = call i64 (ptr, ptr) @pcc_thread_join(ptr %unsafe.load.ptr.12343.144, ptr null)
  %icmp.12345.146 = icmp ne i64 %extern.pcc_thread_join.ret.12344.145, 0
  br i1 %icmp.12345.146, label %if.then.12346, label %if.else.12347

while.latch.12333:
  br label %while.cond.12331

while.end.12334:
  %scheduler_lock_ret.12356.154 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12357.155 = icmp eq i64 %scheduler_lock_ret.12356.154, 0
  br i1 %icmp.12357.155, label %if.then.12358, label %if.else.12359

if.then.12346:
  %unsafe.ptr.add.12350.148 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 24
  %counter_add_ret.12351.149 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.ptr.add.12350.148, i64 1)
  %unsafe.global.addr.12352.150 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12353.151 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12352.150, i64 1)
  br label %if.end.12348

if.else.12347:
  br label %if.end.12348

if.end.12348:
  %add.12355.153 = add i64 %index.addr.85.phi, 1
  br label %while.latch.12333

if.then.12358:
  call void () @user_py_virtual_thread_runtime__carrier_queues_close()
  %unsafe.global.addr.12361.156 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12361.156, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br label %if.end.12360

if.else.12359:
  %unsafe.global.addr.12362.157 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12362.157, i64 0)
  br label %if.end.12360

if.end.12360:
  %unsafe.addr.12364.159 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 24
  %unsafe.addr.cast.12365.160 = bitcast ptr %unsafe.addr.12364.159 to ptr
  %unsafe.atomic.load.12366.161 = load atomic i64, ptr %unsafe.addr.cast.12365.160 acquire, align 8
  %unsafe.addr.12368.164 = getelementptr i8, ptr %unsafe.calloc.12194.21, i64 16
  %unsafe.addr.cast.12369.165 = bitcast ptr %unsafe.addr.12368.164 to ptr
  %unsafe.atomic.load.12370.166 = load atomic i64, ptr %unsafe.addr.cast.12369.165 acquire, align 8
  call void (ptr) @free(ptr %unsafe.calloc.12194.21)
  %none.12372.169 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12193.19)
  %none.12374.171 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12191.16)
  %none.12376.173 = load ptr, ptr @py_None
  %icmp.12378.175 = icmp eq i64 %started.addr.84.phi, 0
  br i1 %icmp.12378.175, label %if.then.12382, label %cond.right.12379

cond.right.12379:
  %icmp.12381.177 = icmp ne i64 %unsafe.atomic.load.12366.161, 0
  br i1 %icmp.12381.177, label %if.then.12382, label %if.else.12383

if.then.12382:
  ret i64 -1

if.else.12383:
  br label %if.end.12384

if.end.12384:
  ret i64 %unsafe.atomic.load.12370.166
}
define external i64 @py_virtual_thread_carrier_pool_start(i64 %carrier_count) "no-builtins" {
entry:
  %call.ret.root.12618.125 = alloca ptr
  %icmp.12462.4 = icmp sle i64 %carrier_count, 0
  br i1 %icmp.12462.4, label %if.then.12466, label %cond.right.12463

cond.right.12463:
  %extern.pcc_threads_enabled.ret.12464.5 = call i64 () @pcc_threads_enabled()
  %icmp.12465.6 = icmp eq i64 %extern.pcc_threads_enabled.ret.12464.5, 0
  br i1 %icmp.12465.6, label %if.then.12466, label %if.else.12467

if.then.12466:
  ret i64 0

if.else.12467:
  br label %if.end.12468

if.end.12468:
  %icmp.12470.8 = icmp sgt i64 %carrier_count, 64
  br i1 %icmp.12470.8, label %if.then.12471, label %if.else.12472

if.then.12471:
  br label %if.end.12473

if.else.12472:
  br label %if.end.12473

if.end.12473:
  %carrier_count.addr.2.phi = phi i64 [ 64, %if.then.12471 ], [ %carrier_count, %if.else.12472 ]
  %unsafe.calloc.12475.10 = call ptr (i64, i64) @calloc(i64 %carrier_count.addr.2.phi, i64 8)
  %unsafe.calloc.12477.13 = call ptr (i64, i64) @calloc(i64 %carrier_count.addr.2.phi, i64 8)
  %unsafe.ptr_is_null.i.12479.16 = ptrtoint ptr %unsafe.calloc.12475.10 to i64
  %unsafe.ptr.null.12480.17 = icmp eq i64 %unsafe.ptr_is_null.i.12479.16, 0
  br i1 %unsafe.ptr.null.12480.17, label %if.then.12485, label %cond.right.12481

cond.right.12481:
  %unsafe.ptr_is_null.i.12483.19 = ptrtoint ptr %unsafe.calloc.12477.13 to i64
  %unsafe.ptr.null.12484.20 = icmp eq i64 %unsafe.ptr_is_null.i.12483.19, 0
  br i1 %unsafe.ptr.null.12484.20, label %if.then.12485, label %if.else.12486

if.then.12485:
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12489.22 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12491.24 = load ptr, ptr @py_None
  ret i64 -1

if.else.12486:
  br label %if.end.12487

if.end.12487:
  %scheduler_lock_ret.12492.25 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12493.26 = icmp ne i64 %scheduler_lock_ret.12492.25, 0
  br i1 %icmp.12493.26, label %if.then.12494, label %if.else.12495

if.then.12494:
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12498.28 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12500.30 = load ptr, ptr @py_None
  ret i64 -1

if.else.12495:
  br label %if.end.12496

if.end.12496:
  %unsafe.global.addr.12501.31 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  %counter_ret.12502.32 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12501.31)
  %icmp.12503.33 = icmp ne i64 %counter_ret.12502.32, 0
  br i1 %icmp.12503.33, label %if.then.12504, label %if.else.12505

if.then.12504:
  %unsafe.global.addr.12507.34 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  %counter_ret.12508.35 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12507.34)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12510.38 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12512.40 = load ptr, ptr @py_None
  ret i64 %counter_ret.12508.35

if.else.12505:
  br label %if.end.12506

if.end.12506:
  %unsafe.global.addr.12514.42 = bitcast ptr @pcc_vthread_bounded_pool_running_py to ptr
  %counter_ret.12515.43 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12514.42)
  %icmp.12516.44 = icmp ne i64 %counter_ret.12515.43, 0
  br i1 %icmp.12516.44, label %if.then.12517, label %if.else.12518

if.then.12517:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12521.46 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12523.48 = load ptr, ptr @py_None
  ret i64 -1

if.else.12518:
  br label %if.end.12519

if.end.12519:
  %unsafe.global.addr.12524.49 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  %counter_ret.12525.50 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12524.49)
  %icmp.12526.51 = icmp ne i64 %counter_ret.12525.50, 0
  br i1 %icmp.12526.51, label %if.then.12527, label %if.else.12528

if.then.12527:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12531.53 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12533.55 = load ptr, ptr @py_None
  ret i64 -1

if.else.12528:
  br label %if.end.12529

if.end.12529:
  %unsafe.global.addr.12534.56 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12534.56, i64 1)
  %waitset_init_ret.12535.57 = call i64 () @user_py_virtual_thread_runtime__waitset_init()
  %icmp.12536.58 = icmp ne i64 %waitset_init_ret.12535.57, 0
  br i1 %icmp.12536.58, label %if.then.12537, label %if.else.12538

if.then.12537:
  %unsafe.global.addr.12540.59 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12540.59, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12542.61 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12544.63 = load ptr, ptr @py_None
  ret i64 -1

if.else.12538:
  br label %if.end.12539

if.end.12539:
  %carrier_queues_open_ret.12546.65 = call i64 (i64) @user_py_virtual_thread_runtime__carrier_queues_open(i64 %carrier_count.addr.2.phi)
  %icmp.12547.66 = icmp ne i64 %carrier_queues_open_ret.12546.65, 0
  br i1 %icmp.12547.66, label %if.then.12548, label %if.else.12549

if.then.12548:
  %waitset_dispose_locked_ret.12551.67 = call i64 () @user_py_virtual_thread_runtime__waitset_dispose_locked()
  %unsafe.global.addr.12552.68 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12552.68, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12554.70 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12556.72 = load ptr, ptr @py_None
  ret i64 -1

if.else.12549:
  br label %if.end.12550

if.end.12550:
  store ptr %unsafe.calloc.12475.10, ptr @pcc_vthread_persistent_handles_py
  %none.12558.74 = load ptr, ptr @py_None
  store ptr %unsafe.calloc.12477.13, ptr @pcc_vthread_persistent_args_py
  %none.12560.76 = load ptr, ptr @py_None
  %unsafe.global.addr.12561.77 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12561.77, i64 0)
  %unsafe.global.addr.12562.78 = bitcast ptr @pcc_vthread_persistent_pool_failures_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12562.78, i64 0)
  %unsafe.global.addr.12563.79 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12563.79, i64 0)
  %unsafe.global.addr.12564.80 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12564.80, i64 0)
  %unsafe.global.addr.12565.81 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12565.81, i64 1)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br label %while.cond.12566

while.cond.12566:
  %index.addr.83.phi.1 = phi i64 [ 0, %if.end.12550 ], [ %add.12600.112, %while.latch.12568 ]
  %started.addr.82.phi = phi i64 [ 0, %if.end.12550 ], [ %add.12596.108, %while.latch.12568 ]
  %icmp.12572.86 = icmp slt i64 %index.addr.83.phi.1, %carrier_count.addr.2.phi
  br i1 %icmp.12572.86, label %while.body.12567, label %while.end.12569

while.body.12567:
  %mul.12575.89 = mul i64 %index.addr.83.phi.1, 8
  %unsafe.ptr.add.12576.90 = getelementptr i8, ptr %unsafe.calloc.12477.13, i64 %mul.12575.89
  %unsafe.addr.12578.93 = getelementptr i8, ptr %unsafe.ptr.add.12576.90, i64 0
  %unsafe.addr.cast.12579.94 = bitcast ptr %unsafe.addr.12578.93 to ptr
  store i64 %index.addr.83.phi.1, ptr %unsafe.addr.cast.12579.94, align 1
  %none.12581.96 = load ptr, ptr @py_None
  %mul.12584.99 = mul i64 %index.addr.83.phi.1, 8
  %unsafe.ptr.add.12585.100 = getelementptr i8, ptr %unsafe.calloc.12475.10, i64 %mul.12584.99
  %unsafe.function.addr.12586.101 = bitcast ptr @pcc_vthread_persistent_carrier_worker_py to ptr
  %extern.pcc_thread_start.ret.12588.103 = call i64 (ptr, ptr, ptr) @pcc_thread_start(ptr %unsafe.ptr.add.12585.100, ptr %unsafe.function.addr.12586.101, ptr %unsafe.ptr.add.12576.90)
  %icmp.12589.104 = icmp ne i64 %extern.pcc_thread_start.ret.12588.103, 0
  br i1 %icmp.12589.104, label %if.then.12590, label %if.else.12591

while.latch.12568:
  br label %while.cond.12566

while.end.12569:
  %icmp.12603.115 = icmp eq i64 %started.addr.82.phi, %carrier_count.addr.2.phi
  br i1 %icmp.12603.115, label %if.then.12604, label %if.else.12605

if.then.12590:
  %unsafe.global.addr.12593.105 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12594.106 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12593.105, i64 1)
  br label %while.end.12569

if.else.12591:
  br label %if.end.12592

if.end.12592:
  %add.12596.108 = add i64 %started.addr.82.phi, 1
  %unsafe.global.addr.12597.109 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12597.109, i64 %add.12596.108)
  %add.12600.112 = add i64 %index.addr.83.phi.1, 1
  br label %while.latch.12568

if.then.12604:
  %unsafe.global.addr.12607.116 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12607.116, i64 0)
  ret i64 %started.addr.82.phi

if.else.12605:
  br label %if.end.12606

if.end.12606:
  %unsafe.global.addr.12609.118 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12609.118, i64 1)
  %scheduler_lock_ret.12610.119 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12611.120 = icmp ne i64 %scheduler_lock_ret.12610.119, 0
  br i1 %icmp.12611.120, label %if.then.12612, label %if.else.12613

if.then.12612:
  %unsafe.global.addr.12615.121 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12615.121, i64 0)
  ret i64 -1

if.else.12613:
  br label %if.end.12614

if.end.12614:
  %io_interrupt_locked_ret.12616.122 = call i64 () @user_py_virtual_thread_runtime__io_interrupt_locked()
  %scheduler_cond_ret.12617.124 = call ptr () @user_py_virtual_thread_runtime__scheduler_cond()
  store ptr null, ptr %call.ret.root.12618.125
  %call.ret.root.ptr.12619.126 = bitcast ptr %call.ret.root.12618.125 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12619.126, ptr %scheduler_cond_ret.12617.124)
  %gc.frame.lifo.map.ptr.12620.127 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12621.128 = bitcast ptr %call.ret.root.12618.125 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12620.127, ptr %gc.frame.lifo.slots.ptr.12621.128)
  %call.ret.current.12622.129 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.12619.126)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12619.126, ptr null)
  %gc.frame.lifo.leave.ptr.12623.130 = bitcast ptr %call.ret.root.12618.125 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12623.130)
  %extern.pcc_cond_broadcast.ret.12624.131 = call i64 (ptr) @pcc_cond_broadcast(ptr %call.ret.current.12622.129)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %icmp.12626.133 = icmp ne i64 %io_interrupt_locked_ret.12616.122, 0
  br i1 %icmp.12626.133, label %if.then.12627, label %if.else.12628

if.then.12627:
  %unsafe.global.addr.12630.134 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12630.134, i64 0)
  ret i64 -1

if.else.12628:
  br label %if.end.12629

if.end.12629:
  br label %while.cond.12631

while.cond.12631:
  %index.addr.83.phi = phi i64 [ 0, %if.end.12629 ], [ %add.12660.158, %while.latch.12633 ]
  %join_failed.addr.135.phi.1 = phi i64 [ 0, %if.end.12629 ], [ %join_failed.addr.135.phi, %while.latch.12633 ]
  %icmp.12637.138 = icmp slt i64 %index.addr.83.phi, %started.addr.82.phi
  br i1 %icmp.12637.138, label %while.body.12632, label %while.end.12634

while.body.12632:
  %mul.12640.141 = mul i64 %index.addr.83.phi, 8
  %unsafe.addr.12641.142 = getelementptr i8, ptr %unsafe.calloc.12475.10, i64 %mul.12640.141
  %unsafe.addr.cast.12642.143 = bitcast ptr %unsafe.addr.12641.142 to ptr
  %unsafe.load.ptr.12643.144 = load ptr, ptr %unsafe.addr.cast.12642.143, align 1
  %extern.pcc_thread_join.ret.12644.145 = call i64 (ptr, ptr) @pcc_thread_join(ptr %unsafe.load.ptr.12643.144, ptr null)
  %icmp.12645.146 = icmp eq i64 %extern.pcc_thread_join.ret.12644.145, 0
  br i1 %icmp.12645.146, label %if.then.12646, label %if.else.12647

while.latch.12633:
  br label %while.cond.12631

while.end.12634:
  %icmp.12662.160 = icmp ne i64 %join_failed.addr.135.phi.1, 0
  br i1 %icmp.12662.160, label %if.then.12663, label %if.else.12664

if.then.12646:
  %mul.12651.149 = mul i64 %index.addr.83.phi, 8
  %unsafe.addr.12652.150 = getelementptr i8, ptr %unsafe.calloc.12475.10, i64 %mul.12651.149
  %unsafe.addr.cast.12653.151 = bitcast ptr %unsafe.addr.12652.150 to ptr
  store ptr null, ptr %unsafe.addr.cast.12653.151, align 1
  %none.12654.152 = load ptr, ptr @py_None
  %unsafe.global.addr.12655.153 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  %counter_add_ret.12656.154 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12655.153, i64 1)
  br label %if.end.12648

if.else.12647:
  %unsafe.global.addr.12657.155 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12658.156 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12657.155, i64 1)
  br label %if.end.12648

if.end.12648:
  %join_failed.addr.135.phi = phi i64 [ %join_failed.addr.135.phi.1, %if.then.12646 ], [ 1, %if.else.12647 ]
  %add.12660.158 = add i64 %index.addr.83.phi, 1
  br label %while.latch.12633

if.then.12663:
  %unsafe.global.addr.12666.161 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12666.161, i64 0)
  ret i64 -1

if.else.12664:
  br label %if.end.12665

if.end.12665:
  %scheduler_lock_ret.12667.162 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12668.163 = icmp ne i64 %scheduler_lock_ret.12667.162, 0
  br i1 %icmp.12668.163, label %if.then.12669, label %if.else.12670

if.then.12669:
  %unsafe.global.addr.12672.164 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12672.164, i64 0)
  ret i64 -1

if.else.12670:
  br label %if.end.12671

if.end.12671:
  %waitset_dispose_locked_ret.12673.165 = call i64 () @user_py_virtual_thread_runtime__waitset_dispose_locked()
  %icmp.12674.166 = icmp ne i64 %waitset_dispose_locked_ret.12673.165, 0
  br i1 %icmp.12674.166, label %if.then.12675, label %if.else.12676

if.then.12675:
  %unsafe.global.addr.12678.167 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12678.167, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.12676:
  br label %if.end.12677

if.end.12677:
  call void () @user_py_virtual_thread_runtime__carrier_queues_close()
  store ptr null, ptr @pcc_vthread_persistent_handles_py
  %none.12679.168 = load ptr, ptr @py_None
  store ptr null, ptr @pcc_vthread_persistent_args_py
  %none.12680.169 = load ptr, ptr @py_None
  %unsafe.global.addr.12681.170 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12681.170, i64 0)
  %unsafe.global.addr.12682.171 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12682.171, i64 0)
  %unsafe.global.addr.12683.172 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12683.172, i64 0)
  %unsafe.global.addr.12684.173 = bitcast ptr @pcc_vthread_persistent_pool_failures_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12684.173, i64 0)
  %unsafe.global.addr.12685.174 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12685.174, i64 0)
  %unsafe.global.addr.12686.175 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12686.175, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.calloc.12477.13)
  %none.12688.177 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.calloc.12475.10)
  %none.12690.179 = load ptr, ptr @py_None
  ret i64 -1
}
define external i64 @py_virtual_thread_carrier_pool_stop() "no-builtins" {
entry:
  %call.ret.root.12716.19 = alloca ptr
  %unsafe.global.addr.12691.1 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  %counter_ret.12692.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12691.1)
  %icmp.12693.3 = icmp eq i64 %counter_ret.12692.2, 0
  br i1 %icmp.12693.3, label %if.then.12694, label %if.else.12695

if.then.12694:
  ret i64 0

if.else.12695:
  br label %if.end.12696

if.end.12696:
  %unsafe.global.addr.12697.4 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  %unsafe.addr.12698.5 = getelementptr i8, ptr %unsafe.global.addr.12697.4, i64 0
  %unsafe.addr.cast.12699.6 = bitcast ptr %unsafe.addr.12698.5 to ptr
  %unsafe.atomic.cas.12700.7 = cmpxchg ptr %unsafe.addr.cast.12699.6, i64 0, i64 1 acq_rel acquire
  %unsafe.atomic.cas.old.12701.8 = extractvalue { i64, i1 } %unsafe.atomic.cas.12700.7, 0
  %icmp.12703.11 = icmp ne i64 %unsafe.atomic.cas.old.12701.8, 0
  br i1 %icmp.12703.11, label %if.then.12704, label %if.else.12705

if.then.12704:
  ret i64 -1

if.else.12705:
  br label %if.end.12706

if.end.12706:
  %unsafe.global.addr.12707.12 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12707.12, i64 1)
  %scheduler_lock_ret.12708.13 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12709.14 = icmp ne i64 %scheduler_lock_ret.12708.13, 0
  br i1 %icmp.12709.14, label %if.then.12710, label %if.else.12711

if.then.12710:
  %unsafe.global.addr.12713.15 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12713.15, i64 0)
  ret i64 -1

if.else.12711:
  br label %if.end.12712

if.end.12712:
  %io_interrupt_locked_ret.12714.16 = call i64 () @user_py_virtual_thread_runtime__io_interrupt_locked()
  %scheduler_cond_ret.12715.18 = call ptr () @user_py_virtual_thread_runtime__scheduler_cond()
  store ptr null, ptr %call.ret.root.12716.19
  %call.ret.root.ptr.12717.20 = bitcast ptr %call.ret.root.12716.19 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12717.20, ptr %scheduler_cond_ret.12715.18)
  %gc.frame.lifo.map.ptr.12718.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12719.22 = bitcast ptr %call.ret.root.12716.19 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12718.21, ptr %gc.frame.lifo.slots.ptr.12719.22)
  %call.ret.current.12720.23 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.12717.20)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12717.20, ptr null)
  %gc.frame.lifo.leave.ptr.12721.24 = bitcast ptr %call.ret.root.12716.19 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12721.24)
  %extern.pcc_cond_broadcast.ret.12722.25 = call i64 (ptr) @pcc_cond_broadcast(ptr %call.ret.current.12720.23)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %icmp.12724.27 = icmp ne i64 %io_interrupt_locked_ret.12714.16, 0
  br i1 %icmp.12724.27, label %if.then.12725, label %if.else.12726

if.then.12725:
  %unsafe.global.addr.12728.28 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12728.28, i64 0)
  ret i64 -1

if.else.12726:
  br label %if.end.12727

if.end.12727:
  %unsafe.global.load.ptr.12729.29 = load ptr, ptr @pcc_vthread_persistent_handles_py
  %unsafe.global.load.ptr.12730.31 = load ptr, ptr @pcc_vthread_persistent_args_py
  %unsafe.global.addr.12731.33 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  %counter_ret.12732.34 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12731.33)
  br label %while.cond.12733

while.cond.12733:
  %index.addr.38.phi = phi i64 [ 0, %if.end.12727 ], [ %add.12779.73, %while.latch.12735 ]
  %join_failed.addr.37.phi.3 = phi i64 [ 0, %if.end.12727 ], [ %join_failed.addr.37.phi.2, %while.latch.12735 ]
  %joined.addr.36.phi.3 = phi i64 [ 0, %if.end.12727 ], [ %joined.addr.36.phi.2, %while.latch.12735 ]
  %icmp.12739.41 = icmp slt i64 %index.addr.38.phi, %counter_ret.12732.34
  br i1 %icmp.12739.41, label %while.body.12734, label %while.end.12736

while.body.12734:
  %unsafe.ptr_is_null.i.12741.43 = ptrtoint ptr %unsafe.global.load.ptr.12729.29 to i64
  %unsafe.ptr.null.12742.44 = icmp eq i64 %unsafe.ptr_is_null.i.12741.43, 0
  %b2i64.12743.45 = zext i1 %unsafe.ptr.null.12742.44 to i64
  %icmp.12744.46 = icmp eq i64 %b2i64.12743.45, 0
  br i1 %icmp.12744.46, label %if.then.12745, label %if.else.12746

while.latch.12735:
  br label %while.cond.12733

while.end.12736:
  %unsafe.global.addr.12780.74 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  %counter_add_ret.12782.76 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12780.74, i64 %joined.addr.36.phi.3)
  %icmp.12784.78 = icmp ne i64 %join_failed.addr.37.phi.3, 0
  br i1 %icmp.12784.78, label %if.then.12785, label %if.else.12786

if.then.12745:
  %mul.12750.49 = mul i64 %index.addr.38.phi, 8
  %unsafe.addr.12751.50 = getelementptr i8, ptr %unsafe.global.load.ptr.12729.29, i64 %mul.12750.49
  %unsafe.addr.cast.12752.51 = bitcast ptr %unsafe.addr.12751.50 to ptr
  %unsafe.load.ptr.12753.52 = load ptr, ptr %unsafe.addr.cast.12752.51, align 1
  %unsafe.ptr_is_null.i.12755.55 = ptrtoint ptr %unsafe.load.ptr.12753.52 to i64
  %unsafe.ptr.null.12756.56 = icmp eq i64 %unsafe.ptr_is_null.i.12755.55, 0
  %b2i64.12757.57 = zext i1 %unsafe.ptr.null.12756.56 to i64
  %icmp.12758.58 = icmp eq i64 %b2i64.12757.57, 0
  br i1 %icmp.12758.58, label %if.then.12759, label %if.else.12760

if.else.12746:
  br label %if.end.12747

if.end.12747:
  %join_failed.addr.37.phi.2 = phi i64 [ %join_failed.addr.37.phi.3, %if.else.12746 ], [ %join_failed.addr.37.phi.1, %if.end.12761 ]
  %joined.addr.36.phi.2 = phi i64 [ %joined.addr.36.phi.3, %if.else.12746 ], [ %joined.addr.36.phi.1, %if.end.12761 ]
  %add.12779.73 = add i64 %index.addr.38.phi, 1
  br label %while.latch.12735

if.then.12759:
  %extern.pcc_thread_join.ret.12763.60 = call i64 (ptr, ptr) @pcc_thread_join(ptr %unsafe.load.ptr.12753.52, ptr null)
  %icmp.12764.61 = icmp eq i64 %extern.pcc_thread_join.ret.12763.60, 0
  br i1 %icmp.12764.61, label %if.then.12765, label %if.else.12766

if.else.12760:
  br label %if.end.12761

if.end.12761:
  %join_failed.addr.37.phi.1 = phi i64 [ %join_failed.addr.37.phi.3, %if.else.12760 ], [ %join_failed.addr.37.phi, %if.end.12767 ]
  %joined.addr.36.phi.1 = phi i64 [ %joined.addr.36.phi.3, %if.else.12760 ], [ %joined.addr.36.phi, %if.end.12767 ]
  br label %if.end.12747

if.then.12765:
  %mul.12770.64 = mul i64 %index.addr.38.phi, 8
  %unsafe.addr.12771.65 = getelementptr i8, ptr %unsafe.global.load.ptr.12729.29, i64 %mul.12770.64
  %unsafe.addr.cast.12772.66 = bitcast ptr %unsafe.addr.12771.65 to ptr
  store ptr null, ptr %unsafe.addr.cast.12772.66, align 1
  %none.12773.67 = load ptr, ptr @py_None
  %add.12775.69 = add i64 %joined.addr.36.phi.3, 1
  br label %if.end.12767

if.else.12766:
  %unsafe.global.addr.12776.70 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12777.71 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12776.70, i64 1)
  br label %if.end.12767

if.end.12767:
  %join_failed.addr.37.phi = phi i64 [ %join_failed.addr.37.phi.3, %if.then.12765 ], [ 1, %if.else.12766 ]
  %joined.addr.36.phi = phi i64 [ %add.12775.69, %if.then.12765 ], [ %joined.addr.36.phi.3, %if.else.12766 ]
  br label %if.end.12761

if.then.12785:
  %unsafe.global.addr.12788.79 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12788.79, i64 0)
  ret i64 -1

if.else.12786:
  br label %if.end.12787

if.end.12787:
  %scheduler_lock_ret.12789.80 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12790.81 = icmp ne i64 %scheduler_lock_ret.12789.80, 0
  br i1 %icmp.12790.81, label %if.then.12791, label %if.else.12792

if.then.12791:
  %unsafe.global.addr.12794.82 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12794.82, i64 0)
  ret i64 -1

if.else.12792:
  br label %if.end.12793

if.end.12793:
  %waitset_dispose_locked_ret.12795.83 = call i64 () @user_py_virtual_thread_runtime__waitset_dispose_locked()
  %icmp.12796.84 = icmp ne i64 %waitset_dispose_locked_ret.12795.83, 0
  br i1 %icmp.12796.84, label %if.then.12797, label %if.else.12798

if.then.12797:
  %unsafe.global.addr.12800.85 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12800.85, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.12798:
  br label %if.end.12799

if.end.12799:
  call void () @user_py_virtual_thread_runtime__carrier_queues_close()
  %unsafe.global.addr.12801.86 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  %counter_ret.12802.87 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12801.86)
  %unsafe.global.addr.12803.89 = bitcast ptr @pcc_vthread_persistent_pool_failures_py to ptr
  %counter_ret.12804.90 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12803.89)
  store ptr null, ptr @pcc_vthread_persistent_handles_py
  %none.12805.92 = load ptr, ptr @py_None
  store ptr null, ptr @pcc_vthread_persistent_args_py
  %none.12806.93 = load ptr, ptr @py_None
  %unsafe.global.addr.12807.94 = bitcast ptr @pcc_vthread_persistent_carrier_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12807.94, i64 0)
  %unsafe.global.addr.12808.95 = bitcast ptr @pcc_vthread_persistent_pool_running_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12808.95, i64 0)
  %unsafe.global.addr.12809.96 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12809.96, i64 0)
  %unsafe.global.addr.12810.97 = bitcast ptr @pcc_vthread_persistent_pool_failures_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12810.97, i64 0)
  %unsafe.global.addr.12811.98 = bitcast ptr @pcc_vthread_persistent_joined_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12811.98, i64 0)
  %unsafe.global.addr.12812.99 = bitcast ptr @pcc_vthread_persistent_cleanup_active_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.12812.99, i64 0)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void (ptr) @free(ptr %unsafe.global.load.ptr.12730.31)
  %none.12814.101 = load ptr, ptr @py_None
  call void (ptr) @free(ptr %unsafe.global.load.ptr.12729.29)
  %none.12816.103 = load ptr, ptr @py_None
  %icmp.12818.105 = icmp ne i64 %counter_ret.12804.90, 0
  br i1 %icmp.12818.105, label %if.then.12819, label %if.else.12820

if.then.12819:
  ret i64 -1

if.else.12820:
  br label %if.end.12821

if.end.12821:
  ret i64 %counter_ret.12802.87
}
define external i64 @py_virtual_thread_state(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.14203.5 = alloca ptr
  %checked_ret.14202.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14203.5
  %call.ret.root.ptr.14204.6 = bitcast ptr %call.ret.root.14203.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14204.6, ptr %checked_ret.14202.4)
  %gc.frame.lifo.map.ptr.14205.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14206.8 = bitcast ptr %call.ret.root.14203.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14205.7, ptr %gc.frame.lifo.slots.ptr.14206.8)
  %call.ret.current.14207.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14204.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14204.6, ptr null)
  %gc.frame.lifo.leave.ptr.14208.10 = bitcast ptr %call.ret.root.14203.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14208.10)
  %unsafe.ptr_is_null.i.14210.13 = ptrtoint ptr %call.ret.current.14207.9 to i64
  %unsafe.ptr.null.14211.14 = icmp eq i64 %unsafe.ptr_is_null.i.14210.13, 0
  br i1 %unsafe.ptr.null.14211.14, label %if.then.14212, label %if.else.14213

if.then.14212:
  ret i64 -1

if.else.14213:
  br label %if.end.14214

if.end.14214:
  %scheduler_lock_ret.14215.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14216.16 = icmp ne i64 %scheduler_lock_ret.14215.15, 0
  br i1 %icmp.14216.16, label %if.then.14217, label %if.else.14218

if.then.14217:
  ret i64 -1

if.else.14218:
  br label %if.end.14219

if.end.14219:
  %unsafe.addr.14221.18 = getelementptr i8, ptr %call.ret.current.14207.9, i64 32
  %unsafe.addr.cast.14222.19 = bitcast ptr %unsafe.addr.14221.18 to ptr
  %unsafe.load.i64.14223.20 = load i64, ptr %unsafe.addr.cast.14222.19, align 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.14223.20
}
define external i64 @py_virtual_thread_complete(ptr %vthread, ptr %result) "no-builtins" {
entry:
  %call.ret.root.14227.7 = alloca ptr
  %join_node.addr.39 = alloca ptr
  store ptr null, ptr %join_node.addr.39
  %call.ret.root.14286.50 = alloca ptr
  %checked_ret.14226.6 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14227.7
  %call.ret.root.ptr.14228.8 = bitcast ptr %call.ret.root.14227.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14228.8, ptr %checked_ret.14226.6)
  %gc.frame.lifo.map.ptr.14229.9 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14230.10 = bitcast ptr %call.ret.root.14227.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14229.9, ptr %gc.frame.lifo.slots.ptr.14230.10)
  %call.ret.current.14231.11 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14228.8)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14228.8, ptr null)
  %gc.frame.lifo.leave.ptr.14232.12 = bitcast ptr %call.ret.root.14227.7 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14232.12)
  %unsafe.ptr_is_null.i.14234.15 = ptrtoint ptr %call.ret.current.14231.11 to i64
  %unsafe.ptr.null.14235.16 = icmp eq i64 %unsafe.ptr_is_null.i.14234.15, 0
  %gc.frame.map.ptr.14297.60 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.14298.61 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14297.60, ptr %gc.frame.slots.ptr.14298.61)
  br i1 %unsafe.ptr.null.14235.16, label %if.then.14236, label %if.else.14237

if.then.14236:
  %gc.frame.leave.ptr.14299.62 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14299.62)
  ret i64 -1

if.else.14237:
  br label %if.end.14238

if.end.14238:
  %scheduler_lock_ret.14239.17 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14240.18 = icmp ne i64 %scheduler_lock_ret.14239.17, 0
  br i1 %icmp.14240.18, label %if.then.14241, label %if.else.14242

if.then.14241:
  %gc.frame.leave.ptr.14300.63 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14300.63)
  ret i64 -1

if.else.14242:
  br label %if.end.14243

if.end.14243:
  %unsafe.addr.14245.20 = getelementptr i8, ptr %call.ret.current.14231.11, i64 32
  %unsafe.addr.cast.14246.21 = bitcast ptr %unsafe.addr.14245.20 to ptr
  %unsafe.load.i64.14247.22 = load i64, ptr %unsafe.addr.cast.14246.21, align 1
  %icmp.14248.23 = icmp eq i64 %unsafe.load.i64.14247.22, 4
  br i1 %icmp.14248.23, label %cond.right.14249, label %if.else.14256

cond.right.14249:
  %unsafe.addr.14251.25 = getelementptr i8, ptr %call.ret.current.14231.11, i64 80
  %unsafe.addr.cast.14252.26 = bitcast ptr %unsafe.addr.14251.25 to ptr
  %unsafe.load.i64.14253.27 = load i64, ptr %unsafe.addr.cast.14252.26, align 1
  %icmp.14254.28 = icmp ne i64 %unsafe.load.i64.14253.27, 0
  br i1 %icmp.14254.28, label %if.then.14255, label %if.else.14256

if.then.14255:
  %unsafe.addr.14259.30 = getelementptr i8, ptr %call.ret.current.14231.11, i64 80
  %unsafe.addr.cast.14260.31 = bitcast ptr %unsafe.addr.14259.30 to ptr
  %unsafe.load.i64.14261.32 = load i64, ptr %unsafe.addr.cast.14260.31, align 1
  %icmp.14262.33 = icmp eq i64 %unsafe.load.i64.14261.32, 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %icmp.14262.33, label %if.then.14264, label %if.else.14265

if.else.14256:
  br label %if.end.14257

if.end.14257:
  %channel_terminal_cleanup_locked_ret.14268.37 = call i64 (ptr) @user_py_virtual_thread_runtime__channel_terminal_cleanup_locked(ptr %call.ret.current.14231.11)
  %icmp.14269.38 = icmp slt i64 %channel_terminal_cleanup_locked_ret.14268.37, 0
  br i1 %icmp.14269.38, label %if.then.14270, label %if.else.14271

if.then.14264:
  %gc.frame.leave.ptr.14301.64 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14301.64)
  ret i64 0

if.else.14265:
  br label %if.end.14266

if.end.14266:
  %gc.frame.leave.ptr.14302.65 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14302.65)
  ret i64 -1

if.then.14270:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %gc.frame.leave.ptr.14303.66 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14303.66)
  ret i64 -1

if.else.14271:
  br label %if.end.14272

if.end.14272:
  store ptr null, ptr %join_node.addr.39
  %unsafe.addr.14274.41 = getelementptr i8, ptr %call.ret.current.14231.11, i64 104
  %unsafe.addr.cast.14275.42 = bitcast ptr %unsafe.addr.14274.41 to ptr
  %unsafe.load.ptr.14276.43 = load ptr, ptr %unsafe.addr.cast.14275.42, align 1
  %unsafe.ptr_is_null.i.14277.44 = ptrtoint ptr %unsafe.load.ptr.14276.43 to i64
  %unsafe.ptr.null.14278.45 = icmp eq i64 %unsafe.ptr_is_null.i.14277.44, 0
  %b2i64.14279.46 = zext i1 %unsafe.ptr.null.14278.45 to i64
  %icmp.14280.47 = icmp eq i64 %b2i64.14279.46, 0
  br i1 %icmp.14280.47, label %if.then.14281, label %if.else.14282

if.then.14281:
  %join_unlink_waiter_ret.14285.49 = call ptr (ptr) @user_py_virtual_thread_runtime__join_unlink_waiter(ptr %call.ret.current.14231.11)
  store ptr null, ptr %call.ret.root.14286.50
  %call.ret.root.ptr.14287.51 = bitcast ptr %call.ret.root.14286.50 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14287.51, ptr %join_unlink_waiter_ret.14285.49)
  %gc.frame.lifo.map.ptr.14288.52 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14289.53 = bitcast ptr %call.ret.root.14286.50 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14288.52, ptr %gc.frame.lifo.slots.ptr.14289.53)
  %call.ret.current.14290.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14287.51)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14287.51, ptr null)
  %gc.frame.lifo.leave.ptr.14291.55 = bitcast ptr %call.ret.root.14286.50 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14291.55)
  br i1 0, label %join_node.owned.release.14293, label %join_node.owned.cont.14294

if.else.14282:
  br label %if.end.14283

if.end.14283:
  %join_node.owned.56.phi = phi i1 [ 0, %if.else.14282 ], [ 1, %if.end.14310 ]
  %join_node.gc.slot.14316.74 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14317.75 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14316.74)
  %unsafe.ptr_is_null.i.14318.76 = ptrtoint ptr %join_node.14317.75 to i64
  %unsafe.ptr.null.14319.77 = icmp eq i64 %unsafe.ptr_is_null.i.14318.76, 0
  %b2i64.14320.78 = zext i1 %unsafe.ptr.null.14319.77 to i64
  %icmp.14321.79 = icmp eq i64 %b2i64.14320.78, 0
  br i1 %icmp.14321.79, label %if.then.14322, label %if.else.14323

join_node.owned.release.14293:
  %join_node.release.gc.slot.14295.58 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14295.58, ptr null)
  br label %join_node.owned.cont.14294

join_node.owned.cont.14294:
  %join_node.owned.resolve.14296.59 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.14290.54)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %join_node.owned.resolve.14296.59)
  store ptr %join_node.owned.resolve.14296.59, ptr %join_node.addr.39
  %join_node.gc.slot.14304.67 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14305.68 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14304.67)
  %unsafe.ptr_is_null.i.14306.69 = ptrtoint ptr %join_node.14305.68 to i64
  %unsafe.ptr.null.14307.70 = icmp eq i64 %unsafe.ptr_is_null.i.14306.69, 0
  br i1 %unsafe.ptr.null.14307.70, label %if.then.14308, label %if.else.14309

if.then.14308:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %join_node.owned.release.14312, label %join_node.owned.cont.14313

if.else.14309:
  br label %if.end.14310

if.end.14310:
  br label %if.end.14283

join_node.owned.release.14312:
  %join_node.release.gc.slot.14314.72 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14314.72, ptr null)
  br label %join_node.owned.cont.14313

join_node.owned.cont.14313:
  %gc.frame.leave.ptr.14315.73 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14315.73)
  ret i64 -1

if.then.14322:
  %join_node.gc.slot.14325.80 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14326.81 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14325.80)
  call void (ptr) @user_py_virtual_thread_runtime__join_release(ptr %join_node.14326.81)
  br label %if.end.14324

if.else.14323:
  br label %if.end.14324

if.end.14324:
  %timer_cancel_ret.14328.83 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.14231.11)
  %icmp.14329.84 = icmp slt i64 %timer_cancel_ret.14328.83, 0
  br i1 %icmp.14329.84, label %if.then.14334, label %cond.right.14330

cond.right.14330:
  %io_cancel_ret.14332.86 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.14231.11)
  %icmp.14333.87 = icmp slt i64 %io_cancel_ret.14332.86, 0
  br i1 %icmp.14333.87, label %if.then.14334, label %if.else.14335

if.then.14334:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14338, label %join_node.owned.cont.14339

if.else.14335:
  br label %if.end.14336

if.end.14336:
  %unsafe.addr.14343.92 = getelementptr i8, ptr %call.ret.current.14231.11, i64 128
  %unsafe.addr.cast.14344.93 = bitcast ptr %unsafe.addr.14343.92 to ptr
  %unsafe.load.i64.14345.94 = load i64, ptr %unsafe.addr.cast.14344.93, align 1
  %icmp.14346.95 = icmp ne i64 %unsafe.load.i64.14345.94, 0
  br i1 %icmp.14346.95, label %if.then.14347, label %if.else.14348

join_node.owned.release.14338:
  %join_node.release.gc.slot.14340.89 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14340.89, ptr null)
  br label %join_node.owned.cont.14339

join_node.owned.cont.14339:
  %gc.frame.leave.ptr.14341.90 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14341.90)
  ret i64 -1

if.then.14347:
  %cancel_publish_locked_ret.14351.97 = call i64 (ptr) @user_py_virtual_thread_runtime__cancel_publish_locked(ptr %call.ret.current.14231.11)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14354, label %join_node.owned.cont.14355

if.else.14348:
  br label %if.end.14349

if.end.14349:
  %unsafe.ptr_is_null.i.14359.104 = ptrtoint ptr %result to i64
  %unsafe.ptr.null.14360.105 = icmp eq i64 %unsafe.ptr_is_null.i.14359.104, 0
  br i1 %unsafe.ptr.null.14360.105, label %if.then.14361, label %if.else.14362

join_node.owned.release.14354:
  %join_node.release.gc.slot.14356.101 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14356.101, ptr null)
  br label %join_node.owned.cont.14355

join_node.owned.cont.14355:
  %gc.frame.leave.ptr.14357.102 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14357.102)
  ret i64 %cancel_publish_locked_ret.14351.97

if.then.14361:
  %unsafe.global.load.ptr.14364.106 = load ptr, ptr @py_None
  br label %if.end.14363

if.else.14362:
  br label %if.end.14363

if.end.14363:
  %result.addr.4.phi = phi ptr [ %unsafe.global.load.ptr.14364.106, %if.then.14361 ], [ %result, %if.else.14362 ]
  %unsafe.ptr.add.14367.109 = getelementptr i8, ptr %call.ret.current.14231.11, i64 24
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14231.11, ptr %unsafe.ptr.add.14367.109, ptr %result.addr.4.phi)
  %unsafe.ptr.add.14371.113 = getelementptr i8, ptr %call.ret.current.14231.11, i64 72
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14231.11, ptr %unsafe.ptr.add.14371.113, ptr null)
  %unsafe.ptr.add.14374.116 = getelementptr i8, ptr %call.ret.current.14231.11, i64 112
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14231.11, ptr %unsafe.ptr.add.14374.116, ptr null)
  call void (ptr, i64) @user_py_virtual_thread_runtime__channel_task_clear(ptr %call.ret.current.14231.11, i64 1)
  %unsafe.addr.14377.119 = getelementptr i8, ptr %call.ret.current.14231.11, i64 176
  %unsafe.addr.cast.14378.120 = bitcast ptr %unsafe.addr.14377.119 to ptr
  store i64 -1, ptr %unsafe.addr.cast.14378.120, align 1
  %none.14379.121 = load ptr, ptr @py_None
  %unsafe.addr.14381.123 = getelementptr i8, ptr %call.ret.current.14231.11, i64 184
  %unsafe.addr.cast.14382.124 = bitcast ptr %unsafe.addr.14381.123 to ptr
  store i64 -1, ptr %unsafe.addr.cast.14382.124, align 1
  %none.14383.125 = load ptr, ptr @py_None
  %unsafe.addr.14385.127 = getelementptr i8, ptr %call.ret.current.14231.11, i64 104
  %unsafe.addr.cast.14386.128 = bitcast ptr %unsafe.addr.14385.127 to ptr
  store ptr null, ptr %unsafe.addr.cast.14386.128, align 1
  %none.14387.129 = load ptr, ptr @py_None
  %unsafe.addr.14389.131 = getelementptr i8, ptr %call.ret.current.14231.11, i64 80
  %unsafe.addr.cast.14390.132 = bitcast ptr %unsafe.addr.14389.131 to ptr
  store i64 1, ptr %unsafe.addr.cast.14390.132, align 1
  %none.14391.133 = load ptr, ptr @py_None
  %unsafe.addr.14393.135 = getelementptr i8, ptr %call.ret.current.14231.11, i64 32
  %unsafe.addr.cast.14394.136 = bitcast ptr %unsafe.addr.14393.135 to ptr
  store i64 4, ptr %unsafe.addr.cast.14394.136, align 1
  %none.14395.137 = load ptr, ptr @py_None
  %unsafe.addr.14397.139 = getelementptr i8, ptr %call.ret.current.14231.11, i64 40
  %unsafe.addr.cast.14398.140 = bitcast ptr %unsafe.addr.14397.139 to ptr
  store i64 0, ptr %unsafe.addr.cast.14398.140, align 1
  %none.14399.141 = load ptr, ptr @py_None
  %unsafe.addr.14401.143 = getelementptr i8, ptr %call.ret.current.14231.11, i64 120
  %unsafe.addr.cast.14402.144 = bitcast ptr %unsafe.addr.14401.143 to ptr
  store i64 0, ptr %unsafe.addr.cast.14402.144, align 1
  %none.14403.145 = load ptr, ptr @py_None
  %unsafe.addr.14405.147 = getelementptr i8, ptr %call.ret.current.14231.11, i64 128
  %unsafe.addr.cast.14406.148 = bitcast ptr %unsafe.addr.14405.147 to ptr
  store i64 0, ptr %unsafe.addr.cast.14406.148, align 1
  %none.14407.149 = load ptr, ptr @py_None
  %join_wake_all_ret.14409.151 = call i64 (ptr) @user_py_virtual_thread_runtime__join_wake_all(ptr %call.ret.current.14231.11)
  %icmp.14410.152 = icmp ne i64 %join_wake_all_ret.14409.151, 0
  br i1 %icmp.14410.152, label %if.then.14411, label %if.else.14412

if.then.14411:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14415, label %join_node.owned.cont.14416

if.else.14412:
  br label %if.end.14413

if.end.14413:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 14, i64 0, i64 0, i64 4)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14420, label %join_node.owned.cont.14421

join_node.owned.release.14415:
  %join_node.release.gc.slot.14417.154 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14417.154, ptr null)
  br label %join_node.owned.cont.14416

join_node.owned.cont.14416:
  %gc.frame.leave.ptr.14418.155 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14418.155)
  ret i64 -1

join_node.owned.release.14420:
  %join_node.release.gc.slot.14422.157 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14422.157, ptr null)
  br label %join_node.owned.cont.14421

join_node.owned.cont.14421:
  %gc.frame.leave.ptr.14423.158 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14423.158)
  ret i64 0
}
define external i64 @py_virtual_thread_fail(ptr %vthread, ptr %exception) "no-builtins" {
entry:
  %call.ret.root.14426.7 = alloca ptr
  %join_node.addr.39 = alloca ptr
  store ptr null, ptr %join_node.addr.39
  %call.ret.root.14484.50 = alloca ptr
  %checked_ret.14425.6 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14426.7
  %call.ret.root.ptr.14427.8 = bitcast ptr %call.ret.root.14426.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14427.8, ptr %checked_ret.14425.6)
  %gc.frame.lifo.map.ptr.14428.9 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14429.10 = bitcast ptr %call.ret.root.14426.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14428.9, ptr %gc.frame.lifo.slots.ptr.14429.10)
  %call.ret.current.14430.11 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14427.8)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14427.8, ptr null)
  %gc.frame.lifo.leave.ptr.14431.12 = bitcast ptr %call.ret.root.14426.7 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14431.12)
  %unsafe.ptr_is_null.i.14433.15 = ptrtoint ptr %call.ret.current.14430.11 to i64
  %unsafe.ptr.null.14434.16 = icmp eq i64 %unsafe.ptr_is_null.i.14433.15, 0
  %gc.frame.map.ptr.14495.60 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.14496.61 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14495.60, ptr %gc.frame.slots.ptr.14496.61)
  br i1 %unsafe.ptr.null.14434.16, label %if.then.14439, label %cond.right.14435

cond.right.14435:
  %unsafe.ptr_is_null.i.14437.18 = ptrtoint ptr %exception to i64
  %unsafe.ptr.null.14438.19 = icmp eq i64 %unsafe.ptr_is_null.i.14437.18, 0
  br i1 %unsafe.ptr.null.14438.19, label %if.then.14439, label %if.else.14440

if.then.14439:
  %gc.frame.leave.ptr.14497.62 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14497.62)
  ret i64 -1

if.else.14440:
  br label %if.end.14441

if.end.14441:
  %scheduler_lock_ret.14442.20 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14443.21 = icmp ne i64 %scheduler_lock_ret.14442.20, 0
  br i1 %icmp.14443.21, label %if.then.14444, label %if.else.14445

if.then.14444:
  %gc.frame.leave.ptr.14498.63 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14498.63)
  ret i64 -1

if.else.14445:
  br label %if.end.14446

if.end.14446:
  %unsafe.addr.14448.23 = getelementptr i8, ptr %call.ret.current.14430.11, i64 80
  %unsafe.addr.cast.14449.24 = bitcast ptr %unsafe.addr.14448.23 to ptr
  %unsafe.load.i64.14450.25 = load i64, ptr %unsafe.addr.cast.14449.24, align 1
  %unsafe.addr.14452.28 = getelementptr i8, ptr %call.ret.current.14430.11, i64 32
  %unsafe.addr.cast.14453.29 = bitcast ptr %unsafe.addr.14452.28 to ptr
  %unsafe.load.i64.14454.30 = load i64, ptr %unsafe.addr.cast.14453.29, align 1
  %icmp.14455.31 = icmp eq i64 %unsafe.load.i64.14454.30, 4
  br i1 %icmp.14455.31, label %if.then.14456, label %if.else.14457

if.then.14456:
  %icmp.14460.33 = icmp eq i64 %unsafe.load.i64.14450.25, 2
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %icmp.14460.33, label %if.then.14462, label %if.else.14463

if.else.14457:
  br label %if.end.14458

if.end.14458:
  %channel_terminal_cleanup_locked_ret.14466.37 = call i64 (ptr) @user_py_virtual_thread_runtime__channel_terminal_cleanup_locked(ptr %call.ret.current.14430.11)
  %icmp.14467.38 = icmp slt i64 %channel_terminal_cleanup_locked_ret.14466.37, 0
  br i1 %icmp.14467.38, label %if.then.14468, label %if.else.14469

if.then.14462:
  %gc.frame.leave.ptr.14499.64 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14499.64)
  ret i64 0

if.else.14463:
  br label %if.end.14464

if.end.14464:
  %gc.frame.leave.ptr.14500.65 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14500.65)
  ret i64 -1

if.then.14468:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %gc.frame.leave.ptr.14501.66 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14501.66)
  ret i64 -1

if.else.14469:
  br label %if.end.14470

if.end.14470:
  store ptr null, ptr %join_node.addr.39
  %unsafe.addr.14472.41 = getelementptr i8, ptr %call.ret.current.14430.11, i64 104
  %unsafe.addr.cast.14473.42 = bitcast ptr %unsafe.addr.14472.41 to ptr
  %unsafe.load.ptr.14474.43 = load ptr, ptr %unsafe.addr.cast.14473.42, align 1
  %unsafe.ptr_is_null.i.14475.44 = ptrtoint ptr %unsafe.load.ptr.14474.43 to i64
  %unsafe.ptr.null.14476.45 = icmp eq i64 %unsafe.ptr_is_null.i.14475.44, 0
  %b2i64.14477.46 = zext i1 %unsafe.ptr.null.14476.45 to i64
  %icmp.14478.47 = icmp eq i64 %b2i64.14477.46, 0
  br i1 %icmp.14478.47, label %if.then.14479, label %if.else.14480

if.then.14479:
  %join_unlink_waiter_ret.14483.49 = call ptr (ptr) @user_py_virtual_thread_runtime__join_unlink_waiter(ptr %call.ret.current.14430.11)
  store ptr null, ptr %call.ret.root.14484.50
  %call.ret.root.ptr.14485.51 = bitcast ptr %call.ret.root.14484.50 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14485.51, ptr %join_unlink_waiter_ret.14483.49)
  %gc.frame.lifo.map.ptr.14486.52 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14487.53 = bitcast ptr %call.ret.root.14484.50 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14486.52, ptr %gc.frame.lifo.slots.ptr.14487.53)
  %call.ret.current.14488.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14485.51)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14485.51, ptr null)
  %gc.frame.lifo.leave.ptr.14489.55 = bitcast ptr %call.ret.root.14484.50 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14489.55)
  br i1 0, label %join_node.owned.release.14491, label %join_node.owned.cont.14492

if.else.14480:
  br label %if.end.14481

if.end.14481:
  %join_node.owned.56.phi = phi i1 [ 0, %if.else.14480 ], [ 1, %if.end.14508 ]
  %join_node.gc.slot.14514.74 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14515.75 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14514.74)
  %unsafe.ptr_is_null.i.14516.76 = ptrtoint ptr %join_node.14515.75 to i64
  %unsafe.ptr.null.14517.77 = icmp eq i64 %unsafe.ptr_is_null.i.14516.76, 0
  %b2i64.14518.78 = zext i1 %unsafe.ptr.null.14517.77 to i64
  %icmp.14519.79 = icmp eq i64 %b2i64.14518.78, 0
  br i1 %icmp.14519.79, label %if.then.14520, label %if.else.14521

join_node.owned.release.14491:
  %join_node.release.gc.slot.14493.58 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14493.58, ptr null)
  br label %join_node.owned.cont.14492

join_node.owned.cont.14492:
  %join_node.owned.resolve.14494.59 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.14488.54)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %join_node.owned.resolve.14494.59)
  store ptr %join_node.owned.resolve.14494.59, ptr %join_node.addr.39
  %join_node.gc.slot.14502.67 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14503.68 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14502.67)
  %unsafe.ptr_is_null.i.14504.69 = ptrtoint ptr %join_node.14503.68 to i64
  %unsafe.ptr.null.14505.70 = icmp eq i64 %unsafe.ptr_is_null.i.14504.69, 0
  br i1 %unsafe.ptr.null.14505.70, label %if.then.14506, label %if.else.14507

if.then.14506:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %join_node.owned.release.14510, label %join_node.owned.cont.14511

if.else.14507:
  br label %if.end.14508

if.end.14508:
  br label %if.end.14481

join_node.owned.release.14510:
  %join_node.release.gc.slot.14512.72 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14512.72, ptr null)
  br label %join_node.owned.cont.14511

join_node.owned.cont.14511:
  %gc.frame.leave.ptr.14513.73 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14513.73)
  ret i64 -1

if.then.14520:
  %join_node.gc.slot.14523.80 = bitcast ptr %join_node.addr.39 to ptr
  %join_node.14524.81 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %join_node.gc.slot.14523.80)
  call void (ptr) @user_py_virtual_thread_runtime__join_release(ptr %join_node.14524.81)
  br label %if.end.14522

if.else.14521:
  br label %if.end.14522

if.end.14522:
  %timer_cancel_ret.14526.83 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %call.ret.current.14430.11)
  %icmp.14527.84 = icmp slt i64 %timer_cancel_ret.14526.83, 0
  br i1 %icmp.14527.84, label %if.then.14532, label %cond.right.14528

cond.right.14528:
  %io_cancel_ret.14530.86 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %call.ret.current.14430.11)
  %icmp.14531.87 = icmp slt i64 %io_cancel_ret.14530.86, 0
  br i1 %icmp.14531.87, label %if.then.14532, label %if.else.14533

if.then.14532:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14536, label %join_node.owned.cont.14537

if.else.14533:
  br label %if.end.14534

if.end.14534:
  %unsafe.ptr.add.14542.93 = getelementptr i8, ptr %call.ret.current.14430.11, i64 24
  %unsafe.global.load.ptr.14543.94 = load ptr, ptr @py_None
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14430.11, ptr %unsafe.ptr.add.14542.93, ptr %unsafe.global.load.ptr.14543.94)
  %unsafe.ptr.add.14546.97 = getelementptr i8, ptr %call.ret.current.14430.11, i64 72
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14430.11, ptr %unsafe.ptr.add.14546.97, ptr %exception)
  %unsafe.ptr.add.14550.101 = getelementptr i8, ptr %call.ret.current.14430.11, i64 112
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.14430.11, ptr %unsafe.ptr.add.14550.101, ptr null)
  call void (ptr, i64) @user_py_virtual_thread_runtime__channel_task_clear(ptr %call.ret.current.14430.11, i64 1)
  %unsafe.addr.14553.104 = getelementptr i8, ptr %call.ret.current.14430.11, i64 176
  %unsafe.addr.cast.14554.105 = bitcast ptr %unsafe.addr.14553.104 to ptr
  store i64 -1, ptr %unsafe.addr.cast.14554.105, align 1
  %none.14555.106 = load ptr, ptr @py_None
  %unsafe.addr.14557.108 = getelementptr i8, ptr %call.ret.current.14430.11, i64 184
  %unsafe.addr.cast.14558.109 = bitcast ptr %unsafe.addr.14557.108 to ptr
  store i64 -1, ptr %unsafe.addr.cast.14558.109, align 1
  %none.14559.110 = load ptr, ptr @py_None
  %unsafe.addr.14561.112 = getelementptr i8, ptr %call.ret.current.14430.11, i64 104
  %unsafe.addr.cast.14562.113 = bitcast ptr %unsafe.addr.14561.112 to ptr
  store ptr null, ptr %unsafe.addr.cast.14562.113, align 1
  %none.14563.114 = load ptr, ptr @py_None
  %unsafe.addr.14565.116 = getelementptr i8, ptr %call.ret.current.14430.11, i64 80
  %unsafe.addr.cast.14566.117 = bitcast ptr %unsafe.addr.14565.116 to ptr
  store i64 2, ptr %unsafe.addr.cast.14566.117, align 1
  %none.14567.118 = load ptr, ptr @py_None
  %unsafe.addr.14569.120 = getelementptr i8, ptr %call.ret.current.14430.11, i64 32
  %unsafe.addr.cast.14570.121 = bitcast ptr %unsafe.addr.14569.120 to ptr
  store i64 4, ptr %unsafe.addr.cast.14570.121, align 1
  %none.14571.122 = load ptr, ptr @py_None
  %unsafe.addr.14573.124 = getelementptr i8, ptr %call.ret.current.14430.11, i64 40
  %unsafe.addr.cast.14574.125 = bitcast ptr %unsafe.addr.14573.124 to ptr
  store i64 0, ptr %unsafe.addr.cast.14574.125, align 1
  %none.14575.126 = load ptr, ptr @py_None
  %unsafe.addr.14577.128 = getelementptr i8, ptr %call.ret.current.14430.11, i64 120
  %unsafe.addr.cast.14578.129 = bitcast ptr %unsafe.addr.14577.128 to ptr
  store i64 0, ptr %unsafe.addr.cast.14578.129, align 1
  %none.14579.130 = load ptr, ptr @py_None
  %unsafe.addr.14581.132 = getelementptr i8, ptr %call.ret.current.14430.11, i64 128
  %unsafe.addr.cast.14582.133 = bitcast ptr %unsafe.addr.14581.132 to ptr
  store i64 0, ptr %unsafe.addr.cast.14582.133, align 1
  %none.14583.134 = load ptr, ptr @py_None
  %join_wake_all_ret.14585.136 = call i64 (ptr) @user_py_virtual_thread_runtime__join_wake_all(ptr %call.ret.current.14430.11)
  %icmp.14586.137 = icmp ne i64 %join_wake_all_ret.14585.136, 0
  br i1 %icmp.14586.137, label %if.then.14587, label %if.else.14588

join_node.owned.release.14536:
  %join_node.release.gc.slot.14538.89 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14538.89, ptr null)
  br label %join_node.owned.cont.14537

join_node.owned.cont.14537:
  %gc.frame.leave.ptr.14539.90 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14539.90)
  ret i64 -1

if.then.14587:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14591, label %join_node.owned.cont.14592

if.else.14588:
  br label %if.end.14589

if.end.14589:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 15, i64 0, i64 0, i64 4)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 %join_node.owned.56.phi, label %join_node.owned.release.14596, label %join_node.owned.cont.14597

join_node.owned.release.14591:
  %join_node.release.gc.slot.14593.139 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14593.139, ptr null)
  br label %join_node.owned.cont.14592

join_node.owned.cont.14592:
  %gc.frame.leave.ptr.14594.140 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14594.140)
  ret i64 -1

join_node.owned.release.14596:
  %join_node.release.gc.slot.14598.142 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %join_node.release.gc.slot.14598.142, ptr null)
  br label %join_node.owned.cont.14597

join_node.owned.cont.14597:
  %gc.frame.leave.ptr.14599.143 = bitcast ptr %join_node.addr.39 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14599.143)
  ret i64 0
}
define external i64 @py_virtual_thread_join(ptr %vthread, ptr %target) "no-builtins" {
entry:
  %call.ret.root.13699.7 = alloca ptr
  %waiter.addr.13 = alloca ptr
  store ptr null, ptr %waiter.addr.13
  %call.ret.root.13714.22 = alloca ptr
  %joined.addr.28 = alloca ptr
  store ptr null, ptr %joined.addr.28
  %current.addr.57 = alloca ptr
  store ptr null, ptr %current.addr.57
  %resolved.addr.69 = alloca ptr
  store ptr null, ptr %resolved.addr.69
  %checked_ret.13698.6 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.13699.7
  %call.ret.root.ptr.13700.8 = bitcast ptr %call.ret.root.13699.7 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13700.8, ptr %checked_ret.13698.6)
  %gc.frame.lifo.map.ptr.13701.9 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.13702.10 = bitcast ptr %call.ret.root.13699.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.13701.9, ptr %gc.frame.lifo.slots.ptr.13702.10)
  %call.ret.current.13703.11 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.13700.8)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13700.8, ptr null)
  %gc.frame.lifo.leave.ptr.13704.12 = bitcast ptr %call.ret.root.13699.7 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.13704.12)
  %gc.frame.map.ptr.13710.18 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.13711.19 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13710.18, ptr %gc.frame.slots.ptr.13711.19)
  %gc.frame.map.ptr.13725.33 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.13726.34 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13725.33, ptr %gc.frame.slots.ptr.13726.34)
  %gc.frame.map.ptr.13776.70 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13777.71 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13776.70, ptr %gc.frame.slots.ptr.13777.71)
  %gc.frame.map.ptr.13791.82 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13792.83 = bitcast ptr %current.addr.57 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13791.82, ptr %gc.frame.slots.ptr.13792.83)
  br i1 0, label %waiter.owned.release.13706, label %waiter.owned.cont.13707

waiter.owned.release.13706:
  %waiter.release.gc.slot.13708.16 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13708.16, ptr null)
  br label %waiter.owned.cont.13707

waiter.owned.cont.13707:
  %waiter.owned.resolve.13709.17 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.13703.11)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %waiter.owned.resolve.13709.17)
  store ptr %waiter.owned.resolve.13709.17, ptr %waiter.addr.13
  %checked_ret.13713.21 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %target)
  store ptr null, ptr %call.ret.root.13714.22
  %call.ret.root.ptr.13715.23 = bitcast ptr %call.ret.root.13714.22 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13715.23, ptr %checked_ret.13713.21)
  %gc.frame.lifo.map.ptr.13716.24 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.13717.25 = bitcast ptr %call.ret.root.13714.22 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.13716.24, ptr %gc.frame.lifo.slots.ptr.13717.25)
  %call.ret.current.13718.26 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.13715.23)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.13715.23, ptr null)
  %gc.frame.lifo.leave.ptr.13719.27 = bitcast ptr %call.ret.root.13714.22 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.13719.27)
  br i1 0, label %joined.owned.release.13721, label %joined.owned.cont.13722

joined.owned.release.13721:
  %joined.release.gc.slot.13723.31 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13723.31, ptr null)
  br label %joined.owned.cont.13722

joined.owned.cont.13722:
  %joined.owned.resolve.13724.32 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.13718.26)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %joined.owned.resolve.13724.32)
  store ptr %joined.owned.resolve.13724.32, ptr %joined.addr.28
  %waiter.gc.slot.13727.35 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13728.36 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13727.35)
  %unsafe.ptr_is_null.i.13729.37 = ptrtoint ptr %waiter.13728.36 to i64
  %unsafe.ptr.null.13730.38 = icmp eq i64 %unsafe.ptr_is_null.i.13729.37, 0
  br i1 %unsafe.ptr.null.13730.38, label %if.then.13744, label %cond.right.13731

cond.right.13731:
  %joined.gc.slot.13732.39 = bitcast ptr %joined.addr.28 to ptr
  %joined.13733.40 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %joined.gc.slot.13732.39)
  %unsafe.ptr_is_null.i.13734.41 = ptrtoint ptr %joined.13733.40 to i64
  %unsafe.ptr.null.13735.42 = icmp eq i64 %unsafe.ptr_is_null.i.13734.41, 0
  br i1 %unsafe.ptr.null.13735.42, label %if.then.13744, label %cond.right.13736

cond.right.13736:
  %waiter.gc.slot.13737.43 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13738.44 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13737.43)
  %unsafe.ptr.eq.l.13739.45 = ptrtoint ptr %waiter.13738.44 to i64
  %joined.gc.slot.13740.46 = bitcast ptr %joined.addr.28 to ptr
  %joined.13741.47 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %joined.gc.slot.13740.46)
  %unsafe.ptr.eq.r.13742.48 = ptrtoint ptr %joined.13741.47 to i64
  %unsafe.ptr.eq.13743.49 = icmp eq i64 %unsafe.ptr.eq.l.13739.45, %unsafe.ptr.eq.r.13742.48
  br i1 %unsafe.ptr.eq.13743.49, label %if.then.13744, label %if.else.13745

if.then.13744:
  br i1 1, label %joined.owned.release.13748, label %joined.owned.cont.13749

if.else.13745:
  br label %if.end.13746

if.end.13746:
  %unsafe.global.load.ptr.13757.56 = load ptr, ptr @pcc_current_virtual_thread_py
  store ptr %unsafe.global.load.ptr.13757.56, ptr %current.addr.57
  %current.13758.58 = load ptr, ptr %current.addr.57
  %unsafe.ptr_is_null.i.13759.59 = ptrtoint ptr %current.13758.58 to i64
  %unsafe.ptr.null.13760.60 = icmp eq i64 %unsafe.ptr_is_null.i.13759.59, 0
  br i1 %unsafe.ptr.null.13760.60, label %if.then.13761, label %if.else.13762

joined.owned.release.13748:
  %joined.release.gc.slot.13750.51 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13750.51, ptr null)
  br label %joined.owned.cont.13749

joined.owned.cont.13749:
  br i1 1, label %waiter.owned.release.13752, label %waiter.owned.cont.13753

waiter.owned.release.13752:
  %waiter.release.gc.slot.13754.53 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13754.53, ptr null)
  br label %waiter.owned.cont.13753

waiter.owned.cont.13753:
  %gc.frame.leave.ptr.13755.54 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13755.54)
  %gc.frame.leave.ptr.13756.55 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13756.55)
  %gc.frame.leave.ptr.13778.72 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13778.72)
  %gc.frame.leave.ptr.13793.84 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13793.84)
  ret i64 -1

if.then.13761:
  br i1 1, label %joined.owned.release.13765, label %joined.owned.cont.13766

if.else.13762:
  br label %if.end.13763

if.end.13763:
  %current.13774.67 = load ptr, ptr %current.addr.57
  %extern.pcc_gc_note_relocation_read.ret.13775.68 = call ptr (ptr) @pcc_gc_note_relocation_read(ptr %current.13774.67)
  store ptr %extern.pcc_gc_note_relocation_read.ret.13775.68, ptr %resolved.addr.69
  %resolved.gc.slot.13780.74 = bitcast ptr %resolved.addr.69 to ptr
  %resolved.13781.75 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %resolved.gc.slot.13780.74)
  %unsafe.ptr_is_null.i.13782.76 = ptrtoint ptr %resolved.13781.75 to i64
  %unsafe.ptr.null.13783.77 = icmp eq i64 %unsafe.ptr_is_null.i.13782.76, 0
  %b2i64.13784.78 = zext i1 %unsafe.ptr.null.13783.77 to i64
  %icmp.13785.79 = icmp eq i64 %b2i64.13784.78, 0
  br i1 %icmp.13785.79, label %if.then.13786, label %if.else.13787

joined.owned.release.13765:
  %joined.release.gc.slot.13767.62 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13767.62, ptr null)
  br label %joined.owned.cont.13766

joined.owned.cont.13766:
  br i1 1, label %waiter.owned.release.13769, label %waiter.owned.cont.13770

waiter.owned.release.13769:
  %waiter.release.gc.slot.13771.64 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13771.64, ptr null)
  br label %waiter.owned.cont.13770

waiter.owned.cont.13770:
  %gc.frame.leave.ptr.13772.65 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13772.65)
  %gc.frame.leave.ptr.13773.66 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13773.66)
  %gc.frame.leave.ptr.13779.73 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13779.73)
  %gc.frame.leave.ptr.13794.85 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13794.85)
  ret i64 -1

if.then.13786:
  %resolved.gc.slot.13789.80 = bitcast ptr %resolved.addr.69 to ptr
  %resolved.13790.81 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %resolved.gc.slot.13789.80)
  store ptr %resolved.13790.81, ptr %current.addr.57
  br label %if.end.13788

if.else.13787:
  br label %if.end.13788

if.end.13788:
  %current.gc.slot.13795.86 = bitcast ptr %current.addr.57 to ptr
  %current.13796.87 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %current.gc.slot.13795.86)
  %unsafe.ptr.eq.l.13797.88 = ptrtoint ptr %current.13796.87 to i64
  %waiter.gc.slot.13798.89 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13799.90 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13798.89)
  %unsafe.ptr.eq.r.13800.91 = ptrtoint ptr %waiter.13799.90 to i64
  %unsafe.ptr.eq.13801.92 = icmp eq i64 %unsafe.ptr.eq.l.13797.88, %unsafe.ptr.eq.r.13800.91
  %b2i64.13802.93 = zext i1 %unsafe.ptr.eq.13801.92 to i64
  %icmp.13803.94 = icmp eq i64 %b2i64.13802.93, 0
  br i1 %icmp.13803.94, label %if.then.13804, label %if.else.13805

if.then.13804:
  br i1 1, label %joined.owned.release.13808, label %joined.owned.cont.13809

if.else.13805:
  br label %if.end.13806

if.end.13806:
  %scheduler_lock_ret.13819.103 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.13820.104 = icmp ne i64 %scheduler_lock_ret.13819.103, 0
  br i1 %icmp.13820.104, label %if.then.13821, label %if.else.13822

joined.owned.release.13808:
  %joined.release.gc.slot.13810.96 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13810.96, ptr null)
  br label %joined.owned.cont.13809

joined.owned.cont.13809:
  br i1 1, label %waiter.owned.release.13812, label %waiter.owned.cont.13813

waiter.owned.release.13812:
  %waiter.release.gc.slot.13814.98 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13814.98, ptr null)
  br label %waiter.owned.cont.13813

waiter.owned.cont.13813:
  %gc.frame.leave.ptr.13815.99 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13815.99)
  %gc.frame.leave.ptr.13816.100 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13816.100)
  %gc.frame.leave.ptr.13817.101 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13817.101)
  %gc.frame.leave.ptr.13818.102 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13818.102)
  ret i64 -1

if.then.13821:
  br i1 1, label %joined.owned.release.13825, label %joined.owned.cont.13826

if.else.13822:
  br label %if.end.13823

if.end.13823:
  %waiter.gc.slot.13836.113 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13837.114 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13836.113)
  %unsafe.addr.13838.115 = getelementptr i8, ptr %waiter.13837.114, i64 32
  %unsafe.addr.cast.13839.116 = bitcast ptr %unsafe.addr.13838.115 to ptr
  %unsafe.load.i64.13840.117 = load i64, ptr %unsafe.addr.cast.13839.116, align 1
  %icmp.13841.118 = icmp ne i64 %unsafe.load.i64.13840.117, 2
  br i1 %icmp.13841.118, label %if.then.13863, label %cond.right.13842

joined.owned.release.13825:
  %joined.release.gc.slot.13827.106 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13827.106, ptr null)
  br label %joined.owned.cont.13826

joined.owned.cont.13826:
  br i1 1, label %waiter.owned.release.13829, label %waiter.owned.cont.13830

waiter.owned.release.13829:
  %waiter.release.gc.slot.13831.108 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13831.108, ptr null)
  br label %waiter.owned.cont.13830

waiter.owned.cont.13830:
  %gc.frame.leave.ptr.13832.109 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13832.109)
  %gc.frame.leave.ptr.13833.110 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13833.110)
  %gc.frame.leave.ptr.13834.111 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13834.111)
  %gc.frame.leave.ptr.13835.112 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13835.112)
  ret i64 -1

cond.right.13842:
  %waiter.gc.slot.13843.119 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13844.120 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13843.119)
  %unsafe.addr.13845.121 = getelementptr i8, ptr %waiter.13844.120, i64 104
  %unsafe.addr.cast.13846.122 = bitcast ptr %unsafe.addr.13845.121 to ptr
  %unsafe.load.ptr.13847.123 = load ptr, ptr %unsafe.addr.cast.13846.122, align 1
  %unsafe.ptr_is_null.i.13848.124 = ptrtoint ptr %unsafe.load.ptr.13847.123 to i64
  %unsafe.ptr.null.13849.125 = icmp eq i64 %unsafe.ptr_is_null.i.13848.124, 0
  %b2i64.13850.126 = zext i1 %unsafe.ptr.null.13849.125 to i64
  %icmp.13851.127 = icmp eq i64 %b2i64.13850.126, 0
  br i1 %icmp.13851.127, label %if.then.13863, label %cond.right.13852

cond.right.13852:
  %waiter.gc.slot.13853.128 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13854.129 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13853.128)
  %waiter.gc.slot.13855.130 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13856.131 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13855.130)
  %unsafe.ptr.add.13857.132 = getelementptr i8, ptr %waiter.13856.131, i64 112
  %extern.pcc_gc_load_ptr.ret.13858.133 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %waiter.13854.129, ptr %unsafe.ptr.add.13857.132)
  %unsafe.ptr_is_null.i.13859.134 = ptrtoint ptr %extern.pcc_gc_load_ptr.ret.13858.133 to i64
  %unsafe.ptr.null.13860.135 = icmp eq i64 %unsafe.ptr_is_null.i.13859.134, 0
  %b2i64.13861.136 = zext i1 %unsafe.ptr.null.13860.135 to i64
  %icmp.13862.137 = icmp eq i64 %b2i64.13861.136, 0
  br i1 %icmp.13862.137, label %if.then.13863, label %if.else.13864

if.then.13863:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %joined.owned.release.13867, label %joined.owned.cont.13868

if.else.13864:
  br label %if.end.13865

if.end.13865:
  %waiter.gc.slot.13878.146 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13879.147 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13878.146)
  %waiter.gc.slot.13880.148 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13881.149 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13880.148)
  %unsafe.ptr.add.13882.150 = getelementptr i8, ptr %waiter.13881.149, i64 112
  %joined.gc.slot.13883.151 = bitcast ptr %joined.addr.28 to ptr
  %joined.13884.152 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %joined.gc.slot.13883.151)
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %waiter.13879.147, ptr %unsafe.ptr.add.13882.150, ptr %joined.13884.152)
  %joined.gc.slot.13885.153 = bitcast ptr %joined.addr.28 to ptr
  %joined.13886.154 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %joined.gc.slot.13885.153)
  %unsafe.addr.13887.155 = getelementptr i8, ptr %joined.13886.154, i64 32
  %unsafe.addr.cast.13888.156 = bitcast ptr %unsafe.addr.13887.155 to ptr
  %unsafe.load.i64.13889.157 = load i64, ptr %unsafe.addr.cast.13888.156, align 1
  %icmp.13890.158 = icmp eq i64 %unsafe.load.i64.13889.157, 4
  br i1 %icmp.13890.158, label %if.then.13891, label %if.else.13892

joined.owned.release.13867:
  %joined.release.gc.slot.13869.139 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13869.139, ptr null)
  br label %joined.owned.cont.13868

joined.owned.cont.13868:
  br i1 1, label %waiter.owned.release.13871, label %waiter.owned.cont.13872

waiter.owned.release.13871:
  %waiter.release.gc.slot.13873.141 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13873.141, ptr null)
  br label %waiter.owned.cont.13872

waiter.owned.cont.13872:
  %gc.frame.leave.ptr.13874.142 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13874.142)
  %gc.frame.leave.ptr.13875.143 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13875.143)
  %gc.frame.leave.ptr.13876.144 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13876.144)
  %gc.frame.leave.ptr.13877.145 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13877.145)
  ret i64 -1

if.then.13891:
  %waiter.gc.slot.13894.159 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13895.160 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13894.159)
  %unsafe.addr.13896.161 = getelementptr i8, ptr %waiter.13895.160, i64 120
  %unsafe.addr.cast.13897.162 = bitcast ptr %unsafe.addr.13896.161 to ptr
  store i64 0, ptr %unsafe.addr.cast.13897.162, align 1
  %none.13898.163 = load ptr, ptr @py_None
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %joined.owned.release.13900, label %joined.owned.cont.13901

if.else.13892:
  br label %if.end.13893

if.end.13893:
  %joined.gc.slot.13911.172 = bitcast ptr %joined.addr.28 to ptr
  %joined.13912.173 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %joined.gc.slot.13911.172)
  %waiter.gc.slot.13913.174 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13914.175 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13913.174)
  %join_enqueue_ret.13915.176 = call i64 (ptr, ptr) @user_py_virtual_thread_runtime__join_enqueue(ptr %joined.13912.173, ptr %waiter.13914.175)
  %icmp.13916.177 = icmp ne i64 %join_enqueue_ret.13915.176, 0
  br i1 %icmp.13916.177, label %if.then.13917, label %if.else.13918

joined.owned.release.13900:
  %joined.release.gc.slot.13902.165 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13902.165, ptr null)
  br label %joined.owned.cont.13901

joined.owned.cont.13901:
  br i1 1, label %waiter.owned.release.13904, label %waiter.owned.cont.13905

waiter.owned.release.13904:
  %waiter.release.gc.slot.13906.167 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13906.167, ptr null)
  br label %waiter.owned.cont.13905

waiter.owned.cont.13905:
  %gc.frame.leave.ptr.13907.168 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13907.168)
  %gc.frame.leave.ptr.13908.169 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13908.169)
  %gc.frame.leave.ptr.13909.170 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13909.170)
  %gc.frame.leave.ptr.13910.171 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13910.171)
  ret i64 1

if.then.13917:
  %waiter.gc.slot.13920.178 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13921.179 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13920.178)
  %waiter.gc.slot.13922.180 = bitcast ptr %waiter.addr.13 to ptr
  %waiter.13923.181 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %waiter.gc.slot.13922.180)
  %unsafe.ptr.add.13924.182 = getelementptr i8, ptr %waiter.13923.181, i64 112
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %waiter.13921.179, ptr %unsafe.ptr.add.13924.182, ptr null)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %joined.owned.release.13926, label %joined.owned.cont.13927

if.else.13918:
  br label %if.end.13919

if.end.13919:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  br i1 1, label %joined.owned.release.13938, label %joined.owned.cont.13939

joined.owned.release.13926:
  %joined.release.gc.slot.13928.184 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13928.184, ptr null)
  br label %joined.owned.cont.13927

joined.owned.cont.13927:
  br i1 1, label %waiter.owned.release.13930, label %waiter.owned.cont.13931

waiter.owned.release.13930:
  %waiter.release.gc.slot.13932.186 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13932.186, ptr null)
  br label %waiter.owned.cont.13931

waiter.owned.cont.13931:
  %gc.frame.leave.ptr.13933.187 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13933.187)
  %gc.frame.leave.ptr.13934.188 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13934.188)
  %gc.frame.leave.ptr.13935.189 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13935.189)
  %gc.frame.leave.ptr.13936.190 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13936.190)
  ret i64 -1

joined.owned.release.13938:
  %joined.release.gc.slot.13940.192 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %joined.release.gc.slot.13940.192, ptr null)
  br label %joined.owned.cont.13939

joined.owned.cont.13939:
  br i1 1, label %waiter.owned.release.13942, label %waiter.owned.cont.13943

waiter.owned.release.13942:
  %waiter.release.gc.slot.13944.194 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %waiter.release.gc.slot.13944.194, ptr null)
  br label %waiter.owned.cont.13943

waiter.owned.cont.13943:
  %gc.frame.leave.ptr.13945.195 = bitcast ptr %current.addr.57 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13945.195)
  %gc.frame.leave.ptr.13946.196 = bitcast ptr %resolved.addr.69 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13946.196)
  %gc.frame.leave.ptr.13947.197 = bitcast ptr %joined.addr.28 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13947.197)
  %gc.frame.leave.ptr.13948.198 = bitcast ptr %waiter.addr.13 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13948.198)
  ret i64 0
}
define external ptr @py_virtual_thread_join_result(ptr %vthread) "no-builtins" {
strict.nolib.stub:
  %.203 = getelementptr inbounds [91 x i8], ptr @.strict.nolib.msg.33, i32 0, i32 0
  %strict.nolib.exc.14200.204 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.203)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.14200.204)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.14200.204)
  ret ptr null
}
define external ptr @py_virtual_thread_channel_mpsc(i64 %capacity) "no-builtins" {
strict.nolib.stub:
  %.19 = getelementptr inbounds [92 x i8], ptr @.strict.nolib.msg.15, i32 0, i32 0
  %strict.nolib.exc.4493.20 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.19)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4493.20)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4493.20)
  ret ptr null
}
define external ptr @py_virtual_thread_channel_oneshot() "no-builtins" {
strict.nolib.stub:
  %.16 = getelementptr inbounds [95 x i8], ptr @.strict.nolib.msg.16, i32 0, i32 0
  %strict.nolib.exc.4509.17 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.16)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4509.17)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4509.17)
  ret ptr null
}
define external ptr @py_virtual_thread_channel_sender_clone(ptr %sender) "no-builtins" {
strict.nolib.stub:
  %.186 = getelementptr inbounds [100 x i8], ptr @.strict.nolib.msg.17, i32 0, i32 0
  %strict.nolib.exc.4735.187 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.186)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4735.187)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4735.187)
  ret ptr null
}
define external i64 @py_virtual_thread_channel_send_begin(ptr %vthread, ptr %sender, ptr %value) "no-builtins" {
strict.nolib.stub:
  %.413 = getelementptr inbounds [98 x i8], ptr @.strict.nolib.msg.20, i32 0, i32 0
  %strict.nolib.exc.5715.414 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.413)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.5715.414)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.5715.414)
  ret i64 0
}
define external i64 @py_virtual_thread_channel_send_result(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.5718.5 = alloca ptr
  %checked_ret.5717.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.5718.5
  %call.ret.root.ptr.5719.6 = bitcast ptr %call.ret.root.5718.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.5719.6, ptr %checked_ret.5717.4)
  %gc.frame.lifo.map.ptr.5720.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.5721.8 = bitcast ptr %call.ret.root.5718.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.5720.7, ptr %gc.frame.lifo.slots.ptr.5721.8)
  %call.ret.current.5722.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.5719.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.5719.6, ptr null)
  %gc.frame.lifo.leave.ptr.5723.10 = bitcast ptr %call.ret.root.5718.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.5723.10)
  %unsafe.ptr_is_null.i.5725.13 = ptrtoint ptr %call.ret.current.5722.9 to i64
  %unsafe.ptr.null.5726.14 = icmp eq i64 %unsafe.ptr_is_null.i.5725.13, 0
  br i1 %unsafe.ptr.null.5726.14, label %if.then.5727, label %if.else.5728

if.then.5727:
  ret i64 -1

if.else.5728:
  br label %if.end.5729

if.end.5729:
  %scheduler_lock_ret.5730.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.5731.16 = icmp ne i64 %scheduler_lock_ret.5730.15, 0
  br i1 %icmp.5731.16, label %if.then.5732, label %if.else.5733

if.then.5732:
  ret i64 -1

if.else.5733:
  br label %if.end.5734

if.end.5734:
  %unsafe.addr.5736.18 = getelementptr i8, ptr %call.ret.current.5722.9, i64 176
  %unsafe.addr.cast.5737.19 = bitcast ptr %unsafe.addr.5736.18 to ptr
  %unsafe.load.i64.5738.20 = load i64, ptr %unsafe.addr.cast.5737.19, align 1
  %unsafe.addr.5740.23 = getelementptr i8, ptr %call.ret.current.5722.9, i64 120
  %unsafe.addr.cast.5741.24 = bitcast ptr %unsafe.addr.5740.23 to ptr
  %unsafe.load.i64.5742.25 = load i64, ptr %unsafe.addr.cast.5741.24, align 1
  %icmp.5743.26 = icmp ne i64 %unsafe.load.i64.5742.25, 0
  br i1 %icmp.5743.26, label %if.then.5750, label %cond.right.5744

cond.right.5744:
  %icmp.5746.28 = icmp ne i64 %unsafe.load.i64.5738.20, 0
  br i1 %icmp.5746.28, label %cond.right.5747, label %if.else.5751

cond.right.5747:
  %icmp.5749.30 = icmp ne i64 %unsafe.load.i64.5738.20, 1
  br i1 %icmp.5749.30, label %if.then.5750, label %if.else.5751

if.then.5750:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.5751:
  br label %if.end.5752

if.end.5752:
  %unsafe.addr.5754.32 = getelementptr i8, ptr %call.ret.current.5722.9, i64 176
  %unsafe.addr.cast.5755.33 = bitcast ptr %unsafe.addr.5754.32 to ptr
  store i64 -1, ptr %unsafe.addr.cast.5755.33, align 1
  %none.5756.34 = load ptr, ptr @py_None
  %unsafe.addr.5758.36 = getelementptr i8, ptr %call.ret.current.5722.9, i64 184
  %unsafe.addr.cast.5759.37 = bitcast ptr %unsafe.addr.5758.36 to ptr
  store i64 -1, ptr %unsafe.addr.cast.5759.37, align 1
  %none.5760.38 = load ptr, ptr @py_None
  %unsafe.ptr.add.5763.41 = getelementptr i8, ptr %call.ret.current.5722.9, i64 168
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %call.ret.current.5722.9, ptr %unsafe.ptr.add.5763.41, ptr null)
  %unsafe.addr.5765.43 = getelementptr i8, ptr %call.ret.current.5722.9, i64 128
  %unsafe.addr.cast.5766.44 = bitcast ptr %unsafe.addr.5765.43 to ptr
  %unsafe.load.i64.5767.45 = load i64, ptr %unsafe.addr.cast.5766.44, align 1
  %icmp.5768.46 = icmp eq i64 %unsafe.load.i64.5767.45, 2
  br i1 %icmp.5768.46, label %if.then.5769, label %if.else.5770

if.then.5769:
  %unsafe.addr.5773.48 = getelementptr i8, ptr %call.ret.current.5722.9, i64 128
  %unsafe.addr.cast.5774.49 = bitcast ptr %unsafe.addr.5773.48 to ptr
  store i64 1, ptr %unsafe.addr.cast.5774.49, align 1
  %none.5775.50 = load ptr, ptr @py_None
  br label %if.end.5771

if.else.5770:
  br label %if.end.5771

if.end.5771:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.5738.20
}
define external i64 @py_virtual_thread_channel_recv_begin(ptr %vthread, ptr %receiver) "no-builtins" {
strict.nolib.stub:
  %.207 = getelementptr inbounds [98 x i8], ptr @.strict.nolib.msg.21, i32 0, i32 0
  %strict.nolib.exc.6032.208 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.207)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.6032.208)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.6032.208)
  ret i64 0
}
define external ptr @py_virtual_thread_channel_recv_result(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.6418.5 = alloca ptr
  %call.ret.root.6432.17 = alloca ptr
  %checked_ret.6417.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.6418.5
  %call.ret.root.ptr.6419.6 = bitcast ptr %call.ret.root.6418.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.6419.6, ptr %checked_ret.6417.4)
  %gc.frame.lifo.map.ptr.6420.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.6421.8 = bitcast ptr %call.ret.root.6418.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.6420.7, ptr %gc.frame.lifo.slots.ptr.6421.8)
  %call.ret.current.6422.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.6419.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.6419.6, ptr null)
  %gc.frame.lifo.leave.ptr.6423.10 = bitcast ptr %call.ret.root.6418.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.6423.10)
  %unsafe.ptr_is_null.i.6425.13 = ptrtoint ptr %call.ret.current.6422.9 to i64
  %unsafe.ptr.null.6426.14 = icmp eq i64 %unsafe.ptr_is_null.i.6425.13, 0
  br i1 %unsafe.ptr.null.6426.14, label %if.then.6427, label %if.else.6428

if.then.6427:
  ret ptr null

if.else.6428:
  br label %if.end.6429

if.end.6429:
  %channel_result_tuple_ret.6431.16 = call ptr (ptr, i64) @user_py_virtual_thread_runtime__channel_result_tuple(ptr %call.ret.current.6422.9, i64 0)
  store ptr null, ptr %call.ret.root.6432.17
  %call.ret.root.ptr.6433.18 = bitcast ptr %call.ret.root.6432.17 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.6433.18, ptr %channel_result_tuple_ret.6431.16)
  %gc.frame.lifo.map.ptr.6434.19 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.6435.20 = bitcast ptr %call.ret.root.6432.17 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.6434.19, ptr %gc.frame.lifo.slots.ptr.6435.20)
  %call.ret.current.6436.21 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.6433.18)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.6433.18, ptr null)
  %gc.frame.lifo.leave.ptr.6437.22 = bitcast ptr %call.ret.root.6432.17 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.6437.22)
  %ret.tmp.root.6438.23 = alloca ptr
  store ptr null, ptr %ret.tmp.root.6438.23
  %ret.tmp.root.ptr.6439.24 = bitcast ptr %ret.tmp.root.6438.23 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.6439.24, ptr %call.ret.current.6436.21)
  %gc.frame.lifo.map.ptr.6440.25 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.6441.26 = bitcast ptr %ret.tmp.root.6438.23 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.6440.25, ptr %gc.frame.lifo.slots.ptr.6441.26)
  %ret.tmp.current.6442.27 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.6439.24)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.6439.24, ptr null)
  %gc.frame.lifo.leave.ptr.6443.28 = bitcast ptr %ret.tmp.root.6438.23 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.6443.28)
  ret ptr %ret.tmp.current.6442.27
}
define external i64 @py_virtual_thread_channel_close_sender(ptr %sender) "no-builtins" {
strict.nolib.stub:
  %.85 = getelementptr inbounds [100 x i8], ptr @.strict.nolib.msg.23, i32 0, i32 0
  %strict.nolib.exc.6552.86 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.85)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.6552.86)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.6552.86)
  ret i64 0
}
define external i64 @py_virtual_thread_channel_close_receiver(ptr %receiver) "no-builtins" {
strict.nolib.stub:
  %.144 = getelementptr inbounds [102 x i8], ptr @.strict.nolib.msg.24, i32 0, i32 0
  %strict.nolib.exc.6726.145 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.144)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.6726.145)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.6726.145)
  ret i64 0
}
define external i64 @py_virtual_thread_channel_select2_begin(ptr %vthread, ptr %left_receiver, ptr %right_receiver) "no-builtins" {
strict.nolib.stub:
  %.376 = getelementptr inbounds [101 x i8], ptr @.strict.nolib.msg.25, i32 0, i32 0
  %strict.nolib.exc.7195.377 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.376)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.7195.377)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.7195.377)
  ret i64 0
}
define external ptr @py_virtual_thread_channel_select2_result(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.7198.5 = alloca ptr
  %call.ret.root.7212.17 = alloca ptr
  %checked_ret.7197.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.7198.5
  %call.ret.root.ptr.7199.6 = bitcast ptr %call.ret.root.7198.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7199.6, ptr %checked_ret.7197.4)
  %gc.frame.lifo.map.ptr.7200.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7201.8 = bitcast ptr %call.ret.root.7198.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7200.7, ptr %gc.frame.lifo.slots.ptr.7201.8)
  %call.ret.current.7202.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7199.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7199.6, ptr null)
  %gc.frame.lifo.leave.ptr.7203.10 = bitcast ptr %call.ret.root.7198.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7203.10)
  %unsafe.ptr_is_null.i.7205.13 = ptrtoint ptr %call.ret.current.7202.9 to i64
  %unsafe.ptr.null.7206.14 = icmp eq i64 %unsafe.ptr_is_null.i.7205.13, 0
  br i1 %unsafe.ptr.null.7206.14, label %if.then.7207, label %if.else.7208

if.then.7207:
  ret ptr null

if.else.7208:
  br label %if.end.7209

if.end.7209:
  %channel_result_tuple_ret.7211.16 = call ptr (ptr, i64) @user_py_virtual_thread_runtime__channel_result_tuple(ptr %call.ret.current.7202.9, i64 1)
  store ptr null, ptr %call.ret.root.7212.17
  %call.ret.root.ptr.7213.18 = bitcast ptr %call.ret.root.7212.17 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7213.18, ptr %channel_result_tuple_ret.7211.16)
  %gc.frame.lifo.map.ptr.7214.19 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7215.20 = bitcast ptr %call.ret.root.7212.17 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7214.19, ptr %gc.frame.lifo.slots.ptr.7215.20)
  %call.ret.current.7216.21 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7213.18)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7213.18, ptr null)
  %gc.frame.lifo.leave.ptr.7217.22 = bitcast ptr %call.ret.root.7212.17 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7217.22)
  %ret.tmp.root.7218.23 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7218.23
  %ret.tmp.root.ptr.7219.24 = bitcast ptr %ret.tmp.root.7218.23 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7219.24, ptr %call.ret.current.7216.21)
  %gc.frame.lifo.map.ptr.7220.25 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7221.26 = bitcast ptr %ret.tmp.root.7218.23 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7220.25, ptr %gc.frame.lifo.slots.ptr.7221.26)
  %ret.tmp.current.7222.27 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7219.24)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7219.24, ptr null)
  %gc.frame.lifo.leave.ptr.7223.28 = bitcast ptr %ret.tmp.root.7218.23 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7223.28)
  ret ptr %ret.tmp.current.7222.27
}
define external ptr @py_virtual_thread_result(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.14602.5 = alloca ptr
  %result.addr.21 = alloca ptr
  store ptr null, ptr %result.addr.21
  %checked_ret.14601.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14602.5
  %call.ret.root.ptr.14603.6 = bitcast ptr %call.ret.root.14602.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14603.6, ptr %checked_ret.14601.4)
  %gc.frame.lifo.map.ptr.14604.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14605.8 = bitcast ptr %call.ret.root.14602.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14604.7, ptr %gc.frame.lifo.slots.ptr.14605.8)
  %call.ret.current.14606.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14603.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14603.6, ptr null)
  %gc.frame.lifo.leave.ptr.14607.10 = bitcast ptr %call.ret.root.14602.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14607.10)
  %unsafe.ptr_is_null.i.14609.13 = ptrtoint ptr %call.ret.current.14606.9 to i64
  %unsafe.ptr.null.14610.14 = icmp eq i64 %unsafe.ptr_is_null.i.14609.13, 0
  %gc.frame.map.ptr.14623.22 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.14624.23 = bitcast ptr %result.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14623.22, ptr %gc.frame.slots.ptr.14624.23)
  br i1 %unsafe.ptr.null.14610.14, label %if.then.14611, label %if.else.14612

if.then.14611:
  %gc.frame.leave.ptr.14625.24 = bitcast ptr %result.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14625.24)
  ret ptr null

if.else.14612:
  br label %if.end.14613

if.end.14613:
  %scheduler_lock_ret.14614.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14615.16 = icmp ne i64 %scheduler_lock_ret.14614.15, 0
  br i1 %icmp.14615.16, label %if.then.14616, label %if.else.14617

if.then.14616:
  %gc.frame.leave.ptr.14626.25 = bitcast ptr %result.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14626.25)
  ret ptr null

if.else.14617:
  br label %if.end.14618

if.end.14618:
  %unsafe.ptr.add.14621.19 = getelementptr i8, ptr %call.ret.current.14606.9, i64 24
  %extern.pcc_gc_load_ptr.ret.14622.20 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %call.ret.current.14606.9, ptr %unsafe.ptr.add.14621.19)
  store ptr %extern.pcc_gc_load_ptr.ret.14622.20, ptr %result.addr.21
  %result.gc.slot.14627.26 = bitcast ptr %result.addr.21 to ptr
  %result.14628.27 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.14627.26)
  %unsafe.ptr_is_null.i.14629.28 = ptrtoint ptr %result.14628.27 to i64
  %unsafe.ptr.null.14630.29 = icmp eq i64 %unsafe.ptr_is_null.i.14629.28, 0
  br i1 %unsafe.ptr.null.14630.29, label %if.then.14631, label %if.else.14632

if.then.14631:
  %unsafe.global.load.ptr.14634.30 = load ptr, ptr @py_None
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.global.load.ptr.14634.30)
  store ptr %unsafe.global.load.ptr.14634.30, ptr %result.addr.21
  br label %if.end.14633

if.else.14632:
  br label %if.end.14633

if.end.14633:
  %result.14635.31 = load ptr, ptr %result.addr.21
  call void (ptr) @py_incref(ptr %result.14635.31)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %result.14636.32 = load ptr, ptr %result.addr.21
  %ret.retain.14637.33 = call ptr (ptr) @pcc_gc_retain(ptr %result.14636.32)
  %ret.tmp.root.14638.34 = alloca ptr
  store ptr null, ptr %ret.tmp.root.14638.34
  %ret.tmp.root.ptr.14639.35 = bitcast ptr %ret.tmp.root.14638.34 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.14639.35, ptr %ret.retain.14637.33)
  %gc.frame.lifo.map.ptr.14640.36 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14641.37 = bitcast ptr %ret.tmp.root.14638.34 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14640.36, ptr %gc.frame.lifo.slots.ptr.14641.37)
  %gc.frame.leave.ptr.14642.38 = bitcast ptr %result.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14642.38)
  %ret.tmp.current.14643.39 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.14639.35)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.14639.35, ptr null)
  %gc.frame.lifo.leave.ptr.14644.40 = bitcast ptr %ret.tmp.root.14638.34 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14644.40)
  ret ptr %ret.tmp.current.14643.39
}
define external ptr @py_virtual_thread_exception(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.14647.5 = alloca ptr
  %exception.addr.21 = alloca ptr
  store ptr null, ptr %exception.addr.21
  %checked_ret.14646.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14647.5
  %call.ret.root.ptr.14648.6 = bitcast ptr %call.ret.root.14647.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14648.6, ptr %checked_ret.14646.4)
  %gc.frame.lifo.map.ptr.14649.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14650.8 = bitcast ptr %call.ret.root.14647.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14649.7, ptr %gc.frame.lifo.slots.ptr.14650.8)
  %call.ret.current.14651.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14648.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14648.6, ptr null)
  %gc.frame.lifo.leave.ptr.14652.10 = bitcast ptr %call.ret.root.14647.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14652.10)
  %unsafe.ptr_is_null.i.14654.13 = ptrtoint ptr %call.ret.current.14651.9 to i64
  %unsafe.ptr.null.14655.14 = icmp eq i64 %unsafe.ptr_is_null.i.14654.13, 0
  %gc.frame.map.ptr.14668.22 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.14669.23 = bitcast ptr %exception.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14668.22, ptr %gc.frame.slots.ptr.14669.23)
  br i1 %unsafe.ptr.null.14655.14, label %if.then.14656, label %if.else.14657

if.then.14656:
  %gc.frame.leave.ptr.14670.24 = bitcast ptr %exception.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14670.24)
  ret ptr null

if.else.14657:
  br label %if.end.14658

if.end.14658:
  %scheduler_lock_ret.14659.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14660.16 = icmp ne i64 %scheduler_lock_ret.14659.15, 0
  br i1 %icmp.14660.16, label %if.then.14661, label %if.else.14662

if.then.14661:
  %gc.frame.leave.ptr.14671.25 = bitcast ptr %exception.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14671.25)
  ret ptr null

if.else.14662:
  br label %if.end.14663

if.end.14663:
  %unsafe.ptr.add.14666.19 = getelementptr i8, ptr %call.ret.current.14651.9, i64 72
  %extern.pcc_gc_load_ptr.ret.14667.20 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %call.ret.current.14651.9, ptr %unsafe.ptr.add.14666.19)
  store ptr %extern.pcc_gc_load_ptr.ret.14667.20, ptr %exception.addr.21
  %exception.gc.slot.14672.26 = bitcast ptr %exception.addr.21 to ptr
  %exception.14673.27 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %exception.gc.slot.14672.26)
  %unsafe.ptr_is_null.i.14674.28 = ptrtoint ptr %exception.14673.27 to i64
  %unsafe.ptr.null.14675.29 = icmp eq i64 %unsafe.ptr_is_null.i.14674.28, 0
  br i1 %unsafe.ptr.null.14675.29, label %if.then.14676, label %if.else.14677

if.then.14676:
  %unsafe.global.load.ptr.14679.30 = load ptr, ptr @py_None
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.global.load.ptr.14679.30)
  store ptr %unsafe.global.load.ptr.14679.30, ptr %exception.addr.21
  br label %if.end.14678

if.else.14677:
  br label %if.end.14678

if.end.14678:
  %exception.14680.31 = load ptr, ptr %exception.addr.21
  call void (ptr) @py_incref(ptr %exception.14680.31)
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  %exception.14681.32 = load ptr, ptr %exception.addr.21
  %ret.retain.14682.33 = call ptr (ptr) @pcc_gc_retain(ptr %exception.14681.32)
  %ret.tmp.root.14683.34 = alloca ptr
  store ptr null, ptr %ret.tmp.root.14683.34
  %ret.tmp.root.ptr.14684.35 = bitcast ptr %ret.tmp.root.14683.34 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.14684.35, ptr %ret.retain.14682.33)
  %gc.frame.lifo.map.ptr.14685.36 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14686.37 = bitcast ptr %ret.tmp.root.14683.34 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14685.36, ptr %gc.frame.lifo.slots.ptr.14686.37)
  %gc.frame.leave.ptr.14687.38 = bitcast ptr %exception.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14687.38)
  %ret.tmp.current.14688.39 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.14684.35)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.14684.35, ptr null)
  %gc.frame.lifo.leave.ptr.14689.40 = bitcast ptr %ret.tmp.root.14683.34 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14689.40)
  ret ptr %ret.tmp.current.14688.39
}
define external i64 @py_virtual_thread_outcome(ptr %vthread) "no-builtins" {
entry:
  %call.ret.root.14692.5 = alloca ptr
  %checked_ret.14691.4 = call ptr (ptr) @user_py_virtual_thread_runtime__checked(ptr %vthread)
  store ptr null, ptr %call.ret.root.14692.5
  %call.ret.root.ptr.14693.6 = bitcast ptr %call.ret.root.14692.5 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14693.6, ptr %checked_ret.14691.4)
  %gc.frame.lifo.map.ptr.14694.7 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.14695.8 = bitcast ptr %call.ret.root.14692.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.14694.7, ptr %gc.frame.lifo.slots.ptr.14695.8)
  %call.ret.current.14696.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.14693.6)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.14693.6, ptr null)
  %gc.frame.lifo.leave.ptr.14697.10 = bitcast ptr %call.ret.root.14692.5 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.14697.10)
  %unsafe.ptr_is_null.i.14699.13 = ptrtoint ptr %call.ret.current.14696.9 to i64
  %unsafe.ptr.null.14700.14 = icmp eq i64 %unsafe.ptr_is_null.i.14699.13, 0
  br i1 %unsafe.ptr.null.14700.14, label %if.then.14701, label %if.else.14702

if.then.14701:
  ret i64 -1

if.else.14702:
  br label %if.end.14703

if.end.14703:
  %scheduler_lock_ret.14704.15 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14705.16 = icmp ne i64 %scheduler_lock_ret.14704.15, 0
  br i1 %icmp.14705.16, label %if.then.14706, label %if.else.14707

if.then.14706:
  ret i64 -1

if.else.14707:
  br label %if.end.14708

if.end.14708:
  %unsafe.addr.14710.18 = getelementptr i8, ptr %call.ret.current.14696.9, i64 80
  %unsafe.addr.cast.14711.19 = bitcast ptr %unsafe.addr.14710.18 to ptr
  %unsafe.load.i64.14712.20 = load i64, ptr %unsafe.addr.cast.14711.19, align 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.14712.20
}
define external i64 @user_py_virtual_thread_runtime__counter(ptr %slot) "no-builtins" {
entry:
  %slot.addr.2 = alloca ptr
  store ptr %slot, ptr %slot.addr.2
  %gc.frame.map.ptr.1.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2.4 = bitcast ptr %slot.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1.3, ptr %gc.frame.slots.ptr.2.4)
  %slot.gc.slot.3.5 = bitcast ptr %slot.addr.2 to ptr
  %slot.4.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %slot.gc.slot.3.5)
  %unsafe.addr.5.7 = getelementptr i8, ptr %slot.4.6, i64 0
  %unsafe.addr.cast.6.8 = bitcast ptr %unsafe.addr.5.7 to ptr
  %unsafe.atomic.load.7.9 = load atomic i64, ptr %unsafe.addr.cast.6.8 acquire, align 8
  %gc.frame.leave.ptr.8.10 = bitcast ptr %slot.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8.10)
  ret i64 %unsafe.atomic.load.7.9
}
define external i64 @user_py_virtual_thread_runtime__counter_add(ptr %slot, i64 %value) "no-builtins" {
entry:
  %slot.addr.3 = alloca ptr
  store ptr %slot, ptr %slot.addr.3
  %gc.frame.map.ptr.9.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.10.5 = bitcast ptr %slot.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.9.4, ptr %gc.frame.slots.ptr.10.5)
  %slot.gc.slot.11.7 = bitcast ptr %slot.addr.3 to ptr
  %slot.12.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %slot.gc.slot.11.7)
  %unsafe.addr.13.9 = getelementptr i8, ptr %slot.12.8, i64 0
  %unsafe.addr.cast.14.10 = bitcast ptr %unsafe.addr.13.9 to ptr
  %unsafe.atomic.rmw.16.12 = atomicrmw add ptr %unsafe.addr.cast.14.10, i64 %value acq_rel
  %add.19.16 = add i64 %unsafe.atomic.rmw.16.12, %value
  %gc.frame.leave.ptr.20.17 = bitcast ptr %slot.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.20.17)
  ret i64 %add.19.16
}
define external void @user_py_virtual_thread_runtime__counter_set(ptr %slot, i64 %value) "no-builtins" {
entry:
  %slot.addr.3 = alloca ptr
  store ptr %slot, ptr %slot.addr.3
  %gc.frame.map.ptr.21.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.22.5 = bitcast ptr %slot.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.21.4, ptr %gc.frame.slots.ptr.22.5)
  %slot.gc.slot.23.7 = bitcast ptr %slot.addr.3 to ptr
  %slot.24.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %slot.gc.slot.23.7)
  %unsafe.addr.25.9 = getelementptr i8, ptr %slot.24.8, i64 0
  %unsafe.addr.cast.26.10 = bitcast ptr %unsafe.addr.25.9 to ptr
  store atomic i64 %value, ptr %unsafe.addr.cast.26.10 release, align 8
  %none.28.12 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.29.13 = bitcast ptr %slot.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.29.13)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__install_scheduler_primitive(ptr %slot, ptr %candidate, i64 %is_mutex) "no-builtins" {
entry:
  %slot.addr.4 = alloca ptr
  %candidate.addr.7 = alloca ptr
  store ptr %slot, ptr %slot.addr.4
  %gc.frame.map.ptr.30.5 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.31.6 = bitcast ptr %slot.addr.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.30.5, ptr %gc.frame.slots.ptr.31.6)
  store ptr %candidate, ptr %candidate.addr.7
  %gc.frame.map.ptr.32.8 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.33.9 = bitcast ptr %candidate.addr.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.32.8, ptr %gc.frame.slots.ptr.33.9)
  %candidate.gc.slot.34.11 = bitcast ptr %candidate.addr.7 to ptr
  %candidate.35.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %candidate.gc.slot.34.11)
  %unsafe.ptr_is_null.i.36.13 = ptrtoint ptr %candidate.35.12 to i64
  %unsafe.ptr.null.37.14 = icmp eq i64 %unsafe.ptr_is_null.i.36.13, 0
  br i1 %unsafe.ptr.null.37.14, label %if.then.38, label %if.else.39

if.then.38:
  %gc.frame.leave.ptr.41.15 = bitcast ptr %candidate.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.41.15)
  %gc.frame.leave.ptr.42.16 = bitcast ptr %slot.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.42.16)
  ret ptr null

if.else.39:
  br label %if.end.40

if.end.40:
  %candidate.gc.slot.43.17 = bitcast ptr %candidate.addr.7 to ptr
  %candidate.44.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %candidate.gc.slot.43.17)
  %unsafe.ptr.to.int.45.19 = ptrtoint ptr %candidate.44.18 to i64
  %slot.gc.slot.46.21 = bitcast ptr %slot.addr.4 to ptr
  %slot.47.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %slot.gc.slot.46.21)
  %unsafe.addr.48.23 = getelementptr i8, ptr %slot.47.22, i64 0
  %unsafe.addr.cast.49.24 = bitcast ptr %unsafe.addr.48.23 to ptr
  %unsafe.atomic.cas.51.26 = cmpxchg ptr %unsafe.addr.cast.49.24, i64 0, i64 %unsafe.ptr.to.int.45.19 acq_rel acquire
  %unsafe.atomic.cas.old.52.27 = extractvalue { i64, i1 } %unsafe.atomic.cas.51.26, 0
  %icmp.54.30 = icmp ne i64 %unsafe.atomic.cas.old.52.27, 0
  br i1 %icmp.54.30, label %if.then.55, label %if.else.56

if.then.55:
  %icmp.59.32 = icmp ne i64 %is_mutex, 0
  br i1 %icmp.59.32, label %if.then.60, label %if.else.61

if.else.56:
  br label %if.end.57

if.end.57:
  %candidate.gc.slot.71.41 = bitcast ptr %candidate.addr.7 to ptr
  %candidate.72.42 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %candidate.gc.slot.71.41)
  %ret.retain.73.43 = call ptr (ptr) @pcc_gc_retain(ptr %candidate.72.42)
  %ret.tmp.root.74.44 = alloca ptr
  store ptr null, ptr %ret.tmp.root.74.44
  %ret.tmp.root.ptr.75.45 = bitcast ptr %ret.tmp.root.74.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.75.45, ptr %ret.retain.73.43)
  %gc.frame.lifo.map.ptr.76.46 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.77.47 = bitcast ptr %ret.tmp.root.74.44 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.76.46, ptr %gc.frame.lifo.slots.ptr.77.47)
  %gc.frame.leave.ptr.78.48 = bitcast ptr %candidate.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.78.48)
  %gc.frame.leave.ptr.79.49 = bitcast ptr %slot.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.79.49)
  %ret.tmp.current.80.50 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.75.45)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.75.45, ptr null)
  %gc.frame.lifo.leave.ptr.81.51 = bitcast ptr %ret.tmp.root.74.44 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.81.51)
  ret ptr %ret.tmp.current.80.50

if.then.60:
  %candidate.gc.slot.63.33 = bitcast ptr %candidate.addr.7 to ptr
  %candidate.64.34 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %candidate.gc.slot.63.33)
  call void (ptr) @pcc_mutex_free(ptr %candidate.64.34)
  br label %if.end.62

if.else.61:
  %candidate.gc.slot.65.35 = bitcast ptr %candidate.addr.7 to ptr
  %candidate.66.36 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %candidate.gc.slot.65.35)
  call void (ptr) @pcc_cond_free(ptr %candidate.66.36)
  br label %if.end.62

if.end.62:
  %unsafe.int.to.ptr.68.38 = inttoptr i64 %unsafe.atomic.cas.old.52.27 to ptr
  %gc.frame.leave.ptr.69.39 = bitcast ptr %candidate.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.69.39)
  %gc.frame.leave.ptr.70.40 = bitcast ptr %slot.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.70.40)
  ret ptr %unsafe.int.to.ptr.68.38
}
define external i64 @user_py_virtual_thread_runtime__scheduler_init() "no-builtins" {
entry:
  %call.ret.root.92.9 = alloca ptr
  %mutex.addr.15 = alloca ptr
  store ptr null, ptr %mutex.addr.15
  %call.ret.root.127.37 = alloca ptr
  %cond.addr.43 = alloca ptr
  store ptr null, ptr %cond.addr.43
  %unsafe.global.addr.82.1 = bitcast ptr @pcc_vthread_scheduler_mutex_bits_py to ptr
  %counter_ret.83.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.82.1)
  %icmp.85.5 = icmp eq i64 %counter_ret.83.2, 0
  %gc.frame.map.ptr.103.20 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.104.21 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.103.20, ptr %gc.frame.slots.ptr.104.21)
  %gc.frame.map.ptr.138.48 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.139.49 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.138.48, ptr %gc.frame.slots.ptr.139.49)
  br i1 %icmp.85.5, label %if.then.86, label %if.else.87

if.then.86:
  %unsafe.global.addr.89.6 = bitcast ptr @pcc_vthread_scheduler_mutex_bits_py to ptr
  %extern.pcc_mutex_new.ret.90.7 = call ptr () @pcc_mutex_new()
  %install_scheduler_primitive_ret.91.8 = call ptr (ptr, ptr, i64) @user_py_virtual_thread_runtime__install_scheduler_primitive(ptr %unsafe.global.addr.89.6, ptr %extern.pcc_mutex_new.ret.90.7, i64 1)
  store ptr null, ptr %call.ret.root.92.9
  %call.ret.root.ptr.93.10 = bitcast ptr %call.ret.root.92.9 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.93.10, ptr %install_scheduler_primitive_ret.91.8)
  %gc.frame.lifo.map.ptr.94.11 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.95.12 = bitcast ptr %call.ret.root.92.9 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.94.11, ptr %gc.frame.lifo.slots.ptr.95.12)
  %call.ret.current.96.13 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.93.10)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.93.10, ptr null)
  %gc.frame.lifo.leave.ptr.97.14 = bitcast ptr %call.ret.root.92.9 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.97.14)
  br i1 0, label %mutex.owned.release.99, label %mutex.owned.cont.100

if.else.87:
  br label %if.end.88

if.end.88:
  %mutex.owned.16.phi = phi i1 [ 0, %if.else.87 ], [ 1, %if.end.111 ]
  %unsafe.global.addr.117.29 = bitcast ptr @pcc_vthread_scheduler_cond_bits_py to ptr
  %counter_ret.118.30 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.117.29)
  %icmp.120.33 = icmp eq i64 %counter_ret.118.30, 0
  br i1 %icmp.120.33, label %if.then.121, label %if.else.122

mutex.owned.release.99:
  %mutex.release.gc.slot.101.18 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %mutex.release.gc.slot.101.18, ptr null)
  br label %mutex.owned.cont.100

mutex.owned.cont.100:
  %mutex.owned.resolve.102.19 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.96.13)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %mutex.owned.resolve.102.19)
  store ptr %mutex.owned.resolve.102.19, ptr %mutex.addr.15
  %mutex.gc.slot.105.22 = bitcast ptr %mutex.addr.15 to ptr
  %mutex.106.23 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %mutex.gc.slot.105.22)
  %unsafe.ptr_is_null.i.107.24 = ptrtoint ptr %mutex.106.23 to i64
  %unsafe.ptr.null.108.25 = icmp eq i64 %unsafe.ptr_is_null.i.107.24, 0
  br i1 %unsafe.ptr.null.108.25, label %if.then.109, label %if.else.110

if.then.109:
  br i1 1, label %mutex.owned.release.113, label %mutex.owned.cont.114

if.else.110:
  br label %if.end.111

if.end.111:
  br label %if.end.88

mutex.owned.release.113:
  %mutex.release.gc.slot.115.27 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %mutex.release.gc.slot.115.27, ptr null)
  br label %mutex.owned.cont.114

mutex.owned.cont.114:
  %gc.frame.leave.ptr.116.28 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.116.28)
  %gc.frame.leave.ptr.140.50 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.140.50)
  ret i64 -1

if.then.121:
  %unsafe.global.addr.124.34 = bitcast ptr @pcc_vthread_scheduler_cond_bits_py to ptr
  %extern.pcc_cond_new.ret.125.35 = call ptr () @pcc_cond_new()
  %install_scheduler_primitive_ret.126.36 = call ptr (ptr, ptr, i64) @user_py_virtual_thread_runtime__install_scheduler_primitive(ptr %unsafe.global.addr.124.34, ptr %extern.pcc_cond_new.ret.125.35, i64 0)
  store ptr null, ptr %call.ret.root.127.37
  %call.ret.root.ptr.128.38 = bitcast ptr %call.ret.root.127.37 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.128.38, ptr %install_scheduler_primitive_ret.126.36)
  %gc.frame.lifo.map.ptr.129.39 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.130.40 = bitcast ptr %call.ret.root.127.37 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.129.39, ptr %gc.frame.lifo.slots.ptr.130.40)
  %call.ret.current.131.41 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.128.38)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.128.38, ptr null)
  %gc.frame.lifo.leave.ptr.132.42 = bitcast ptr %call.ret.root.127.37 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.132.42)
  br i1 0, label %cond.owned.release.134, label %cond.owned.cont.135

if.else.122:
  br label %if.end.123

if.end.123:
  %cond.owned.44.phi = phi i1 [ 0, %if.else.122 ], [ 1, %if.end.147 ]
  br i1 %cond.owned.44.phi, label %cond.owned.release.159, label %cond.owned.cont.160

cond.owned.release.134:
  %cond.release.gc.slot.136.46 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %cond.release.gc.slot.136.46, ptr null)
  br label %cond.owned.cont.135

cond.owned.cont.135:
  %cond.owned.resolve.137.47 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.131.41)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %cond.owned.resolve.137.47)
  store ptr %cond.owned.resolve.137.47, ptr %cond.addr.43
  %cond.gc.slot.141.51 = bitcast ptr %cond.addr.43 to ptr
  %cond.142.52 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %cond.gc.slot.141.51)
  %unsafe.ptr_is_null.i.143.53 = ptrtoint ptr %cond.142.52 to i64
  %unsafe.ptr.null.144.54 = icmp eq i64 %unsafe.ptr_is_null.i.143.53, 0
  br i1 %unsafe.ptr.null.144.54, label %if.then.145, label %if.else.146

if.then.145:
  br i1 1, label %cond.owned.release.149, label %cond.owned.cont.150

if.else.146:
  br label %if.end.147

if.end.147:
  br label %if.end.123

cond.owned.release.149:
  %cond.release.gc.slot.151.56 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %cond.release.gc.slot.151.56, ptr null)
  br label %cond.owned.cont.150

cond.owned.cont.150:
  br i1 %mutex.owned.16.phi, label %mutex.owned.release.153, label %mutex.owned.cont.154

mutex.owned.release.153:
  %mutex.release.gc.slot.155.58 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %mutex.release.gc.slot.155.58, ptr null)
  br label %mutex.owned.cont.154

mutex.owned.cont.154:
  %gc.frame.leave.ptr.156.59 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.156.59)
  %gc.frame.leave.ptr.157.60 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.157.60)
  ret i64 -1

cond.owned.release.159:
  %cond.release.gc.slot.161.62 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %cond.release.gc.slot.161.62, ptr null)
  br label %cond.owned.cont.160

cond.owned.cont.160:
  br i1 %mutex.owned.16.phi, label %mutex.owned.release.163, label %mutex.owned.cont.164

mutex.owned.release.163:
  %mutex.release.gc.slot.165.64 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %mutex.release.gc.slot.165.64, ptr null)
  br label %mutex.owned.cont.164

mutex.owned.cont.164:
  %gc.frame.leave.ptr.166.65 = bitcast ptr %cond.addr.43 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.166.65)
  %gc.frame.leave.ptr.167.66 = bitcast ptr %mutex.addr.15 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.167.66)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__scheduler_mutex() "no-builtins" {
entry:
  %unsafe.global.addr.168.1 = bitcast ptr @pcc_vthread_scheduler_mutex_bits_py to ptr
  %counter_ret.169.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.168.1)
  %unsafe.int.to.ptr.170.3 = inttoptr i64 %counter_ret.169.2 to ptr
  ret ptr %unsafe.int.to.ptr.170.3
}
define external ptr @user_py_virtual_thread_runtime__scheduler_cond() "no-builtins" {
entry:
  %unsafe.global.addr.171.1 = bitcast ptr @pcc_vthread_scheduler_cond_bits_py to ptr
  %counter_ret.172.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.171.1)
  %unsafe.int.to.ptr.173.3 = inttoptr i64 %counter_ret.172.2 to ptr
  ret ptr %unsafe.int.to.ptr.173.3
}
define external i64 @user_py_virtual_thread_runtime__scheduler_lock() "no-builtins" {
entry:
  %call.ret.root.180.4 = alloca ptr
  %scheduler_init_ret.174.1 = call i64 () @user_py_virtual_thread_runtime__scheduler_init()
  %icmp.175.2 = icmp ne i64 %scheduler_init_ret.174.1, 0
  br i1 %icmp.175.2, label %if.then.176, label %if.else.177

if.then.176:
  ret i64 -1

if.else.177:
  br label %if.end.178

if.end.178:
  %scheduler_mutex_ret.179.3 = call ptr () @user_py_virtual_thread_runtime__scheduler_mutex()
  store ptr null, ptr %call.ret.root.180.4
  %call.ret.root.ptr.181.5 = bitcast ptr %call.ret.root.180.4 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.181.5, ptr %scheduler_mutex_ret.179.3)
  %gc.frame.lifo.map.ptr.182.6 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.183.7 = bitcast ptr %call.ret.root.180.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.182.6, ptr %gc.frame.lifo.slots.ptr.183.7)
  %call.ret.current.184.8 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.181.5)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.181.5, ptr null)
  %gc.frame.lifo.leave.ptr.185.9 = bitcast ptr %call.ret.root.180.4 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.185.9)
  %extern.pcc_mutex_lock.ret.186.10 = call i64 (ptr) @pcc_mutex_lock(ptr %call.ret.current.184.8)
  %icmp.188.13 = icmp eq i64 %extern.pcc_mutex_lock.ret.186.10, 0
  br i1 %icmp.188.13, label %if.then.189, label %if.else.190

if.then.189:
  call void () @pcc_thread_no_park_enter()
  br label %if.end.191

if.else.190:
  br label %if.end.191

if.end.191:
  ret i64 %extern.pcc_mutex_lock.ret.186.10
}
define external void @user_py_virtual_thread_runtime__scheduler_unlock() "no-builtins" {
entry:
  %call.ret.root.194.2 = alloca ptr
  %scheduler_mutex_ret.193.1 = call ptr () @user_py_virtual_thread_runtime__scheduler_mutex()
  store ptr null, ptr %call.ret.root.194.2
  %call.ret.root.ptr.195.3 = bitcast ptr %call.ret.root.194.2 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.195.3, ptr %scheduler_mutex_ret.193.1)
  %gc.frame.lifo.map.ptr.196.4 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.197.5 = bitcast ptr %call.ret.root.194.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.196.4, ptr %gc.frame.lifo.slots.ptr.197.5)
  %call.ret.current.198.6 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.195.3)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.195.3, ptr null)
  %gc.frame.lifo.leave.ptr.199.7 = bitcast ptr %call.ret.root.194.2 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.199.7)
  %extern.pcc_mutex_unlock.ret.200.8 = call i64 (ptr) @pcc_mutex_unlock(ptr %call.ret.current.198.6)
  call void () @pcc_thread_no_park_exit()
  ret void
}
define external void @user_py_virtual_thread_runtime__scheduler_signal() "no-builtins" {
entry:
  %call.ret.root.202.2 = alloca ptr
  %cond.addr.8 = alloca ptr
  store ptr null, ptr %cond.addr.8
  %scheduler_cond_ret.201.1 = call ptr () @user_py_virtual_thread_runtime__scheduler_cond()
  store ptr null, ptr %call.ret.root.202.2
  %call.ret.root.ptr.203.3 = bitcast ptr %call.ret.root.202.2 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.203.3, ptr %scheduler_cond_ret.201.1)
  %gc.frame.lifo.map.ptr.204.4 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.205.5 = bitcast ptr %call.ret.root.202.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.204.4, ptr %gc.frame.lifo.slots.ptr.205.5)
  %call.ret.current.206.6 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.203.3)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.203.3, ptr null)
  %gc.frame.lifo.leave.ptr.207.7 = bitcast ptr %call.ret.root.202.2 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.207.7)
  %gc.frame.map.ptr.213.13 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.214.14 = bitcast ptr %cond.addr.8 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.213.13, ptr %gc.frame.slots.ptr.214.14)
  br i1 0, label %cond.owned.release.209, label %cond.owned.cont.210

cond.owned.release.209:
  %cond.release.gc.slot.211.11 = bitcast ptr %cond.addr.8 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %cond.release.gc.slot.211.11, ptr null)
  br label %cond.owned.cont.210

cond.owned.cont.210:
  %cond.owned.resolve.212.12 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.206.6)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %cond.owned.resolve.212.12)
  store ptr %cond.owned.resolve.212.12, ptr %cond.addr.8
  %cond.gc.slot.215.15 = bitcast ptr %cond.addr.8 to ptr
  %cond.216.16 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %cond.gc.slot.215.15)
  %unsafe.ptr_is_null.i.217.17 = ptrtoint ptr %cond.216.16 to i64
  %unsafe.ptr.null.218.18 = icmp eq i64 %unsafe.ptr_is_null.i.217.17, 0
  %b2i64.219.19 = zext i1 %unsafe.ptr.null.218.18 to i64
  %icmp.220.20 = icmp eq i64 %b2i64.219.19, 0
  br i1 %icmp.220.20, label %if.then.221, label %if.else.222

if.then.221:
  %cond.gc.slot.224.21 = bitcast ptr %cond.addr.8 to ptr
  %cond.225.22 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %cond.gc.slot.224.21)
  %extern.pcc_cond_signal.ret.226.23 = call i64 (ptr) @pcc_cond_signal(ptr %cond.225.22)
  br label %if.end.223

if.else.222:
  br label %if.end.223

if.end.223:
  br i1 1, label %cond.owned.release.228, label %cond.owned.cont.229

cond.owned.release.228:
  %cond.release.gc.slot.230.25 = bitcast ptr %cond.addr.8 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %cond.release.gc.slot.230.25, ptr null)
  br label %cond.owned.cont.229

cond.owned.cont.229:
  %gc.frame.leave.ptr.231.26 = bitcast ptr %cond.addr.8 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.231.26)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__checked(ptr %vthread) "no-builtins" {
strict.nolib.stub:
  %.69 = getelementptr inbounds [70 x i8], ptr @.strict.nolib.msg.1, i32 0, i32 0
  %strict.nolib.exc.319.70 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.69)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.319.70)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.319.70)
  ret ptr null
}
define external i64 @user_py_virtual_thread_runtime__now_ms() "no-builtins" {
entry:
  %extern.pcc_runtime_monotonic_us.ret.320.1 = call i64 () @pcc_runtime_monotonic_us()
  %fdiv_bz.321.2 = icmp eq i64 1000, 0
  br i1 %fdiv_bz.321.2, label %div.zero.323, label %div.ok.322

div.ok.322:
  %floordiv.327.q.6 = sdiv i64 %extern.pcc_runtime_monotonic_us.ret.320.1, 1000
  %floordiv.327.r.7 = srem i64 %extern.pcc_runtime_monotonic_us.ret.320.1, 1000
  %floordiv.327.r_nz.8 = icmp ne i64 %floordiv.327.r.7, 0
  %floordiv.327.r_neg.9 = icmp slt i64 %floordiv.327.r.7, 0
  %floordiv.327.b_neg.10 = icmp slt i64 1000, 0
  %floordiv.327.sign_diff.11 = xor i1 %floordiv.327.r_neg.9, %floordiv.327.b_neg.10
  %floordiv.327.need_fix.12 = and i1 %floordiv.327.r_nz.8, %floordiv.327.sign_diff.11
  %floordiv.327.q_fix.13 = sub i64 %floordiv.327.q.6, 1
  %floordiv.327.14 = select i1 %floordiv.327.need_fix.12, i64 %floordiv.327.q_fix.13, i64 %floordiv.327.q.6
  ret i64 %floordiv.327.14

div.zero.323:
  %.3 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.324.4 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.3)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.324.4)
  %raise.frame.exc.325.5 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  br label %err.finish

err.finish:
  ret i64 0

raise.cont.326:
  unreachable
}
define external ptr @user_py_virtual_thread_runtime__effect_buffer() "no-builtins" {
entry:
  %unsafe.global.load.ptr.328.1 = load ptr, ptr @pcc_vthread_effect_buffer_py
  %unsafe.ptr_is_null.i.330.4 = ptrtoint ptr %unsafe.global.load.ptr.328.1 to i64
  %unsafe.ptr.null.331.5 = icmp eq i64 %unsafe.ptr_is_null.i.330.4, 0
  br i1 %unsafe.ptr.null.331.5, label %if.then.332, label %if.else.333

if.then.332:
  %unsafe.page.mmap.syscall.335.6 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 131072, i64 3, i64 34, i64 -1, i64 0)
  %unsafe.page.mmap.failed.336.7 = icmp slt i64 %unsafe.page.mmap.syscall.335.6, 0
  %unsafe.page.mmap.ptr.337.8 = inttoptr i64 %unsafe.page.mmap.syscall.335.6 to ptr
  %unsafe.page.mmap.result.338.9 = select i1 %unsafe.page.mmap.failed.336.7, ptr null, ptr %unsafe.page.mmap.ptr.337.8
  %unsafe.ptr_is_null.i.340.11 = ptrtoint ptr %unsafe.page.mmap.result.338.9 to i64
  %unsafe.ptr.null.341.12 = icmp eq i64 %unsafe.ptr_is_null.i.340.11, 0
  %b2i64.342.13 = zext i1 %unsafe.ptr.null.341.12 to i64
  %icmp.343.14 = icmp eq i64 %b2i64.342.13, 0
  br i1 %icmp.343.14, label %if.then.344, label %if.else.345

if.else.333:
  br label %if.end.334

if.end.334:
  %buffer.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.328.1, %if.else.333 ], [ %unsafe.page.mmap.result.338.9, %if.end.346 ]
  %ret.retain.350.18 = call ptr (ptr) @pcc_gc_retain(ptr %buffer.addr.2.phi)
  %ret.tmp.root.351.19 = alloca ptr
  store ptr null, ptr %ret.tmp.root.351.19
  %ret.tmp.root.ptr.352.20 = bitcast ptr %ret.tmp.root.351.19 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.352.20, ptr %ret.retain.350.18)
  %gc.frame.lifo.map.ptr.353.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.354.22 = bitcast ptr %ret.tmp.root.351.19 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.353.21, ptr %gc.frame.lifo.slots.ptr.354.22)
  %ret.tmp.current.355.23 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.352.20)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.352.20, ptr null)
  %gc.frame.lifo.leave.ptr.356.24 = bitcast ptr %ret.tmp.root.351.19 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.356.24)
  ret ptr %ret.tmp.current.355.23

if.then.344:
  store ptr %unsafe.page.mmap.result.338.9, ptr @pcc_vthread_effect_buffer_py
  %none.348.16 = load ptr, ptr @py_None
  br label %if.end.346

if.else.345:
  br label %if.end.346

if.end.346:
  br label %if.end.334
}
define external void @user_py_virtual_thread_runtime__effect(i64 %kind, i64 %detail, i64 %root_delta, i64 %state) "no-builtins" {
entry:
  %call.ret.root.358.10 = alloca ptr
  %buffer.addr.16 = alloca ptr
  store ptr null, ptr %buffer.addr.16
  %effect_buffer_ret.357.9 = call ptr () @user_py_virtual_thread_runtime__effect_buffer()
  store ptr null, ptr %call.ret.root.358.10
  %call.ret.root.ptr.359.11 = bitcast ptr %call.ret.root.358.10 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.359.11, ptr %effect_buffer_ret.357.9)
  %gc.frame.lifo.map.ptr.360.12 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.361.13 = bitcast ptr %call.ret.root.358.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.360.12, ptr %gc.frame.lifo.slots.ptr.361.13)
  %call.ret.current.362.14 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.359.11)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.359.11, ptr null)
  %gc.frame.lifo.leave.ptr.363.15 = bitcast ptr %call.ret.root.358.10 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.363.15)
  %gc.frame.map.ptr.369.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.370.22 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.369.21, ptr %gc.frame.slots.ptr.370.22)
  br i1 0, label %buffer.owned.release.365, label %buffer.owned.cont.366

buffer.owned.release.365:
  %buffer.release.gc.slot.367.19 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %buffer.release.gc.slot.367.19, ptr null)
  br label %buffer.owned.cont.366

buffer.owned.cont.366:
  %buffer.owned.resolve.368.20 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.362.14)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %buffer.owned.resolve.368.20)
  store ptr %buffer.owned.resolve.368.20, ptr %buffer.addr.16
  %unsafe.global.addr.371.23 = bitcast ptr @pcc_vthread_effect_count_py to ptr
  %unsafe.addr.372.24 = getelementptr i8, ptr %unsafe.global.addr.371.23, i64 0
  %unsafe.addr.cast.373.25 = bitcast ptr %unsafe.addr.372.24 to ptr
  %unsafe.atomic.rmw.374.26 = atomicrmw add ptr %unsafe.addr.cast.373.25, i64 1 acq_rel
  %icmp.376.29 = icmp slt i64 %unsafe.atomic.rmw.374.26, 0
  br i1 %icmp.376.29, label %if.then.385, label %cond.right.377

cond.right.377:
  %icmp.379.31 = icmp sge i64 %unsafe.atomic.rmw.374.26, 4096
  br i1 %icmp.379.31, label %if.then.385, label %cond.right.380

cond.right.380:
  %buffer.gc.slot.381.32 = bitcast ptr %buffer.addr.16 to ptr
  %buffer.382.33 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %buffer.gc.slot.381.32)
  %unsafe.ptr_is_null.i.383.34 = ptrtoint ptr %buffer.382.33 to i64
  %unsafe.ptr.null.384.35 = icmp eq i64 %unsafe.ptr_is_null.i.383.34, 0
  br i1 %unsafe.ptr.null.384.35, label %if.then.385, label %if.else.386

if.then.385:
  %unsafe.global.addr.388.36 = bitcast ptr @pcc_vthread_effect_dropped_py to ptr
  %counter_add_ret.389.37 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.388.36, i64 1)
  br i1 1, label %buffer.owned.release.391, label %buffer.owned.cont.392

if.else.386:
  br label %if.end.387

if.end.387:
  %buffer.gc.slot.395.41 = bitcast ptr %buffer.addr.16 to ptr
  %buffer.396.42 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %buffer.gc.slot.395.41)
  %mul.398.44 = mul i64 %unsafe.atomic.rmw.374.26, 32
  %unsafe.ptr.add.399.45 = getelementptr i8, ptr %buffer.396.42, i64 %mul.398.44
  %unsafe.addr.401.48 = getelementptr i8, ptr %unsafe.ptr.add.399.45, i64 0
  %unsafe.addr.cast.402.49 = bitcast ptr %unsafe.addr.401.48 to ptr
  store i64 %kind, ptr %unsafe.addr.cast.402.49, align 1
  %none.404.51 = load ptr, ptr @py_None
  %unsafe.addr.406.53 = getelementptr i8, ptr %unsafe.ptr.add.399.45, i64 8
  %unsafe.addr.cast.407.54 = bitcast ptr %unsafe.addr.406.53 to ptr
  store i64 %detail, ptr %unsafe.addr.cast.407.54, align 1
  %none.409.56 = load ptr, ptr @py_None
  %unsafe.addr.411.58 = getelementptr i8, ptr %unsafe.ptr.add.399.45, i64 16
  %unsafe.addr.cast.412.59 = bitcast ptr %unsafe.addr.411.58 to ptr
  store i64 %root_delta, ptr %unsafe.addr.cast.412.59, align 1
  %none.414.61 = load ptr, ptr @py_None
  %unsafe.addr.416.63 = getelementptr i8, ptr %unsafe.ptr.add.399.45, i64 24
  %unsafe.addr.cast.417.64 = bitcast ptr %unsafe.addr.416.63 to ptr
  store i64 %state, ptr %unsafe.addr.cast.417.64, align 1
  %none.419.66 = load ptr, ptr @py_None
  br i1 1, label %buffer.owned.release.421, label %buffer.owned.cont.422

buffer.owned.release.391:
  %buffer.release.gc.slot.393.39 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %buffer.release.gc.slot.393.39, ptr null)
  br label %buffer.owned.cont.392

buffer.owned.cont.392:
  %gc.frame.leave.ptr.394.40 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.394.40)
  ret void

buffer.owned.release.421:
  %buffer.release.gc.slot.423.68 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %buffer.release.gc.slot.423.68, ptr null)
  br label %buffer.owned.cont.422

buffer.owned.cont.422:
  %gc.frame.leave.ptr.424.69 = bitcast ptr %buffer.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.424.69)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__effect_field(i64 %index, i64 %field) "no-builtins" {
entry:
  %unsafe.global.addr.425.5 = bitcast ptr @pcc_vthread_effect_count_py to ptr
  %counter_ret.426.6 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.425.5)
  %unsafe.global.load.ptr.427.8 = load ptr, ptr @pcc_vthread_effect_buffer_py
  %icmp.429.11 = icmp slt i64 %index, 0
  br i1 %icmp.429.11, label %if.then.441, label %cond.right.430

cond.right.430:
  %icmp.433.14 = icmp sge i64 %index, %counter_ret.426.6
  br i1 %icmp.433.14, label %if.then.441, label %cond.right.434

cond.right.434:
  %icmp.436.16 = icmp sge i64 %index, 4096
  br i1 %icmp.436.16, label %if.then.441, label %cond.right.437

cond.right.437:
  %unsafe.ptr_is_null.i.439.18 = ptrtoint ptr %unsafe.global.load.ptr.427.8 to i64
  %unsafe.ptr.null.440.19 = icmp eq i64 %unsafe.ptr_is_null.i.439.18, 0
  br i1 %unsafe.ptr.null.440.19, label %if.then.441, label %if.else.442

if.then.441:
  ret i64 -1

if.else.442:
  br label %if.end.443

if.end.443:
  %icmp.445.21 = icmp slt i64 %field, 0
  br i1 %icmp.445.21, label %if.then.449, label %cond.right.446

cond.right.446:
  %icmp.448.23 = icmp sgt i64 %field, 3
  br i1 %icmp.448.23, label %if.then.449, label %if.else.450

if.then.449:
  ret i64 -1

if.else.450:
  br label %if.end.451

if.end.451:
  %mul.454.26 = mul i64 %index, 32
  %mul.456.28 = mul i64 %field, 8
  %add.457.29 = add i64 %mul.454.26, %mul.456.28
  %unsafe.addr.458.30 = getelementptr i8, ptr %unsafe.global.load.ptr.427.8, i64 %add.457.29
  %unsafe.addr.cast.459.31 = bitcast ptr %unsafe.addr.458.30 to ptr
  %unsafe.load.i64.460.32 = load i64, ptr %unsafe.addr.cast.459.31, align 1
  ret i64 %unsafe.load.i64.460.32
}
define external void @pcc_vthread_effect_note_waiter_root_enter() "no-builtins" {
entry:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 1, i64 1, i64 1, i64 -1)
  ret void
}
define external void @pcc_vthread_effect_note_waiter_root_leave() "no-builtins" {
entry:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 2, i64 1, i64 -1, i64 -1)
  ret void
}
define external void @pcc_vthread_waiter_pool_note_allocation() "no-builtins" {
entry:
  %unsafe.global.addr.488.1 = bitcast ptr @pcc_vthread_waiter_alloc_py to ptr
  %counter_add_ret.489.2 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.488.1, i64 1)
  ret void
}
define external void @pcc_vthread_waiter_pool_note_reuse() "no-builtins" {
entry:
  %unsafe.global.addr.490.1 = bitcast ptr @pcc_vthread_waiter_reuse_py to ptr
  %counter_add_ret.491.2 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.490.1, i64 1)
  ret void
}
define external void @pcc_vthread_waiter_pool_note_cached(i64 %count) "no-builtins" {
entry:
  %unsafe.global.addr.492.3 = bitcast ptr @pcc_vthread_waiter_cached_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.492.3, i64 %count)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__ready_alloc() "no-builtins" {
entry:
  %unsafe.global.load.ptr.494.1 = load ptr, ptr @pcc_vthread_ready_free_py
  %unsafe.ptr_is_null.i.496.4 = ptrtoint ptr %unsafe.global.load.ptr.494.1 to i64
  %unsafe.ptr.null.497.5 = icmp eq i64 %unsafe.ptr_is_null.i.496.4, 0
  %b2i64.498.6 = zext i1 %unsafe.ptr.null.497.5 to i64
  %icmp.499.7 = icmp eq i64 %b2i64.498.6, 0
  br i1 %icmp.499.7, label %if.then.500, label %if.else.501

if.then.500:
  %unsafe.addr.504.9 = getelementptr i8, ptr %unsafe.global.load.ptr.494.1, i64 8
  %unsafe.addr.cast.505.10 = bitcast ptr %unsafe.addr.504.9 to ptr
  %unsafe.load.ptr.506.11 = load ptr, ptr %unsafe.addr.cast.505.10, align 1
  store ptr %unsafe.load.ptr.506.11, ptr @pcc_vthread_ready_free_py
  %none.507.12 = load ptr, ptr @py_None
  %unsafe.global.addr.508.13 = bitcast ptr @pcc_vthread_ready_cached_py to ptr
  %counter_add_ret.509.14 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.508.13, i64 -1)
  %unsafe.global.addr.510.15 = bitcast ptr @pcc_vthread_ready_reuse_py to ptr
  %counter_add_ret.511.16 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.510.15, i64 1)
  br label %if.end.502

if.else.501:
  %unsafe.malloc.512.17 = call ptr (i64) @malloc(i64 32)
  %unsafe.ptr_is_null.i.514.19 = ptrtoint ptr %unsafe.malloc.512.17 to i64
  %unsafe.ptr.null.515.20 = icmp eq i64 %unsafe.ptr_is_null.i.514.19, 0
  %b2i64.516.21 = zext i1 %unsafe.ptr.null.515.20 to i64
  %icmp.517.22 = icmp eq i64 %b2i64.516.21, 0
  br i1 %icmp.517.22, label %if.then.518, label %if.else.519

if.end.502:
  %node.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.494.1, %if.then.500 ], [ %unsafe.malloc.512.17, %if.end.520 ]
  %unsafe.ptr_is_null.i.524.26 = ptrtoint ptr %node.addr.2.phi to i64
  %unsafe.ptr.null.525.27 = icmp eq i64 %unsafe.ptr_is_null.i.524.26, 0
  %b2i64.526.28 = zext i1 %unsafe.ptr.null.525.27 to i64
  %icmp.527.29 = icmp eq i64 %b2i64.526.28, 0
  br i1 %icmp.527.29, label %if.then.528, label %if.else.529

if.then.518:
  %unsafe.global.addr.521.23 = bitcast ptr @pcc_vthread_ready_alloc_py to ptr
  %counter_add_ret.522.24 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.521.23, i64 1)
  br label %if.end.520

if.else.519:
  br label %if.end.520

if.end.520:
  br label %if.end.502

if.then.528:
  %unsafe.addr.532.31 = getelementptr i8, ptr %node.addr.2.phi, i64 0
  %unsafe.addr.cast.533.32 = bitcast ptr %unsafe.addr.532.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.533.32, align 1
  %none.534.33 = load ptr, ptr @py_None
  %unsafe.addr.536.35 = getelementptr i8, ptr %node.addr.2.phi, i64 8
  %unsafe.addr.cast.537.36 = bitcast ptr %unsafe.addr.536.35 to ptr
  store ptr null, ptr %unsafe.addr.cast.537.36, align 1
  %none.538.37 = load ptr, ptr @py_None
  %unsafe.addr.540.39 = getelementptr i8, ptr %node.addr.2.phi, i64 16
  %unsafe.addr.cast.541.40 = bitcast ptr %unsafe.addr.540.39 to ptr
  store ptr null, ptr %unsafe.addr.cast.541.40, align 1
  %none.542.41 = load ptr, ptr @py_None
  %unsafe.addr.544.43 = getelementptr i8, ptr %node.addr.2.phi, i64 24
  %unsafe.addr.cast.545.44 = bitcast ptr %unsafe.addr.544.43 to ptr
  store i64 1, ptr %unsafe.addr.cast.545.44, align 1
  %none.546.45 = load ptr, ptr @py_None
  br label %if.end.530

if.else.529:
  br label %if.end.530

if.end.530:
  %ret.retain.548.47 = call ptr (ptr) @pcc_gc_retain(ptr %node.addr.2.phi)
  %ret.tmp.root.549.48 = alloca ptr
  store ptr null, ptr %ret.tmp.root.549.48
  %ret.tmp.root.ptr.550.49 = bitcast ptr %ret.tmp.root.549.48 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.550.49, ptr %ret.retain.548.47)
  %gc.frame.lifo.map.ptr.551.50 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.552.51 = bitcast ptr %ret.tmp.root.549.48 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.551.50, ptr %gc.frame.lifo.slots.ptr.552.51)
  %ret.tmp.current.553.52 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.550.49)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.550.49, ptr null)
  %gc.frame.lifo.leave.ptr.554.53 = bitcast ptr %ret.tmp.root.549.48 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.554.53)
  ret ptr %ret.tmp.current.553.52
}
define external ptr @user_py_virtual_thread_runtime__channel_group_alloc() "no-builtins" {
entry:
  %unsafe.global.load.ptr.555.1 = load ptr, ptr @pcc_vthread_channel_free_py
  %unsafe.ptr_is_null.i.557.4 = ptrtoint ptr %unsafe.global.load.ptr.555.1 to i64
  %unsafe.ptr.null.558.5 = icmp eq i64 %unsafe.ptr_is_null.i.557.4, 0
  %b2i64.559.6 = zext i1 %unsafe.ptr.null.558.5 to i64
  %icmp.560.7 = icmp eq i64 %b2i64.559.6, 0
  br i1 %icmp.560.7, label %if.then.561, label %if.else.562

if.then.561:
  %unsafe.addr.565.9 = getelementptr i8, ptr %unsafe.global.load.ptr.555.1, i64 8
  %unsafe.addr.cast.566.10 = bitcast ptr %unsafe.addr.565.9 to ptr
  %unsafe.load.ptr.567.11 = load ptr, ptr %unsafe.addr.cast.566.10, align 1
  store ptr %unsafe.load.ptr.567.11, ptr @pcc_vthread_channel_free_py
  %none.568.12 = load ptr, ptr @py_None
  %unsafe.global.addr.569.13 = bitcast ptr @pcc_vthread_channel_free_count_py to ptr
  %counter_add_ret.570.14 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.569.13, i64 -1)
  call void () @pcc_vthread_waiter_pool_note_reuse()
  br label %if.end.563

if.else.562:
  %unsafe.malloc.571.15 = call ptr (i64) @malloc(i64 80)
  %unsafe.ptr_is_null.i.573.17 = ptrtoint ptr %unsafe.malloc.571.15 to i64
  %unsafe.ptr.null.574.18 = icmp eq i64 %unsafe.ptr_is_null.i.573.17, 0
  %b2i64.575.19 = zext i1 %unsafe.ptr.null.574.18 to i64
  %icmp.576.20 = icmp eq i64 %b2i64.575.19, 0
  br i1 %icmp.576.20, label %if.then.577, label %if.else.578

if.end.563:
  %group.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.555.1, %if.then.561 ], [ %unsafe.malloc.571.15, %if.end.579 ]
  %unsafe.ptr_is_null.i.581.22 = ptrtoint ptr %group.addr.2.phi to i64
  %unsafe.ptr.null.582.23 = icmp eq i64 %unsafe.ptr_is_null.i.581.22, 0
  %b2i64.583.24 = zext i1 %unsafe.ptr.null.582.23 to i64
  %icmp.584.25 = icmp eq i64 %b2i64.583.24, 0
  br i1 %icmp.584.25, label %if.then.585, label %if.else.586

if.then.577:
  call void () @pcc_vthread_waiter_pool_note_allocation()
  br label %if.end.579

if.else.578:
  br label %if.end.579

if.end.579:
  br label %if.end.563

if.then.585:
  %unsafe.addr.589.27 = getelementptr i8, ptr %group.addr.2.phi, i64 0
  %unsafe.addr.cast.590.28 = bitcast ptr %unsafe.addr.589.27 to ptr
  store ptr null, ptr %unsafe.addr.cast.590.28, align 1
  %none.591.29 = load ptr, ptr @py_None
  %unsafe.addr.593.31 = getelementptr i8, ptr %group.addr.2.phi, i64 8
  %unsafe.addr.cast.594.32 = bitcast ptr %unsafe.addr.593.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.594.32, align 1
  %none.595.33 = load ptr, ptr @py_None
  %unsafe.addr.597.35 = getelementptr i8, ptr %group.addr.2.phi, i64 16
  %unsafe.addr.cast.598.36 = bitcast ptr %unsafe.addr.597.35 to ptr
  store ptr null, ptr %unsafe.addr.cast.598.36, align 1
  %none.599.37 = load ptr, ptr @py_None
  %unsafe.addr.601.39 = getelementptr i8, ptr %group.addr.2.phi, i64 24
  %unsafe.addr.cast.602.40 = bitcast ptr %unsafe.addr.601.39 to ptr
  store i64 3, ptr %unsafe.addr.cast.602.40, align 1
  %none.603.41 = load ptr, ptr @py_None
  %unsafe.addr.605.43 = getelementptr i8, ptr %group.addr.2.phi, i64 32
  %unsafe.addr.cast.606.44 = bitcast ptr %unsafe.addr.605.43 to ptr
  store ptr null, ptr %unsafe.addr.cast.606.44, align 1
  %none.607.45 = load ptr, ptr @py_None
  %unsafe.addr.609.47 = getelementptr i8, ptr %group.addr.2.phi, i64 40
  %unsafe.addr.cast.610.48 = bitcast ptr %unsafe.addr.609.47 to ptr
  store ptr null, ptr %unsafe.addr.cast.610.48, align 1
  %none.611.49 = load ptr, ptr @py_None
  %unsafe.addr.613.51 = getelementptr i8, ptr %group.addr.2.phi, i64 48
  %unsafe.addr.cast.614.52 = bitcast ptr %unsafe.addr.613.51 to ptr
  store ptr %group.addr.2.phi, ptr %unsafe.addr.cast.614.52, align 1
  %none.616.54 = load ptr, ptr @py_None
  %unsafe.addr.618.56 = getelementptr i8, ptr %group.addr.2.phi, i64 56
  %unsafe.addr.cast.619.57 = bitcast ptr %unsafe.addr.618.56 to ptr
  store ptr null, ptr %unsafe.addr.cast.619.57, align 1
  %none.620.58 = load ptr, ptr @py_None
  %unsafe.addr.622.60 = getelementptr i8, ptr %group.addr.2.phi, i64 64
  %unsafe.addr.cast.623.61 = bitcast ptr %unsafe.addr.622.60 to ptr
  store ptr null, ptr %unsafe.addr.cast.623.61, align 1
  %none.624.62 = load ptr, ptr @py_None
  %unsafe.addr.626.64 = getelementptr i8, ptr %group.addr.2.phi, i64 72
  %unsafe.addr.cast.627.65 = bitcast ptr %unsafe.addr.626.64 to ptr
  store ptr %group.addr.2.phi, ptr %unsafe.addr.cast.627.65, align 1
  %none.629.67 = load ptr, ptr @py_None
  br label %if.end.587

if.else.586:
  br label %if.end.587

if.end.587:
  %unsafe.global.addr.630.68 = bitcast ptr @pcc_vthread_channel_free_count_py to ptr
  %counter_ret.631.69 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.630.68)
  call void (i64) @pcc_vthread_waiter_pool_note_cached(i64 %counter_ret.631.69)
  %ret.retain.633.71 = call ptr (ptr) @pcc_gc_retain(ptr %group.addr.2.phi)
  %ret.tmp.root.634.72 = alloca ptr
  store ptr null, ptr %ret.tmp.root.634.72
  %ret.tmp.root.ptr.635.73 = bitcast ptr %ret.tmp.root.634.72 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.635.73, ptr %ret.retain.633.71)
  %gc.frame.lifo.map.ptr.636.74 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.637.75 = bitcast ptr %ret.tmp.root.634.72 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.636.74, ptr %gc.frame.lifo.slots.ptr.637.75)
  %ret.tmp.current.638.76 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.635.73)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.635.73, ptr null)
  %gc.frame.lifo.leave.ptr.639.77 = bitcast ptr %ret.tmp.root.634.72 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.639.77)
  ret ptr %ret.tmp.current.638.76
}
define external void @user_py_virtual_thread_runtime__channel_group_recycle(ptr %group) "no-builtins" {
entry:
  %group.addr.2 = alloca ptr
  store ptr %group, ptr %group.addr.2
  %gc.frame.map.ptr.640.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.641.4 = bitcast ptr %group.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.640.3, ptr %gc.frame.slots.ptr.641.4)
  %group.gc.slot.642.5 = bitcast ptr %group.addr.2 to ptr
  %group.643.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.642.5)
  %unsafe.addr.644.7 = getelementptr i8, ptr %group.643.6, i64 16
  %unsafe.addr.cast.645.8 = bitcast ptr %unsafe.addr.644.7 to ptr
  store ptr null, ptr %unsafe.addr.cast.645.8, align 1
  %none.646.9 = load ptr, ptr @py_None
  %group.gc.slot.647.10 = bitcast ptr %group.addr.2 to ptr
  %group.648.11 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.647.10)
  %unsafe.addr.649.12 = getelementptr i8, ptr %group.648.11, i64 24
  %unsafe.addr.cast.650.13 = bitcast ptr %unsafe.addr.649.12 to ptr
  store i64 3, ptr %unsafe.addr.cast.650.13, align 1
  %none.651.14 = load ptr, ptr @py_None
  %group.gc.slot.652.15 = bitcast ptr %group.addr.2 to ptr
  %group.653.16 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.652.15)
  %unsafe.addr.654.17 = getelementptr i8, ptr %group.653.16, i64 32
  %unsafe.addr.cast.655.18 = bitcast ptr %unsafe.addr.654.17 to ptr
  store ptr null, ptr %unsafe.addr.cast.655.18, align 1
  %none.656.19 = load ptr, ptr @py_None
  %group.gc.slot.657.20 = bitcast ptr %group.addr.2 to ptr
  %group.658.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.657.20)
  %unsafe.addr.659.22 = getelementptr i8, ptr %group.658.21, i64 40
  %unsafe.addr.cast.660.23 = bitcast ptr %unsafe.addr.659.22 to ptr
  store ptr null, ptr %unsafe.addr.cast.660.23, align 1
  %none.661.24 = load ptr, ptr @py_None
  %group.gc.slot.662.25 = bitcast ptr %group.addr.2 to ptr
  %group.663.26 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.662.25)
  %unsafe.addr.664.27 = getelementptr i8, ptr %group.663.26, i64 48
  %unsafe.addr.cast.665.28 = bitcast ptr %unsafe.addr.664.27 to ptr
  %group.gc.slot.666.29 = bitcast ptr %group.addr.2 to ptr
  %group.667.30 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.666.29)
  store ptr %group.667.30, ptr %unsafe.addr.cast.665.28, align 1
  %none.668.31 = load ptr, ptr @py_None
  %group.gc.slot.669.32 = bitcast ptr %group.addr.2 to ptr
  %group.670.33 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.669.32)
  %unsafe.addr.671.34 = getelementptr i8, ptr %group.670.33, i64 56
  %unsafe.addr.cast.672.35 = bitcast ptr %unsafe.addr.671.34 to ptr
  store ptr null, ptr %unsafe.addr.cast.672.35, align 1
  %none.673.36 = load ptr, ptr @py_None
  %group.gc.slot.674.37 = bitcast ptr %group.addr.2 to ptr
  %group.675.38 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.674.37)
  %unsafe.addr.676.39 = getelementptr i8, ptr %group.675.38, i64 64
  %unsafe.addr.cast.677.40 = bitcast ptr %unsafe.addr.676.39 to ptr
  store ptr null, ptr %unsafe.addr.cast.677.40, align 1
  %none.678.41 = load ptr, ptr @py_None
  %group.gc.slot.679.42 = bitcast ptr %group.addr.2 to ptr
  %group.680.43 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.679.42)
  %unsafe.addr.681.44 = getelementptr i8, ptr %group.680.43, i64 72
  %unsafe.addr.cast.682.45 = bitcast ptr %unsafe.addr.681.44 to ptr
  %group.gc.slot.683.46 = bitcast ptr %group.addr.2 to ptr
  %group.684.47 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.683.46)
  store ptr %group.684.47, ptr %unsafe.addr.cast.682.45, align 1
  %none.685.48 = load ptr, ptr @py_None
  %unsafe.global.addr.686.49 = bitcast ptr @pcc_vthread_channel_free_count_py to ptr
  %counter_ret.687.50 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.686.49)
  %icmp.689.53 = icmp sge i64 %counter_ret.687.50, 4096
  br i1 %icmp.689.53, label %if.then.690, label %if.else.691

if.then.690:
  %group.gc.slot.693.54 = bitcast ptr %group.addr.2 to ptr
  %group.694.55 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.693.54)
  call void (ptr) @free(ptr %group.694.55)
  %none.695.56 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.696.57 = bitcast ptr %group.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.696.57)
  ret void

if.else.691:
  br label %if.end.692

if.end.692:
  %group.gc.slot.697.58 = bitcast ptr %group.addr.2 to ptr
  %group.698.59 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.697.58)
  %unsafe.addr.699.60 = getelementptr i8, ptr %group.698.59, i64 8
  %unsafe.addr.cast.700.61 = bitcast ptr %unsafe.addr.699.60 to ptr
  %unsafe.global.load.ptr.701.62 = load ptr, ptr @pcc_vthread_channel_free_py
  store ptr %unsafe.global.load.ptr.701.62, ptr %unsafe.addr.cast.700.61, align 1
  %none.702.63 = load ptr, ptr @py_None
  %group.gc.slot.703.64 = bitcast ptr %group.addr.2 to ptr
  %group.704.65 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.703.64)
  store ptr %group.704.65, ptr @pcc_vthread_channel_free_py
  %none.705.66 = load ptr, ptr @py_None
  %unsafe.global.addr.706.67 = bitcast ptr @pcc_vthread_channel_free_count_py to ptr
  %counter_add_ret.707.68 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.706.67, i64 1)
  %add.709.70 = add i64 %counter_ret.687.50, 1
  call void (i64) @pcc_vthread_waiter_pool_note_cached(i64 %add.709.70)
  %gc.frame.leave.ptr.710.71 = bitcast ptr %group.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.710.71)
  ret void
}
define external void @user_py_virtual_thread_runtime__channel_group_release(ptr %group) "no-builtins" {
entry:
  %group.addr.2 = alloca ptr
  store ptr %group, ptr %group.addr.2
  %gc.frame.map.ptr.711.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.712.4 = bitcast ptr %group.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.711.3, ptr %gc.frame.slots.ptr.712.4)
  %group.gc.slot.713.5 = bitcast ptr %group.addr.2 to ptr
  %group.714.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.713.5)
  %unsafe.addr.715.7 = getelementptr i8, ptr %group.714.6, i64 16
  %unsafe.addr.cast.716.8 = bitcast ptr %unsafe.addr.715.7 to ptr
  %unsafe.load.ptr.717.9 = load ptr, ptr %unsafe.addr.cast.716.8, align 1
  %unsafe.ptr_is_null.i.719.12 = ptrtoint ptr %unsafe.load.ptr.717.9 to i64
  %unsafe.ptr.null.720.13 = icmp eq i64 %unsafe.ptr_is_null.i.719.12, 0
  %b2i64.721.14 = zext i1 %unsafe.ptr.null.720.13 to i64
  %icmp.722.15 = icmp eq i64 %b2i64.721.14, 0
  br i1 %icmp.722.15, label %if.then.723, label %if.else.724

if.then.723:
  call void (ptr) @pcc_gc_scheduler_root_unregister_handle(ptr %unsafe.load.ptr.717.9)
  call void () @pcc_vthread_effect_note_waiter_root_leave()
  br label %if.end.725

if.else.724:
  br label %if.end.725

if.end.725:
  %group.gc.slot.727.17 = bitcast ptr %group.addr.2 to ptr
  %group.728.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.727.17)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %group.728.18, ptr null)
  %group.gc.slot.729.19 = bitcast ptr %group.addr.2 to ptr
  %group.730.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.729.19)
  call void (ptr) @user_py_virtual_thread_runtime__channel_group_recycle(ptr %group.730.20)
  %gc.frame.leave.ptr.731.21 = bitcast ptr %group.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.731.21)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__channel_group_reserve(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %call.ret.root.735.6 = alloca ptr
  %group.addr.12 = alloca ptr
  store ptr null, ptr %group.addr.12
  %handle.addr.30 = alloca ptr
  store ptr null, ptr %handle.addr.30
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.732.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.733.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.732.3, ptr %gc.frame.slots.ptr.733.4)
  %channel_group_alloc_ret.734.5 = call ptr () @user_py_virtual_thread_runtime__channel_group_alloc()
  store ptr null, ptr %call.ret.root.735.6
  %call.ret.root.ptr.736.7 = bitcast ptr %call.ret.root.735.6 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.736.7, ptr %channel_group_alloc_ret.734.5)
  %gc.frame.lifo.map.ptr.737.8 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.738.9 = bitcast ptr %call.ret.root.735.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.737.8, ptr %gc.frame.lifo.slots.ptr.738.9)
  %call.ret.current.739.10 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.736.7)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.736.7, ptr null)
  %gc.frame.lifo.leave.ptr.740.11 = bitcast ptr %call.ret.root.735.6 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.740.11)
  %gc.frame.map.ptr.746.17 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.747.18 = bitcast ptr %group.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.746.17, ptr %gc.frame.slots.ptr.747.18)
  %gc.frame.map.ptr.764.31 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.765.32 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.764.31, ptr %gc.frame.slots.ptr.765.32)
  br i1 0, label %group.owned.release.742, label %group.owned.cont.743

group.owned.release.742:
  %group.release.gc.slot.744.15 = bitcast ptr %group.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %group.release.gc.slot.744.15, ptr null)
  br label %group.owned.cont.743

group.owned.cont.743:
  %group.owned.resolve.745.16 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.739.10)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %group.owned.resolve.745.16)
  store ptr %group.owned.resolve.745.16, ptr %group.addr.12
  %group.gc.slot.748.19 = bitcast ptr %group.addr.12 to ptr
  %group.749.20 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.748.19)
  %unsafe.ptr_is_null.i.750.21 = ptrtoint ptr %group.749.20 to i64
  %unsafe.ptr.null.751.22 = icmp eq i64 %unsafe.ptr_is_null.i.750.21, 0
  br i1 %unsafe.ptr.null.751.22, label %if.then.752, label %if.else.753

if.then.752:
  br i1 1, label %group.owned.release.756, label %group.owned.cont.757

if.else.753:
  br label %if.end.754

if.end.754:
  %group.gc.slot.761.27 = bitcast ptr %group.addr.12 to ptr
  %group.762.28 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.761.27)
  %extern.pcc_gc_scheduler_root_register_handle.ret.763.29 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %group.762.28)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.763.29, ptr %handle.addr.30
  %handle.gc.slot.767.34 = bitcast ptr %handle.addr.30 to ptr
  %handle.768.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.767.34)
  %unsafe.ptr_is_null.i.769.36 = ptrtoint ptr %handle.768.35 to i64
  %unsafe.ptr.null.770.37 = icmp eq i64 %unsafe.ptr_is_null.i.769.36, 0
  br i1 %unsafe.ptr.null.770.37, label %if.then.771, label %if.else.772

group.owned.release.756:
  %group.release.gc.slot.758.24 = bitcast ptr %group.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %group.release.gc.slot.758.24, ptr null)
  br label %group.owned.cont.757

group.owned.cont.757:
  %gc.frame.leave.ptr.759.25 = bitcast ptr %group.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.759.25)
  %gc.frame.leave.ptr.760.26 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.760.26)
  %gc.frame.leave.ptr.766.33 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.766.33)
  ret ptr null

if.then.771:
  %group.gc.slot.774.38 = bitcast ptr %group.addr.12 to ptr
  %group.775.39 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.774.38)
  call void (ptr) @user_py_virtual_thread_runtime__channel_group_release(ptr %group.775.39)
  br i1 1, label %group.owned.release.777, label %group.owned.cont.778

if.else.772:
  br label %if.end.773

if.end.773:
  %group.gc.slot.783.45 = bitcast ptr %group.addr.12 to ptr
  %group.784.46 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.783.45)
  %unsafe.addr.785.47 = getelementptr i8, ptr %group.784.46, i64 16
  %unsafe.addr.cast.786.48 = bitcast ptr %unsafe.addr.785.47 to ptr
  %handle.gc.slot.787.49 = bitcast ptr %handle.addr.30 to ptr
  %handle.788.50 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.787.49)
  store ptr %handle.788.50, ptr %unsafe.addr.cast.786.48, align 1
  %none.789.51 = load ptr, ptr @py_None
  call void () @pcc_vthread_effect_note_waiter_root_enter()
  %group.gc.slot.790.52 = bitcast ptr %group.addr.12 to ptr
  %group.791.53 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.790.52)
  %vthread.gc.slot.792.54 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.793.55 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.792.54)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %group.791.53, ptr %vthread.793.55)
  %group.gc.slot.794.56 = bitcast ptr %group.addr.12 to ptr
  %group.795.57 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %group.gc.slot.794.56)
  br i1 1, label %ret.local.ready.798, label %ret.local.borrowed.797

group.owned.release.777:
  %group.release.gc.slot.779.41 = bitcast ptr %group.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %group.release.gc.slot.779.41, ptr null)
  br label %group.owned.cont.778

group.owned.cont.778:
  %gc.frame.leave.ptr.780.42 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.780.42)
  %gc.frame.leave.ptr.781.43 = bitcast ptr %group.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.781.43)
  %gc.frame.leave.ptr.782.44 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.782.44)
  ret ptr null

ret.local.borrowed.797:
  %ret.local.retain.799.59 = call ptr (ptr) @pcc_gc_retain(ptr %group.795.57)
  br label %ret.local.ready.798

ret.local.ready.798:
  %ret.local.value.800.60 = phi ptr [%group.795.57, %if.end.773], [%ret.local.retain.799.59, %ret.local.borrowed.797]
  %ret.tmp.root.801.61 = alloca ptr
  store ptr null, ptr %ret.tmp.root.801.61
  %ret.tmp.root.ptr.802.62 = bitcast ptr %ret.tmp.root.801.61 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.802.62, ptr %ret.local.value.800.60)
  %gc.frame.lifo.map.ptr.803.63 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.804.64 = bitcast ptr %ret.tmp.root.801.61 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.803.63, ptr %gc.frame.lifo.slots.ptr.804.64)
  %gc.frame.leave.ptr.805.65 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.805.65)
  %gc.frame.leave.ptr.806.66 = bitcast ptr %group.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.806.66)
  %gc.frame.leave.ptr.807.67 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.807.67)
  %ret.tmp.current.808.68 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.802.62)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.802.62, ptr null)
  %gc.frame.lifo.leave.ptr.809.69 = bitcast ptr %ret.tmp.root.801.61 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.809.69)
  ret ptr %ret.tmp.current.808.68
}
define external void @user_py_virtual_thread_runtime__ready_release(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.810.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.811.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.810.3, ptr %gc.frame.slots.ptr.811.4)
  %node.gc.slot.812.5 = bitcast ptr %node.addr.2 to ptr
  %node.813.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.812.5)
  %unsafe.addr.814.7 = getelementptr i8, ptr %node.813.6, i64 24
  %unsafe.addr.cast.815.8 = bitcast ptr %unsafe.addr.814.7 to ptr
  %unsafe.load.i64.816.9 = load i64, ptr %unsafe.addr.cast.815.8, align 1
  %node.gc.slot.817.11 = bitcast ptr %node.addr.2 to ptr
  %node.818.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.817.11)
  %unsafe.addr.819.13 = getelementptr i8, ptr %node.818.12, i64 16
  %unsafe.addr.cast.820.14 = bitcast ptr %unsafe.addr.819.13 to ptr
  %unsafe.load.ptr.821.15 = load ptr, ptr %unsafe.addr.cast.820.14, align 1
  %unsafe.ptr_is_null.i.823.18 = ptrtoint ptr %unsafe.load.ptr.821.15 to i64
  %unsafe.ptr.null.824.19 = icmp eq i64 %unsafe.ptr_is_null.i.823.18, 0
  %b2i64.825.20 = zext i1 %unsafe.ptr.null.824.19 to i64
  %icmp.826.21 = icmp eq i64 %b2i64.825.20, 0
  br i1 %icmp.826.21, label %if.then.827, label %if.else.828

if.then.827:
  call void (ptr) @pcc_gc_scheduler_root_unregister_handle(ptr %unsafe.load.ptr.821.15)
  %icmp.832.24 = icmp eq i64 %unsafe.load.i64.816.9, 2
  br i1 %icmp.832.24, label %if.then.833, label %if.else.834

if.else.828:
  br label %if.end.829

if.end.829:
  %node.gc.slot.841.27 = bitcast ptr %node.addr.2 to ptr
  %node.842.28 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.841.27)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.842.28, ptr null)
  %icmp.844.30 = icmp eq i64 %unsafe.load.i64.816.9, 2
  br i1 %icmp.844.30, label %if.then.845, label %if.else.846

if.then.833:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 2, i64 1, i64 -1, i64 -1)
  br label %if.end.835

if.else.834:
  %icmp.837.26 = icmp eq i64 %unsafe.load.i64.816.9, 3
  br i1 %icmp.837.26, label %if.then.838, label %if.else.839

if.end.835:
  br label %if.end.829

if.then.838:
  call void () @pcc_vthread_effect_note_waiter_root_leave()
  br label %if.end.840

if.else.839:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 2, i64 0, i64 -1, i64 -1)
  br label %if.end.840

if.end.840:
  br label %if.end.835

if.then.845:
  %node.gc.slot.848.31 = bitcast ptr %node.addr.2 to ptr
  %node.849.32 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.848.31)
  call void (ptr) @user_py_virtual_thread_runtime__join_recycle(ptr %node.849.32)
  %gc.frame.leave.ptr.850.33 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.850.33)
  ret void

if.else.846:
  br label %if.end.847

if.end.847:
  %icmp.852.35 = icmp eq i64 %unsafe.load.i64.816.9, 3
  br i1 %icmp.852.35, label %if.then.853, label %if.else.854

if.then.853:
  %node.gc.slot.856.36 = bitcast ptr %node.addr.2 to ptr
  %node.857.37 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.856.36)
  call void (ptr) @user_py_virtual_thread_runtime__channel_group_recycle(ptr %node.857.37)
  %gc.frame.leave.ptr.858.38 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.858.38)
  ret void

if.else.854:
  br label %if.end.855

if.end.855:
  %node.gc.slot.859.39 = bitcast ptr %node.addr.2 to ptr
  %node.860.40 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.859.39)
  %unsafe.addr.861.41 = getelementptr i8, ptr %node.860.40, i64 8
  %unsafe.addr.cast.862.42 = bitcast ptr %unsafe.addr.861.41 to ptr
  %unsafe.global.load.ptr.863.43 = load ptr, ptr @pcc_vthread_ready_free_py
  store ptr %unsafe.global.load.ptr.863.43, ptr %unsafe.addr.cast.862.42, align 1
  %none.864.44 = load ptr, ptr @py_None
  %node.gc.slot.865.45 = bitcast ptr %node.addr.2 to ptr
  %node.866.46 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.865.45)
  %unsafe.addr.867.47 = getelementptr i8, ptr %node.866.46, i64 16
  %unsafe.addr.cast.868.48 = bitcast ptr %unsafe.addr.867.47 to ptr
  store ptr null, ptr %unsafe.addr.cast.868.48, align 1
  %none.869.49 = load ptr, ptr @py_None
  %node.gc.slot.870.50 = bitcast ptr %node.addr.2 to ptr
  %node.871.51 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.870.50)
  %unsafe.addr.872.52 = getelementptr i8, ptr %node.871.51, i64 24
  %unsafe.addr.cast.873.53 = bitcast ptr %unsafe.addr.872.52 to ptr
  store i64 1, ptr %unsafe.addr.cast.873.53, align 1
  %none.874.54 = load ptr, ptr @py_None
  %node.gc.slot.875.55 = bitcast ptr %node.addr.2 to ptr
  %node.876.56 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.875.55)
  store ptr %node.876.56, ptr @pcc_vthread_ready_free_py
  %none.877.57 = load ptr, ptr @py_None
  %unsafe.global.addr.878.58 = bitcast ptr @pcc_vthread_ready_cached_py to ptr
  %counter_add_ret.879.59 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.878.58, i64 1)
  %gc.frame.leave.ptr.880.60 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.880.60)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__join_alloc() "no-builtins" {
entry:
  %unsafe.global.load.ptr.881.1 = load ptr, ptr @pcc_vthread_join_free_py
  %unsafe.ptr_is_null.i.883.4 = ptrtoint ptr %unsafe.global.load.ptr.881.1 to i64
  %unsafe.ptr.null.884.5 = icmp eq i64 %unsafe.ptr_is_null.i.883.4, 0
  %b2i64.885.6 = zext i1 %unsafe.ptr.null.884.5 to i64
  %icmp.886.7 = icmp eq i64 %b2i64.885.6, 0
  br i1 %icmp.886.7, label %if.then.887, label %if.else.888

if.then.887:
  %unsafe.addr.891.9 = getelementptr i8, ptr %unsafe.global.load.ptr.881.1, i64 8
  %unsafe.addr.cast.892.10 = bitcast ptr %unsafe.addr.891.9 to ptr
  %unsafe.load.ptr.893.11 = load ptr, ptr %unsafe.addr.cast.892.10, align 1
  store ptr %unsafe.load.ptr.893.11, ptr @pcc_vthread_join_free_py
  %none.894.12 = load ptr, ptr @py_None
  %unsafe.global.addr.895.13 = bitcast ptr @pcc_vthread_join_free_count_py to ptr
  %counter_add_ret.896.14 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.895.13, i64 -1)
  call void () @pcc_vthread_waiter_pool_note_reuse()
  br label %if.end.889

if.else.888:
  %unsafe.malloc.897.15 = call ptr (i64) @malloc(i64 32)
  %unsafe.ptr_is_null.i.899.17 = ptrtoint ptr %unsafe.malloc.897.15 to i64
  %unsafe.ptr.null.900.18 = icmp eq i64 %unsafe.ptr_is_null.i.899.17, 0
  %b2i64.901.19 = zext i1 %unsafe.ptr.null.900.18 to i64
  %icmp.902.20 = icmp eq i64 %b2i64.901.19, 0
  br i1 %icmp.902.20, label %if.then.903, label %if.else.904

if.end.889:
  %node.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.881.1, %if.then.887 ], [ %unsafe.malloc.897.15, %if.end.905 ]
  %unsafe.ptr_is_null.i.907.22 = ptrtoint ptr %node.addr.2.phi to i64
  %unsafe.ptr.null.908.23 = icmp eq i64 %unsafe.ptr_is_null.i.907.22, 0
  %b2i64.909.24 = zext i1 %unsafe.ptr.null.908.23 to i64
  %icmp.910.25 = icmp eq i64 %b2i64.909.24, 0
  br i1 %icmp.910.25, label %if.then.911, label %if.else.912

if.then.903:
  call void () @pcc_vthread_waiter_pool_note_allocation()
  br label %if.end.905

if.else.904:
  br label %if.end.905

if.end.905:
  br label %if.end.889

if.then.911:
  %unsafe.addr.915.27 = getelementptr i8, ptr %node.addr.2.phi, i64 0
  %unsafe.addr.cast.916.28 = bitcast ptr %unsafe.addr.915.27 to ptr
  store ptr null, ptr %unsafe.addr.cast.916.28, align 1
  %none.917.29 = load ptr, ptr @py_None
  %unsafe.addr.919.31 = getelementptr i8, ptr %node.addr.2.phi, i64 8
  %unsafe.addr.cast.920.32 = bitcast ptr %unsafe.addr.919.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.920.32, align 1
  %none.921.33 = load ptr, ptr @py_None
  %unsafe.addr.923.35 = getelementptr i8, ptr %node.addr.2.phi, i64 16
  %unsafe.addr.cast.924.36 = bitcast ptr %unsafe.addr.923.35 to ptr
  store ptr null, ptr %unsafe.addr.cast.924.36, align 1
  %none.925.37 = load ptr, ptr @py_None
  %unsafe.addr.927.39 = getelementptr i8, ptr %node.addr.2.phi, i64 24
  %unsafe.addr.cast.928.40 = bitcast ptr %unsafe.addr.927.39 to ptr
  store i64 2, ptr %unsafe.addr.cast.928.40, align 1
  %none.929.41 = load ptr, ptr @py_None
  br label %if.end.913

if.else.912:
  br label %if.end.913

if.end.913:
  %unsafe.global.addr.930.42 = bitcast ptr @pcc_vthread_join_free_count_py to ptr
  %counter_ret.931.43 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.930.42)
  call void (i64) @pcc_vthread_waiter_pool_note_cached(i64 %counter_ret.931.43)
  %ret.retain.933.45 = call ptr (ptr) @pcc_gc_retain(ptr %node.addr.2.phi)
  %ret.tmp.root.934.46 = alloca ptr
  store ptr null, ptr %ret.tmp.root.934.46
  %ret.tmp.root.ptr.935.47 = bitcast ptr %ret.tmp.root.934.46 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.935.47, ptr %ret.retain.933.45)
  %gc.frame.lifo.map.ptr.936.48 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.937.49 = bitcast ptr %ret.tmp.root.934.46 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.936.48, ptr %gc.frame.lifo.slots.ptr.937.49)
  %ret.tmp.current.938.50 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.935.47)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.935.47, ptr null)
  %gc.frame.lifo.leave.ptr.939.51 = bitcast ptr %ret.tmp.root.934.46 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.939.51)
  ret ptr %ret.tmp.current.938.50
}
define external void @user_py_virtual_thread_runtime__join_recycle(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.940.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.941.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.940.3, ptr %gc.frame.slots.ptr.941.4)
  %node.gc.slot.942.5 = bitcast ptr %node.addr.2 to ptr
  %node.943.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.942.5)
  %unsafe.addr.944.7 = getelementptr i8, ptr %node.943.6, i64 16
  %unsafe.addr.cast.945.8 = bitcast ptr %unsafe.addr.944.7 to ptr
  store ptr null, ptr %unsafe.addr.cast.945.8, align 1
  %none.946.9 = load ptr, ptr @py_None
  %node.gc.slot.947.10 = bitcast ptr %node.addr.2 to ptr
  %node.948.11 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.947.10)
  %unsafe.addr.949.12 = getelementptr i8, ptr %node.948.11, i64 24
  %unsafe.addr.cast.950.13 = bitcast ptr %unsafe.addr.949.12 to ptr
  store i64 2, ptr %unsafe.addr.cast.950.13, align 1
  %none.951.14 = load ptr, ptr @py_None
  %unsafe.global.addr.952.15 = bitcast ptr @pcc_vthread_join_free_count_py to ptr
  %counter_ret.953.16 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.952.15)
  %icmp.955.19 = icmp sge i64 %counter_ret.953.16, 4096
  br i1 %icmp.955.19, label %if.then.956, label %if.else.957

if.then.956:
  %node.gc.slot.959.20 = bitcast ptr %node.addr.2 to ptr
  %node.960.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.959.20)
  call void (ptr) @free(ptr %node.960.21)
  %none.961.22 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.962.23 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.962.23)
  ret void

if.else.957:
  br label %if.end.958

if.end.958:
  %node.gc.slot.963.24 = bitcast ptr %node.addr.2 to ptr
  %node.964.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.963.24)
  %unsafe.addr.965.26 = getelementptr i8, ptr %node.964.25, i64 8
  %unsafe.addr.cast.966.27 = bitcast ptr %unsafe.addr.965.26 to ptr
  %unsafe.global.load.ptr.967.28 = load ptr, ptr @pcc_vthread_join_free_py
  store ptr %unsafe.global.load.ptr.967.28, ptr %unsafe.addr.cast.966.27, align 1
  %none.968.29 = load ptr, ptr @py_None
  %node.gc.slot.969.30 = bitcast ptr %node.addr.2 to ptr
  %node.970.31 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.969.30)
  store ptr %node.970.31, ptr @pcc_vthread_join_free_py
  %none.971.32 = load ptr, ptr @py_None
  %unsafe.global.addr.972.33 = bitcast ptr @pcc_vthread_join_free_count_py to ptr
  %counter_add_ret.973.34 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.972.33, i64 1)
  %add.975.36 = add i64 %counter_ret.953.16, 1
  call void (i64) @pcc_vthread_waiter_pool_note_cached(i64 %add.975.36)
  %gc.frame.leave.ptr.976.37 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.976.37)
  ret void
}
define external void @user_py_virtual_thread_runtime__join_release(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.977.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.978.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.977.3, ptr %gc.frame.slots.ptr.978.4)
  %node.gc.slot.979.5 = bitcast ptr %node.addr.2 to ptr
  %node.980.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.979.5)
  %unsafe.addr.981.7 = getelementptr i8, ptr %node.980.6, i64 16
  %unsafe.addr.cast.982.8 = bitcast ptr %unsafe.addr.981.7 to ptr
  %unsafe.load.ptr.983.9 = load ptr, ptr %unsafe.addr.cast.982.8, align 1
  %unsafe.ptr_is_null.i.985.12 = ptrtoint ptr %unsafe.load.ptr.983.9 to i64
  %unsafe.ptr.null.986.13 = icmp eq i64 %unsafe.ptr_is_null.i.985.12, 0
  %b2i64.987.14 = zext i1 %unsafe.ptr.null.986.13 to i64
  %icmp.988.15 = icmp eq i64 %b2i64.987.14, 0
  br i1 %icmp.988.15, label %if.then.989, label %if.else.990

if.then.989:
  call void (ptr) @pcc_gc_scheduler_root_unregister_handle(ptr %unsafe.load.ptr.983.9)
  call void () @pcc_vthread_effect_note_waiter_root_leave()
  br label %if.end.991

if.else.990:
  br label %if.end.991

if.end.991:
  %node.gc.slot.993.17 = bitcast ptr %node.addr.2 to ptr
  %node.994.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.993.17)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.994.18, ptr null)
  %node.gc.slot.995.19 = bitcast ptr %node.addr.2 to ptr
  %node.996.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.995.19)
  call void (ptr) @user_py_virtual_thread_runtime__join_recycle(ptr %node.996.20)
  %gc.frame.leave.ptr.997.21 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.997.21)
  ret void
}
define external void @user_py_virtual_thread_runtime__queue_push(ptr %head_slot, ptr %tail_slot, ptr %node) "no-builtins" {
entry:
  %head_slot.addr.4 = alloca ptr
  %tail_slot.addr.7 = alloca ptr
  %node.addr.10 = alloca ptr
  store ptr %head_slot, ptr %head_slot.addr.4
  %gc.frame.map.ptr.998.5 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.999.6 = bitcast ptr %head_slot.addr.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.998.5, ptr %gc.frame.slots.ptr.999.6)
  store ptr %tail_slot, ptr %tail_slot.addr.7
  %gc.frame.map.ptr.1000.8 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1001.9 = bitcast ptr %tail_slot.addr.7 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1000.8, ptr %gc.frame.slots.ptr.1001.9)
  store ptr %node, ptr %node.addr.10
  %gc.frame.map.ptr.1002.11 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1003.12 = bitcast ptr %node.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1002.11, ptr %gc.frame.slots.ptr.1003.12)
  %node.gc.slot.1004.13 = bitcast ptr %node.addr.10 to ptr
  %node.1005.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1004.13)
  %unsafe.addr.1006.15 = getelementptr i8, ptr %node.1005.14, i64 8
  %unsafe.addr.cast.1007.16 = bitcast ptr %unsafe.addr.1006.15 to ptr
  store ptr null, ptr %unsafe.addr.cast.1007.16, align 1
  %none.1008.17 = load ptr, ptr @py_None
  %tail_slot.gc.slot.1009.18 = bitcast ptr %tail_slot.addr.7 to ptr
  %tail_slot.1010.19 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %tail_slot.gc.slot.1009.18)
  %unsafe.addr.1011.20 = getelementptr i8, ptr %tail_slot.1010.19, i64 0
  %unsafe.addr.cast.1012.21 = bitcast ptr %unsafe.addr.1011.20 to ptr
  %unsafe.load.ptr.1013.22 = load ptr, ptr %unsafe.addr.cast.1012.21, align 1
  %unsafe.ptr_is_null.i.1015.25 = ptrtoint ptr %unsafe.load.ptr.1013.22 to i64
  %unsafe.ptr.null.1016.26 = icmp eq i64 %unsafe.ptr_is_null.i.1015.25, 0
  br i1 %unsafe.ptr.null.1016.26, label %if.then.1017, label %if.else.1018

if.then.1017:
  %head_slot.gc.slot.1020.27 = bitcast ptr %head_slot.addr.4 to ptr
  %head_slot.1021.28 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %head_slot.gc.slot.1020.27)
  %unsafe.addr.1022.29 = getelementptr i8, ptr %head_slot.1021.28, i64 0
  %unsafe.addr.cast.1023.30 = bitcast ptr %unsafe.addr.1022.29 to ptr
  %node.gc.slot.1024.31 = bitcast ptr %node.addr.10 to ptr
  %node.1025.32 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1024.31)
  store ptr %node.1025.32, ptr %unsafe.addr.cast.1023.30, align 1
  %none.1026.33 = load ptr, ptr @py_None
  br label %if.end.1019

if.else.1018:
  %unsafe.addr.1028.35 = getelementptr i8, ptr %unsafe.load.ptr.1013.22, i64 8
  %unsafe.addr.cast.1029.36 = bitcast ptr %unsafe.addr.1028.35 to ptr
  %node.gc.slot.1030.37 = bitcast ptr %node.addr.10 to ptr
  %node.1031.38 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1030.37)
  store ptr %node.1031.38, ptr %unsafe.addr.cast.1029.36, align 1
  %none.1032.39 = load ptr, ptr @py_None
  br label %if.end.1019

if.end.1019:
  %tail_slot.gc.slot.1033.40 = bitcast ptr %tail_slot.addr.7 to ptr
  %tail_slot.1034.41 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %tail_slot.gc.slot.1033.40)
  %unsafe.addr.1035.42 = getelementptr i8, ptr %tail_slot.1034.41, i64 0
  %unsafe.addr.cast.1036.43 = bitcast ptr %unsafe.addr.1035.42 to ptr
  %node.gc.slot.1037.44 = bitcast ptr %node.addr.10 to ptr
  %node.1038.45 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1037.44)
  store ptr %node.1038.45, ptr %unsafe.addr.cast.1036.43, align 1
  %none.1039.46 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.1040.47 = bitcast ptr %node.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1040.47)
  %gc.frame.leave.ptr.1041.48 = bitcast ptr %tail_slot.addr.7 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1041.48)
  %gc.frame.leave.ptr.1042.49 = bitcast ptr %head_slot.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1042.49)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__carrier_head_slot(i64 %index) "no-builtins" {
entry:
  %unsafe.global.addr.1043.3 = bitcast ptr @pcc_vthread_carrier_heads_py to ptr
  %mul.1045.5 = mul i64 %index, 8
  %unsafe.ptr.add.1046.6 = getelementptr i8, ptr %unsafe.global.addr.1043.3, i64 %mul.1045.5
  ret ptr %unsafe.ptr.add.1046.6
}
define external ptr @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %index) "no-builtins" {
entry:
  %unsafe.global.addr.1047.3 = bitcast ptr @pcc_vthread_carrier_tails_py to ptr
  %mul.1049.5 = mul i64 %index, 8
  %unsafe.ptr.add.1050.6 = getelementptr i8, ptr %unsafe.global.addr.1047.3, i64 %mul.1049.5
  ret ptr %unsafe.ptr.add.1050.6
}
define external void @user_py_virtual_thread_runtime__push_ready_node(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  %call.ret.root.1082.32 = alloca ptr
  %call.ret.root.1090.40 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.1051.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1052.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1051.3, ptr %gc.frame.slots.ptr.1052.4)
  %unsafe.global.addr.1053.5 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.1054.6 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.1053.5)
  %icmp.1056.9 = icmp sgt i64 %counter_ret.1054.6, 0
  br i1 %icmp.1056.9, label %if.then.1057, label %if.else.1058

if.then.1057:
  %unsafe.global.addr.1060.10 = bitcast ptr @pcc_vthread_next_carrier_enqueue_py to ptr
  %counter_add_ret.1061.11 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.1060.10, i64 1)
  %sub.1062.12 = sub i64 %counter_add_ret.1061.11, 1
  %mod_bz.1065.16 = icmp eq i64 %counter_ret.1054.6, 0
  br i1 %mod_bz.1065.16, label %div.zero.1067, label %div.ok.1066

if.else.1058:
  br label %if.end.1059

if.end.1059:
  %unsafe.global.addr.1099.49 = bitcast ptr @pcc_vthread_ready_head_py to ptr
  %unsafe.global.addr.1100.50 = bitcast ptr @pcc_vthread_ready_tail_py to ptr
  %node.gc.slot.1101.51 = bitcast ptr %node.addr.2 to ptr
  %node.1102.52 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1101.51)
  call void (ptr, ptr, ptr) @user_py_virtual_thread_runtime__queue_push(ptr %unsafe.global.addr.1099.49, ptr %unsafe.global.addr.1100.50, ptr %node.1102.52)
  %gc.frame.leave.ptr.1103.53 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1103.53)
  ret void

div.ok.1066:
  %r.1072.21 = srem i64 %sub.1062.12, %counter_ret.1054.6
  %r_nz.1073.22 = icmp ne i64 %r.1072.21, 0
  %r_neg.1074.23 = icmp slt i64 %r.1072.21, 0
  %b_neg.1075.24 = icmp slt i64 %counter_ret.1054.6, 0
  %sign_diff.1076.25 = xor i1 %r_neg.1074.23, %b_neg.1075.24
  %need_fix.1077.26 = and i1 %r_nz.1073.22, %sign_diff.1076.25
  %r_fix.1078.27 = add i64 %r.1072.21, %counter_ret.1054.6
  %mod.1079.28 = select i1 %need_fix.1077.26, i64 %r_fix.1078.27, i64 %r.1072.21
  %carrier_head_slot_ret.1081.31 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %mod.1079.28)
  store ptr null, ptr %call.ret.root.1082.32
  %call.ret.root.ptr.1083.33 = bitcast ptr %call.ret.root.1082.32 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1083.33, ptr %carrier_head_slot_ret.1081.31)
  %gc.frame.lifo.map.ptr.1084.34 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1085.35 = bitcast ptr %call.ret.root.1082.32 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1084.34, ptr %gc.frame.lifo.slots.ptr.1085.35)
  %call.ret.current.1086.36 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1083.33)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1083.33, ptr null)
  %gc.frame.lifo.leave.ptr.1087.37 = bitcast ptr %call.ret.root.1082.32 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1087.37)
  %carrier_tail_slot_ret.1089.39 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %mod.1079.28)
  store ptr null, ptr %call.ret.root.1090.40
  %call.ret.root.ptr.1091.41 = bitcast ptr %call.ret.root.1090.40 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1091.41, ptr %carrier_tail_slot_ret.1089.39)
  %gc.frame.lifo.map.ptr.1092.42 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1093.43 = bitcast ptr %call.ret.root.1090.40 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1092.42, ptr %gc.frame.lifo.slots.ptr.1093.43)
  %call.ret.current.1094.44 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1091.41)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1091.41, ptr null)
  %gc.frame.lifo.leave.ptr.1095.45 = bitcast ptr %call.ret.root.1090.40 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1095.45)
  %node.gc.slot.1096.46 = bitcast ptr %node.addr.2 to ptr
  %node.1097.47 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1096.46)
  call void (ptr, ptr, ptr) @user_py_virtual_thread_runtime__queue_push(ptr %call.ret.current.1086.36, ptr %call.ret.current.1094.44, ptr %node.1097.47)
  %gc.frame.leave.ptr.1098.48 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1098.48)
  ret void

div.zero.1067:
  %.17 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.1068.18 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.17)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.1068.18)
  %raise.frame.exc.1069.19 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  br label %err.finish

err.finish:
  %gc.frame.leave.ptr.1070.20 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1070.20)
  ret void

raise.cont.1071:
  unreachable
}
define external i64 @user_py_virtual_thread_runtime__carrier_queues_open(i64 %carrier_count) "no-builtins" {
entry:
  %call.ret.root.1136.21 = alloca ptr
  %call.ret.root.1147.32 = alloca ptr
  %node.addr.47 = alloca ptr
  store ptr null, ptr %node.addr.47
  %icmp.1105.4 = icmp sle i64 %carrier_count, 0
  %gc.frame.map.ptr.1183.65 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1184.66 = bitcast ptr %node.addr.47 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1183.65, ptr %gc.frame.slots.ptr.1184.66)
  br i1 %icmp.1105.4, label %if.then.1106, label %if.else.1107

if.then.1106:
  %gc.frame.leave.ptr.1185.67 = bitcast ptr %node.addr.47 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1185.67)
  ret i64 0

if.else.1107:
  br label %if.end.1108

if.end.1108:
  %icmp.1110.6 = icmp sgt i64 %carrier_count, 64
  br i1 %icmp.1110.6, label %if.then.1111, label %if.else.1112

if.then.1111:
  br label %if.end.1113

if.else.1112:
  br label %if.end.1113

if.end.1113:
  %carrier_count.addr.2.phi = phi i64 [ 64, %if.then.1111 ], [ %carrier_count, %if.else.1112 ]
  %unsafe.global.addr.1114.7 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.1115.8 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.1114.7)
  %icmp.1117.11 = icmp sgt i64 %counter_ret.1115.8, 0
  br i1 %icmp.1117.11, label %if.then.1118, label %if.else.1119

if.then.1118:
  %icmp.1123.14 = icmp eq i64 %counter_ret.1115.8, %carrier_count.addr.2.phi
  br i1 %icmp.1123.14, label %if.then.1124, label %if.else.1125

if.else.1119:
  br label %if.end.1120

if.end.1120:
  br label %while.cond.1127

if.then.1124:
  %gc.frame.leave.ptr.1186.68 = bitcast ptr %node.addr.47 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1186.68)
  ret i64 0

if.else.1125:
  br label %if.end.1126

if.end.1126:
  %gc.frame.leave.ptr.1187.69 = bitcast ptr %node.addr.47 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1187.69)
  ret i64 -1

while.cond.1127:
  %index.addr.15.phi = phi i64 [ 0, %if.end.1120 ], [ %add.1157.42, %while.latch.1129 ]
  %icmp.1133.18 = icmp slt i64 %index.addr.15.phi, %carrier_count.addr.2.phi
  br i1 %icmp.1133.18, label %while.body.1128, label %while.end.1130

while.body.1128:
  %carrier_head_slot_ret.1135.20 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %index.addr.15.phi)
  store ptr null, ptr %call.ret.root.1136.21
  %call.ret.root.ptr.1137.22 = bitcast ptr %call.ret.root.1136.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1137.22, ptr %carrier_head_slot_ret.1135.20)
  %gc.frame.lifo.map.ptr.1138.23 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1139.24 = bitcast ptr %call.ret.root.1136.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1138.23, ptr %gc.frame.lifo.slots.ptr.1139.24)
  %call.ret.current.1140.25 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1137.22)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1137.22, ptr null)
  %gc.frame.lifo.leave.ptr.1141.26 = bitcast ptr %call.ret.root.1136.21 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1141.26)
  %unsafe.addr.1142.27 = getelementptr i8, ptr %call.ret.current.1140.25, i64 0
  %unsafe.addr.cast.1143.28 = bitcast ptr %unsafe.addr.1142.27 to ptr
  store ptr null, ptr %unsafe.addr.cast.1143.28, align 1
  %none.1144.29 = load ptr, ptr @py_None
  %carrier_tail_slot_ret.1146.31 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %index.addr.15.phi)
  store ptr null, ptr %call.ret.root.1147.32
  %call.ret.root.ptr.1148.33 = bitcast ptr %call.ret.root.1147.32 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1148.33, ptr %carrier_tail_slot_ret.1146.31)
  %gc.frame.lifo.map.ptr.1149.34 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1150.35 = bitcast ptr %call.ret.root.1147.32 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1149.34, ptr %gc.frame.lifo.slots.ptr.1150.35)
  %call.ret.current.1151.36 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1148.33)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1148.33, ptr null)
  %gc.frame.lifo.leave.ptr.1152.37 = bitcast ptr %call.ret.root.1147.32 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1152.37)
  %unsafe.addr.1153.38 = getelementptr i8, ptr %call.ret.current.1151.36, i64 0
  %unsafe.addr.cast.1154.39 = bitcast ptr %unsafe.addr.1153.38 to ptr
  store ptr null, ptr %unsafe.addr.cast.1154.39, align 1
  %none.1155.40 = load ptr, ptr @py_None
  %add.1157.42 = add i64 %index.addr.15.phi, 1
  br label %while.latch.1129

while.latch.1129:
  br label %while.cond.1127

while.end.1130:
  %unsafe.global.addr.1158.43 = bitcast ptr @pcc_vthread_next_carrier_enqueue_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.1158.43, i64 0)
  %unsafe.global.addr.1159.44 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.1159.44, i64 %carrier_count.addr.2.phi)
  %unsafe.global.load.ptr.1161.46 = load ptr, ptr @pcc_vthread_ready_head_py
  store ptr %unsafe.global.load.ptr.1161.46, ptr %node.addr.47
  store ptr null, ptr @pcc_vthread_ready_head_py
  %none.1162.48 = load ptr, ptr @py_None
  store ptr null, ptr @pcc_vthread_ready_tail_py
  %none.1163.49 = load ptr, ptr @py_None
  br label %while.cond.1164

while.cond.1164:
  %node.owned.62.phi = phi i1 [ 0, %while.end.1130 ], [ 0, %while.latch.1166 ]
  %node.1168.50 = load ptr, ptr %node.addr.47
  %unsafe.ptr_is_null.i.1169.51 = ptrtoint ptr %node.1168.50 to i64
  %unsafe.ptr.null.1170.52 = icmp eq i64 %unsafe.ptr_is_null.i.1169.51, 0
  %b2i64.1171.53 = zext i1 %unsafe.ptr.null.1170.52 to i64
  %icmp.1172.54 = icmp eq i64 %b2i64.1171.53, 0
  br i1 %icmp.1172.54, label %while.body.1165, label %while.end.1167

while.body.1165:
  %node.1173.55 = load ptr, ptr %node.addr.47
  %unsafe.addr.1174.56 = getelementptr i8, ptr %node.1173.55, i64 8
  %unsafe.addr.cast.1175.57 = bitcast ptr %unsafe.addr.1174.56 to ptr
  %unsafe.load.ptr.1176.58 = load ptr, ptr %unsafe.addr.cast.1175.57, align 1
  %node.1177.60 = load ptr, ptr %node.addr.47
  call void (ptr) @user_py_virtual_thread_runtime__push_ready_node(ptr %node.1177.60)
  br i1 %node.owned.62.phi, label %node.owned.release.1180, label %node.owned.cont.1181

while.latch.1166:
  br label %while.cond.1164

while.end.1167:
  %gc.frame.leave.ptr.1188.70 = bitcast ptr %node.addr.47 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1188.70)
  ret i64 0

node.owned.release.1180:
  %node.release.gc.slot.1182.64 = bitcast ptr %node.addr.47 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1182.64, ptr null)
  br label %node.owned.cont.1181

node.owned.cont.1181:
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.load.ptr.1176.58)
  store ptr %unsafe.load.ptr.1176.58, ptr %node.addr.47
  br label %while.latch.1166
}
define external void @user_py_virtual_thread_runtime__carrier_queues_close() "no-builtins" {
entry:
  %call.ret.root.1200.10 = alloca ptr
  %head_slot.addr.16 = alloca ptr
  store ptr null, ptr %head_slot.addr.16
  %call.ret.root.1215.25 = alloca ptr
  %tail_slot.addr.31 = alloca ptr
  store ptr null, ptr %tail_slot.addr.31
  %unsafe.global.addr.1189.1 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.1190.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.1189.1)
  %gc.frame.map.ptr.1211.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.1212.22 = bitcast ptr %head_slot.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1211.21, ptr %gc.frame.slots.ptr.1212.22)
  %gc.frame.map.ptr.1226.36 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.1227.37 = bitcast ptr %tail_slot.addr.31 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1226.36, ptr %gc.frame.slots.ptr.1227.37)
  br label %while.cond.1191

while.cond.1191:
  %head_slot.owned.17.phi = phi i1 [ 0, %entry ], [ 1, %while.latch.1193 ]
  %index.addr.4.phi = phi i64 [ 0, %entry ], [ %add.1273.80, %while.latch.1193 ]
  %tail_slot.owned.32.phi = phi i1 [ 0, %entry ], [ 1, %while.latch.1193 ]
  %icmp.1197.7 = icmp slt i64 %index.addr.4.phi, %counter_ret.1190.2
  br i1 %icmp.1197.7, label %while.body.1192, label %while.end.1194

while.body.1192:
  %carrier_head_slot_ret.1199.9 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %index.addr.4.phi)
  store ptr null, ptr %call.ret.root.1200.10
  %call.ret.root.ptr.1201.11 = bitcast ptr %call.ret.root.1200.10 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1201.11, ptr %carrier_head_slot_ret.1199.9)
  %gc.frame.lifo.map.ptr.1202.12 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1203.13 = bitcast ptr %call.ret.root.1200.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1202.12, ptr %gc.frame.lifo.slots.ptr.1203.13)
  %call.ret.current.1204.14 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1201.11)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1201.11, ptr null)
  %gc.frame.lifo.leave.ptr.1205.15 = bitcast ptr %call.ret.root.1200.10 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1205.15)
  br i1 %head_slot.owned.17.phi, label %head_slot.owned.release.1207, label %head_slot.owned.cont.1208

while.latch.1193:
  br label %while.cond.1191

while.end.1194:
  %unsafe.global.addr.1274.81 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.1274.81, i64 0)
  %unsafe.global.addr.1275.82 = bitcast ptr @pcc_vthread_next_carrier_enqueue_py to ptr
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.1275.82, i64 0)
  br i1 %head_slot.owned.17.phi, label %head_slot.owned.release.1277, label %head_slot.owned.cont.1278

head_slot.owned.release.1207:
  %head_slot.release.gc.slot.1209.19 = bitcast ptr %head_slot.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %head_slot.release.gc.slot.1209.19, ptr null)
  br label %head_slot.owned.cont.1208

head_slot.owned.cont.1208:
  %head_slot.owned.resolve.1210.20 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.1204.14)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %head_slot.owned.resolve.1210.20)
  store ptr %head_slot.owned.resolve.1210.20, ptr %head_slot.addr.16
  %carrier_tail_slot_ret.1214.24 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %index.addr.4.phi)
  store ptr null, ptr %call.ret.root.1215.25
  %call.ret.root.ptr.1216.26 = bitcast ptr %call.ret.root.1215.25 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1216.26, ptr %carrier_tail_slot_ret.1214.24)
  %gc.frame.lifo.map.ptr.1217.27 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1218.28 = bitcast ptr %call.ret.root.1215.25 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1217.27, ptr %gc.frame.lifo.slots.ptr.1218.28)
  %call.ret.current.1219.29 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1216.26)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1216.26, ptr null)
  %gc.frame.lifo.leave.ptr.1220.30 = bitcast ptr %call.ret.root.1215.25 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1220.30)
  br i1 %tail_slot.owned.32.phi, label %tail_slot.owned.release.1222, label %tail_slot.owned.cont.1223

tail_slot.owned.release.1222:
  %tail_slot.release.gc.slot.1224.34 = bitcast ptr %tail_slot.addr.31 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %tail_slot.release.gc.slot.1224.34, ptr null)
  br label %tail_slot.owned.cont.1223

tail_slot.owned.cont.1223:
  %tail_slot.owned.resolve.1225.35 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.1219.29)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %tail_slot.owned.resolve.1225.35)
  store ptr %tail_slot.owned.resolve.1225.35, ptr %tail_slot.addr.31
  %head_slot.gc.slot.1228.38 = bitcast ptr %head_slot.addr.16 to ptr
  %head_slot.1229.39 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %head_slot.gc.slot.1228.38)
  %unsafe.addr.1230.40 = getelementptr i8, ptr %head_slot.1229.39, i64 0
  %unsafe.addr.cast.1231.41 = bitcast ptr %unsafe.addr.1230.40 to ptr
  %unsafe.load.ptr.1232.42 = load ptr, ptr %unsafe.addr.cast.1231.41, align 1
  %tail_slot.gc.slot.1233.44 = bitcast ptr %tail_slot.addr.31 to ptr
  %tail_slot.1234.45 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %tail_slot.gc.slot.1233.44)
  %unsafe.addr.1235.46 = getelementptr i8, ptr %tail_slot.1234.45, i64 0
  %unsafe.addr.cast.1236.47 = bitcast ptr %unsafe.addr.1235.46 to ptr
  %unsafe.load.ptr.1237.48 = load ptr, ptr %unsafe.addr.cast.1236.47, align 1
  %unsafe.ptr_is_null.i.1239.51 = ptrtoint ptr %unsafe.load.ptr.1232.42 to i64
  %unsafe.ptr.null.1240.52 = icmp eq i64 %unsafe.ptr_is_null.i.1239.51, 0
  %b2i64.1241.53 = zext i1 %unsafe.ptr.null.1240.52 to i64
  %icmp.1242.54 = icmp eq i64 %b2i64.1241.53, 0
  br i1 %icmp.1242.54, label %if.then.1243, label %if.else.1244

if.then.1243:
  %unsafe.global.load.ptr.1246.55 = load ptr, ptr @pcc_vthread_ready_tail_py
  %unsafe.ptr_is_null.i.1248.58 = ptrtoint ptr %unsafe.global.load.ptr.1246.55 to i64
  %unsafe.ptr.null.1249.59 = icmp eq i64 %unsafe.ptr_is_null.i.1248.58, 0
  br i1 %unsafe.ptr.null.1249.59, label %if.then.1250, label %if.else.1251

if.else.1244:
  br label %if.end.1245

if.end.1245:
  %head_slot.gc.slot.1262.69 = bitcast ptr %head_slot.addr.16 to ptr
  %head_slot.1263.70 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %head_slot.gc.slot.1262.69)
  %unsafe.addr.1264.71 = getelementptr i8, ptr %head_slot.1263.70, i64 0
  %unsafe.addr.cast.1265.72 = bitcast ptr %unsafe.addr.1264.71 to ptr
  store ptr null, ptr %unsafe.addr.cast.1265.72, align 1
  %none.1266.73 = load ptr, ptr @py_None
  %tail_slot.gc.slot.1267.74 = bitcast ptr %tail_slot.addr.31 to ptr
  %tail_slot.1268.75 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %tail_slot.gc.slot.1267.74)
  %unsafe.addr.1269.76 = getelementptr i8, ptr %tail_slot.1268.75, i64 0
  %unsafe.addr.cast.1270.77 = bitcast ptr %unsafe.addr.1269.76 to ptr
  store ptr null, ptr %unsafe.addr.cast.1270.77, align 1
  %none.1271.78 = load ptr, ptr @py_None
  %add.1273.80 = add i64 %index.addr.4.phi, 1
  br label %while.latch.1193

if.then.1250:
  store ptr %unsafe.load.ptr.1232.42, ptr @pcc_vthread_ready_head_py
  %none.1254.61 = load ptr, ptr @py_None
  br label %if.end.1252

if.else.1251:
  %unsafe.addr.1256.63 = getelementptr i8, ptr %unsafe.global.load.ptr.1246.55, i64 8
  %unsafe.addr.cast.1257.64 = bitcast ptr %unsafe.addr.1256.63 to ptr
  store ptr %unsafe.load.ptr.1232.42, ptr %unsafe.addr.cast.1257.64, align 1
  %none.1259.66 = load ptr, ptr @py_None
  br label %if.end.1252

if.end.1252:
  store ptr %unsafe.load.ptr.1237.48, ptr @pcc_vthread_ready_tail_py
  %none.1261.68 = load ptr, ptr @py_None
  br label %if.end.1245

head_slot.owned.release.1277:
  %head_slot.release.gc.slot.1279.84 = bitcast ptr %head_slot.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %head_slot.release.gc.slot.1279.84, ptr null)
  br label %head_slot.owned.cont.1278

head_slot.owned.cont.1278:
  br i1 %tail_slot.owned.32.phi, label %tail_slot.owned.release.1281, label %tail_slot.owned.cont.1282

tail_slot.owned.release.1281:
  %tail_slot.release.gc.slot.1283.86 = bitcast ptr %tail_slot.addr.31 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %tail_slot.release.gc.slot.1283.86, ptr null)
  br label %tail_slot.owned.cont.1282

tail_slot.owned.cont.1282:
  %gc.frame.leave.ptr.1284.87 = bitcast ptr %tail_slot.addr.31 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1284.87)
  %gc.frame.leave.ptr.1285.88 = bitcast ptr %head_slot.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1285.88)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__enqueue(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %call.ret.root.1306.19 = alloca ptr
  %node.addr.25 = alloca ptr
  store ptr null, ptr %node.addr.25
  %handle.addr.44 = alloca ptr
  store ptr null, ptr %handle.addr.44
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.1286.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1287.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1286.3, ptr %gc.frame.slots.ptr.1287.4)
  %vthread.gc.slot.1288.5 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1289.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1288.5)
  %unsafe.addr.1290.7 = getelementptr i8, ptr %vthread.1289.6, i64 40
  %unsafe.addr.cast.1291.8 = bitcast ptr %unsafe.addr.1290.7 to ptr
  %unsafe.load.i64.1292.9 = load i64, ptr %unsafe.addr.cast.1291.8, align 1
  %icmp.1293.10 = icmp ne i64 %unsafe.load.i64.1292.9, 0
  %gc.frame.map.ptr.1317.30 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.1318.31 = bitcast ptr %node.addr.25 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1317.30, ptr %gc.frame.slots.ptr.1318.31)
  %gc.frame.map.ptr.1336.45 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1337.46 = bitcast ptr %handle.addr.44 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1336.45, ptr %gc.frame.slots.ptr.1337.46)
  br i1 %icmp.1293.10, label %if.then.1301, label %cond.right.1294

cond.right.1294:
  %vthread.gc.slot.1295.11 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1296.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1295.11)
  %unsafe.addr.1297.13 = getelementptr i8, ptr %vthread.1296.12, i64 32
  %unsafe.addr.cast.1298.14 = bitcast ptr %unsafe.addr.1297.13 to ptr
  %unsafe.load.i64.1299.15 = load i64, ptr %unsafe.addr.cast.1298.14, align 1
  %icmp.1300.16 = icmp ne i64 %unsafe.load.i64.1299.15, 1
  br i1 %icmp.1300.16, label %if.then.1301, label %if.else.1302

if.then.1301:
  %gc.frame.leave.ptr.1304.17 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1304.17)
  %gc.frame.leave.ptr.1319.32 = bitcast ptr %node.addr.25 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1319.32)
  %gc.frame.leave.ptr.1338.47 = bitcast ptr %handle.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1338.47)
  ret i64 0

if.else.1302:
  br label %if.end.1303

if.end.1303:
  %ready_alloc_ret.1305.18 = call ptr () @user_py_virtual_thread_runtime__ready_alloc()
  store ptr null, ptr %call.ret.root.1306.19
  %call.ret.root.ptr.1307.20 = bitcast ptr %call.ret.root.1306.19 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1307.20, ptr %ready_alloc_ret.1305.18)
  %gc.frame.lifo.map.ptr.1308.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1309.22 = bitcast ptr %call.ret.root.1306.19 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1308.21, ptr %gc.frame.lifo.slots.ptr.1309.22)
  %call.ret.current.1310.23 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1307.20)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1307.20, ptr null)
  %gc.frame.lifo.leave.ptr.1311.24 = bitcast ptr %call.ret.root.1306.19 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1311.24)
  br i1 0, label %node.owned.release.1313, label %node.owned.cont.1314

node.owned.release.1313:
  %node.release.gc.slot.1315.28 = bitcast ptr %node.addr.25 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1315.28, ptr null)
  br label %node.owned.cont.1314

node.owned.cont.1314:
  %node.owned.resolve.1316.29 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.1310.23)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.1316.29)
  store ptr %node.owned.resolve.1316.29, ptr %node.addr.25
  %node.gc.slot.1320.33 = bitcast ptr %node.addr.25 to ptr
  %node.1321.34 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1320.33)
  %unsafe.ptr_is_null.i.1322.35 = ptrtoint ptr %node.1321.34 to i64
  %unsafe.ptr.null.1323.36 = icmp eq i64 %unsafe.ptr_is_null.i.1322.35, 0
  br i1 %unsafe.ptr.null.1323.36, label %if.then.1324, label %if.else.1325

if.then.1324:
  br i1 1, label %node.owned.release.1328, label %node.owned.cont.1329

if.else.1325:
  br label %if.end.1326

if.end.1326:
  %node.gc.slot.1333.41 = bitcast ptr %node.addr.25 to ptr
  %node.1334.42 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1333.41)
  %extern.pcc_gc_scheduler_root_register_handle.ret.1335.43 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %node.1334.42)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.1335.43, ptr %handle.addr.44
  %handle.gc.slot.1340.49 = bitcast ptr %handle.addr.44 to ptr
  %handle.1341.50 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1340.49)
  %unsafe.ptr_is_null.i.1342.51 = ptrtoint ptr %handle.1341.50 to i64
  %unsafe.ptr.null.1343.52 = icmp eq i64 %unsafe.ptr_is_null.i.1342.51, 0
  br i1 %unsafe.ptr.null.1343.52, label %if.then.1344, label %if.else.1345

node.owned.release.1328:
  %node.release.gc.slot.1330.38 = bitcast ptr %node.addr.25 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1330.38, ptr null)
  br label %node.owned.cont.1329

node.owned.cont.1329:
  %gc.frame.leave.ptr.1331.39 = bitcast ptr %node.addr.25 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1331.39)
  %gc.frame.leave.ptr.1332.40 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1332.40)
  %gc.frame.leave.ptr.1339.48 = bitcast ptr %handle.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1339.48)
  ret i64 -1

if.then.1344:
  %node.gc.slot.1347.53 = bitcast ptr %node.addr.25 to ptr
  %node.1348.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1347.53)
  call void (ptr) @free(ptr %node.1348.54)
  %none.1349.55 = load ptr, ptr @py_None
  br i1 1, label %node.owned.release.1351, label %node.owned.cont.1352

if.else.1345:
  br label %if.end.1346

if.end.1346:
  %node.gc.slot.1357.61 = bitcast ptr %node.addr.25 to ptr
  %node.1358.62 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1357.61)
  %unsafe.addr.1359.63 = getelementptr i8, ptr %node.1358.62, i64 16
  %unsafe.addr.cast.1360.64 = bitcast ptr %unsafe.addr.1359.63 to ptr
  %handle.gc.slot.1361.65 = bitcast ptr %handle.addr.44 to ptr
  %handle.1362.66 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1361.65)
  store ptr %handle.1362.66, ptr %unsafe.addr.cast.1360.64, align 1
  %none.1363.67 = load ptr, ptr @py_None
  %node.gc.slot.1364.68 = bitcast ptr %node.addr.25 to ptr
  %node.1365.69 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1364.68)
  %vthread.gc.slot.1366.70 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1367.71 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1366.70)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.1365.69, ptr %vthread.1367.71)
  %node.gc.slot.1368.72 = bitcast ptr %node.addr.25 to ptr
  %node.1369.73 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1368.72)
  call void (ptr) @user_py_virtual_thread_runtime__push_ready_node(ptr %node.1369.73)
  %vthread.gc.slot.1370.74 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1371.75 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1370.74)
  %unsafe.addr.1372.76 = getelementptr i8, ptr %vthread.1371.75, i64 40
  %unsafe.addr.cast.1373.77 = bitcast ptr %unsafe.addr.1372.76 to ptr
  store i64 1, ptr %unsafe.addr.cast.1373.77, align 1
  %none.1374.78 = load ptr, ptr @py_None
  %unsafe.global.addr.1375.79 = bitcast ptr @pcc_vthread_ready_count_py to ptr
  %counter_add_ret.1376.80 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.1375.79, i64 1)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 1, i64 0, i64 1, i64 -1)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 3, i64 0, i64 0, i64 1)
  call void () @user_py_virtual_thread_runtime__scheduler_signal()
  br i1 1, label %node.owned.release.1378, label %node.owned.cont.1379

node.owned.release.1351:
  %node.release.gc.slot.1353.57 = bitcast ptr %node.addr.25 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1353.57, ptr null)
  br label %node.owned.cont.1352

node.owned.cont.1352:
  %gc.frame.leave.ptr.1354.58 = bitcast ptr %handle.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1354.58)
  %gc.frame.leave.ptr.1355.59 = bitcast ptr %node.addr.25 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1355.59)
  %gc.frame.leave.ptr.1356.60 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1356.60)
  ret i64 -1

node.owned.release.1378:
  %node.release.gc.slot.1380.82 = bitcast ptr %node.addr.25 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1380.82, ptr null)
  br label %node.owned.cont.1379

node.owned.cont.1379:
  %gc.frame.leave.ptr.1381.83 = bitcast ptr %handle.addr.44 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1381.83)
  %gc.frame.leave.ptr.1382.84 = bitcast ptr %node.addr.25 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1382.84)
  %gc.frame.leave.ptr.1383.85 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1383.85)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__ready_reserve(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %call.ret.root.1387.6 = alloca ptr
  %node.addr.12 = alloca ptr
  store ptr null, ptr %node.addr.12
  %handle.addr.30 = alloca ptr
  store ptr null, ptr %handle.addr.30
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.1384.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1385.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1384.3, ptr %gc.frame.slots.ptr.1385.4)
  %ready_alloc_ret.1386.5 = call ptr () @user_py_virtual_thread_runtime__ready_alloc()
  store ptr null, ptr %call.ret.root.1387.6
  %call.ret.root.ptr.1388.7 = bitcast ptr %call.ret.root.1387.6 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1388.7, ptr %ready_alloc_ret.1386.5)
  %gc.frame.lifo.map.ptr.1389.8 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1390.9 = bitcast ptr %call.ret.root.1387.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1389.8, ptr %gc.frame.lifo.slots.ptr.1390.9)
  %call.ret.current.1391.10 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1388.7)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1388.7, ptr null)
  %gc.frame.lifo.leave.ptr.1392.11 = bitcast ptr %call.ret.root.1387.6 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1392.11)
  %gc.frame.map.ptr.1398.17 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.1399.18 = bitcast ptr %node.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1398.17, ptr %gc.frame.slots.ptr.1399.18)
  %gc.frame.map.ptr.1416.31 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1417.32 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1416.31, ptr %gc.frame.slots.ptr.1417.32)
  br i1 0, label %node.owned.release.1394, label %node.owned.cont.1395

node.owned.release.1394:
  %node.release.gc.slot.1396.15 = bitcast ptr %node.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1396.15, ptr null)
  br label %node.owned.cont.1395

node.owned.cont.1395:
  %node.owned.resolve.1397.16 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.1391.10)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.1397.16)
  store ptr %node.owned.resolve.1397.16, ptr %node.addr.12
  %node.gc.slot.1400.19 = bitcast ptr %node.addr.12 to ptr
  %node.1401.20 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1400.19)
  %unsafe.ptr_is_null.i.1402.21 = ptrtoint ptr %node.1401.20 to i64
  %unsafe.ptr.null.1403.22 = icmp eq i64 %unsafe.ptr_is_null.i.1402.21, 0
  br i1 %unsafe.ptr.null.1403.22, label %if.then.1404, label %if.else.1405

if.then.1404:
  br i1 1, label %node.owned.release.1408, label %node.owned.cont.1409

if.else.1405:
  br label %if.end.1406

if.end.1406:
  %node.gc.slot.1413.27 = bitcast ptr %node.addr.12 to ptr
  %node.1414.28 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1413.27)
  %extern.pcc_gc_scheduler_root_register_handle.ret.1415.29 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %node.1414.28)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.1415.29, ptr %handle.addr.30
  %handle.gc.slot.1419.34 = bitcast ptr %handle.addr.30 to ptr
  %handle.1420.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1419.34)
  %unsafe.ptr_is_null.i.1421.36 = ptrtoint ptr %handle.1420.35 to i64
  %unsafe.ptr.null.1422.37 = icmp eq i64 %unsafe.ptr_is_null.i.1421.36, 0
  br i1 %unsafe.ptr.null.1422.37, label %if.then.1423, label %if.else.1424

node.owned.release.1408:
  %node.release.gc.slot.1410.24 = bitcast ptr %node.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1410.24, ptr null)
  br label %node.owned.cont.1409

node.owned.cont.1409:
  %gc.frame.leave.ptr.1411.25 = bitcast ptr %node.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1411.25)
  %gc.frame.leave.ptr.1412.26 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1412.26)
  %gc.frame.leave.ptr.1418.33 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1418.33)
  ret ptr null

if.then.1423:
  %node.gc.slot.1426.38 = bitcast ptr %node.addr.12 to ptr
  %node.1427.39 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1426.38)
  call void (ptr) @user_py_virtual_thread_runtime__ready_release(ptr %node.1427.39)
  br i1 1, label %node.owned.release.1429, label %node.owned.cont.1430

if.else.1424:
  br label %if.end.1425

if.end.1425:
  %node.gc.slot.1435.45 = bitcast ptr %node.addr.12 to ptr
  %node.1436.46 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1435.45)
  %unsafe.addr.1437.47 = getelementptr i8, ptr %node.1436.46, i64 16
  %unsafe.addr.cast.1438.48 = bitcast ptr %unsafe.addr.1437.47 to ptr
  %handle.gc.slot.1439.49 = bitcast ptr %handle.addr.30 to ptr
  %handle.1440.50 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1439.49)
  store ptr %handle.1440.50, ptr %unsafe.addr.cast.1438.48, align 1
  %none.1441.51 = load ptr, ptr @py_None
  %node.gc.slot.1442.52 = bitcast ptr %node.addr.12 to ptr
  %node.1443.53 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1442.52)
  %vthread.gc.slot.1444.54 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1445.55 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1444.54)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.1443.53, ptr %vthread.1445.55)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 1, i64 0, i64 1, i64 -1)
  %node.gc.slot.1446.56 = bitcast ptr %node.addr.12 to ptr
  %node.1447.57 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1446.56)
  br i1 1, label %ret.local.ready.1450, label %ret.local.borrowed.1449

node.owned.release.1429:
  %node.release.gc.slot.1431.41 = bitcast ptr %node.addr.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1431.41, ptr null)
  br label %node.owned.cont.1430

node.owned.cont.1430:
  %gc.frame.leave.ptr.1432.42 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1432.42)
  %gc.frame.leave.ptr.1433.43 = bitcast ptr %node.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1433.43)
  %gc.frame.leave.ptr.1434.44 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1434.44)
  ret ptr null

ret.local.borrowed.1449:
  %ret.local.retain.1451.59 = call ptr (ptr) @pcc_gc_retain(ptr %node.1447.57)
  br label %ret.local.ready.1450

ret.local.ready.1450:
  %ret.local.value.1452.60 = phi ptr [%node.1447.57, %if.end.1425], [%ret.local.retain.1451.59, %ret.local.borrowed.1449]
  %ret.tmp.root.1453.61 = alloca ptr
  store ptr null, ptr %ret.tmp.root.1453.61
  %ret.tmp.root.ptr.1454.62 = bitcast ptr %ret.tmp.root.1453.61 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.1454.62, ptr %ret.local.value.1452.60)
  %gc.frame.lifo.map.ptr.1455.63 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1456.64 = bitcast ptr %ret.tmp.root.1453.61 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1455.63, ptr %gc.frame.lifo.slots.ptr.1456.64)
  %gc.frame.leave.ptr.1457.65 = bitcast ptr %handle.addr.30 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1457.65)
  %gc.frame.leave.ptr.1458.66 = bitcast ptr %node.addr.12 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1458.66)
  %gc.frame.leave.ptr.1459.67 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1459.67)
  %ret.tmp.current.1460.68 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.1454.62)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.1454.62, ptr null)
  %gc.frame.lifo.leave.ptr.1461.69 = bitcast ptr %ret.tmp.root.1453.61 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1461.69)
  ret ptr %ret.tmp.current.1460.68
}
define external void @user_py_virtual_thread_runtime__ready_commit(ptr %vthread, ptr %node) "no-builtins" {
entry:
  %vthread.addr.3 = alloca ptr
  %node.addr.6 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.3
  %gc.frame.map.ptr.1462.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1463.5 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1462.4, ptr %gc.frame.slots.ptr.1463.5)
  store ptr %node, ptr %node.addr.6
  %gc.frame.map.ptr.1464.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1465.8 = bitcast ptr %node.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1464.7, ptr %gc.frame.slots.ptr.1465.8)
  %vthread.gc.slot.1466.9 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.1467.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1466.9)
  %unsafe.addr.1468.11 = getelementptr i8, ptr %vthread.1467.10, i64 32
  %unsafe.addr.cast.1469.12 = bitcast ptr %unsafe.addr.1468.11 to ptr
  store i64 1, ptr %unsafe.addr.cast.1469.12, align 1
  %none.1470.13 = load ptr, ptr @py_None
  %vthread.gc.slot.1471.14 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.1472.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1471.14)
  %unsafe.addr.1473.16 = getelementptr i8, ptr %vthread.1472.15, i64 120
  %unsafe.addr.cast.1474.17 = bitcast ptr %unsafe.addr.1473.16 to ptr
  store i64 0, ptr %unsafe.addr.cast.1474.17, align 1
  %none.1475.18 = load ptr, ptr @py_None
  %node.gc.slot.1476.19 = bitcast ptr %node.addr.6 to ptr
  %node.1477.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.1476.19)
  call void (ptr) @user_py_virtual_thread_runtime__push_ready_node(ptr %node.1477.20)
  %vthread.gc.slot.1478.21 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.1479.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1478.21)
  %unsafe.addr.1480.23 = getelementptr i8, ptr %vthread.1479.22, i64 40
  %unsafe.addr.cast.1481.24 = bitcast ptr %unsafe.addr.1480.23 to ptr
  store i64 1, ptr %unsafe.addr.cast.1481.24, align 1
  %none.1482.25 = load ptr, ptr @py_None
  %unsafe.global.addr.1483.26 = bitcast ptr @pcc_vthread_ready_count_py to ptr
  %counter_add_ret.1484.27 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.1483.26, i64 1)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 3, i64 0, i64 0, i64 1)
  call void () @user_py_virtual_thread_runtime__scheduler_signal()
  %gc.frame.leave.ptr.1485.28 = bitcast ptr %node.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1485.28)
  %gc.frame.leave.ptr.1486.29 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1486.29)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__make_ready(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.1487.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1488.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1487.3, ptr %gc.frame.slots.ptr.1488.4)
  %vthread.gc.slot.1489.5 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1490.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1489.5)
  %unsafe.ptr_is_null.i.1491.7 = ptrtoint ptr %vthread.1490.6 to i64
  %unsafe.ptr.null.1492.8 = icmp eq i64 %unsafe.ptr_is_null.i.1491.7, 0
  br i1 %unsafe.ptr.null.1492.8, label %if.then.1500, label %cond.right.1493

cond.right.1493:
  %vthread.gc.slot.1494.9 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1495.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1494.9)
  %unsafe.addr.1496.11 = getelementptr i8, ptr %vthread.1495.10, i64 32
  %unsafe.addr.cast.1497.12 = bitcast ptr %unsafe.addr.1496.11 to ptr
  %unsafe.load.i64.1498.13 = load i64, ptr %unsafe.addr.cast.1497.12, align 1
  %icmp.1499.14 = icmp eq i64 %unsafe.load.i64.1498.13, 4
  br i1 %icmp.1499.14, label %if.then.1500, label %if.else.1501

if.then.1500:
  %gc.frame.leave.ptr.1503.15 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1503.15)
  ret i64 0

if.else.1501:
  br label %if.end.1502

if.end.1502:
  %vthread.gc.slot.1504.16 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1505.17 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1504.16)
  %unsafe.addr.1506.18 = getelementptr i8, ptr %vthread.1505.17, i64 32
  %unsafe.addr.cast.1507.19 = bitcast ptr %unsafe.addr.1506.18 to ptr
  store i64 1, ptr %unsafe.addr.cast.1507.19, align 1
  %none.1508.20 = load ptr, ptr @py_None
  %vthread.gc.slot.1509.21 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.1510.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.1509.21)
  %enqueue_ret.1511.23 = call i64 (ptr) @user_py_virtual_thread_runtime__enqueue(ptr %vthread.1510.22)
  %gc.frame.leave.ptr.1512.24 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1512.24)
  ret i64 %enqueue_ret.1511.23
}
define external i64 @user_py_virtual_thread_runtime__join_enqueue(ptr %target, ptr %waiter) "no-builtins" {
entry:
  %target.addr.3 = alloca ptr
  %waiter.addr.6 = alloca ptr
  %call.ret.root.1518.10 = alloca ptr
  %node.addr.16 = alloca ptr
  store ptr null, ptr %node.addr.16
  %handle.addr.35 = alloca ptr
  store ptr null, ptr %handle.addr.35
  store ptr %target, ptr %target.addr.3
  %gc.frame.map.ptr.1513.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1514.5 = bitcast ptr %target.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1513.4, ptr %gc.frame.slots.ptr.1514.5)
  store ptr %waiter, ptr %waiter.addr.6
  %gc.frame.map.ptr.1515.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1516.8 = bitcast ptr %waiter.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1515.7, ptr %gc.frame.slots.ptr.1516.8)
  %join_alloc_ret.1517.9 = call ptr () @user_py_virtual_thread_runtime__join_alloc()
  store ptr null, ptr %call.ret.root.1518.10
  %call.ret.root.ptr.1519.11 = bitcast ptr %call.ret.root.1518.10 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1519.11, ptr %join_alloc_ret.1517.9)
  %gc.frame.lifo.map.ptr.1520.12 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.1521.13 = bitcast ptr %call.ret.root.1518.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.1520.12, ptr %gc.frame.lifo.slots.ptr.1521.13)
  %call.ret.current.1522.14 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.1519.11)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.1519.11, ptr null)
  %gc.frame.lifo.leave.ptr.1523.15 = bitcast ptr %call.ret.root.1518.10 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.1523.15)
  %gc.frame.map.ptr.1529.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.1530.22 = bitcast ptr %node.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1529.21, ptr %gc.frame.slots.ptr.1530.22)
  %gc.frame.map.ptr.1548.36 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.1549.37 = bitcast ptr %handle.addr.35 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.1548.36, ptr %gc.frame.slots.ptr.1549.37)
  br i1 0, label %node.owned.release.1525, label %node.owned.cont.1526

node.owned.release.1525:
  %node.release.gc.slot.1527.19 = bitcast ptr %node.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1527.19, ptr null)
  br label %node.owned.cont.1526

node.owned.cont.1526:
  %node.owned.resolve.1528.20 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.1522.14)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.1528.20)
  store ptr %node.owned.resolve.1528.20, ptr %node.addr.16
  %node.gc.slot.1531.23 = bitcast ptr %node.addr.16 to ptr
  %node.1532.24 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1531.23)
  %unsafe.ptr_is_null.i.1533.25 = ptrtoint ptr %node.1532.24 to i64
  %unsafe.ptr.null.1534.26 = icmp eq i64 %unsafe.ptr_is_null.i.1533.25, 0
  br i1 %unsafe.ptr.null.1534.26, label %if.then.1535, label %if.else.1536

if.then.1535:
  br i1 1, label %node.owned.release.1539, label %node.owned.cont.1540

if.else.1536:
  br label %if.end.1537

if.end.1537:
  %node.gc.slot.1545.32 = bitcast ptr %node.addr.16 to ptr
  %node.1546.33 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1545.32)
  %extern.pcc_gc_scheduler_root_register_handle.ret.1547.34 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %node.1546.33)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.1547.34, ptr %handle.addr.35
  %handle.gc.slot.1551.39 = bitcast ptr %handle.addr.35 to ptr
  %handle.1552.40 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1551.39)
  %unsafe.ptr_is_null.i.1553.41 = ptrtoint ptr %handle.1552.40 to i64
  %unsafe.ptr.null.1554.42 = icmp eq i64 %unsafe.ptr_is_null.i.1553.41, 0
  br i1 %unsafe.ptr.null.1554.42, label %if.then.1555, label %if.else.1556

node.owned.release.1539:
  %node.release.gc.slot.1541.28 = bitcast ptr %node.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1541.28, ptr null)
  br label %node.owned.cont.1540

node.owned.cont.1540:
  %gc.frame.leave.ptr.1542.29 = bitcast ptr %node.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1542.29)
  %gc.frame.leave.ptr.1543.30 = bitcast ptr %waiter.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1543.30)
  %gc.frame.leave.ptr.1544.31 = bitcast ptr %target.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1544.31)
  %gc.frame.leave.ptr.1550.38 = bitcast ptr %handle.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1550.38)
  ret i64 -1

if.then.1555:
  %node.gc.slot.1558.43 = bitcast ptr %node.addr.16 to ptr
  %node.1559.44 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1558.43)
  call void (ptr) @user_py_virtual_thread_runtime__join_release(ptr %node.1559.44)
  br i1 1, label %node.owned.release.1561, label %node.owned.cont.1562

if.else.1556:
  br label %if.end.1557

if.end.1557:
  %node.gc.slot.1568.51 = bitcast ptr %node.addr.16 to ptr
  %node.1569.52 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1568.51)
  %unsafe.addr.1570.53 = getelementptr i8, ptr %node.1569.52, i64 16
  %unsafe.addr.cast.1571.54 = bitcast ptr %unsafe.addr.1570.53 to ptr
  %handle.gc.slot.1572.55 = bitcast ptr %handle.addr.35 to ptr
  %handle.1573.56 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.1572.55)
  store ptr %handle.1573.56, ptr %unsafe.addr.cast.1571.54, align 1
  %none.1574.57 = load ptr, ptr @py_None
  call void () @pcc_vthread_effect_note_waiter_root_enter()
  %node.gc.slot.1575.58 = bitcast ptr %node.addr.16 to ptr
  %node.1576.59 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1575.58)
  %waiter.gc.slot.1577.60 = bitcast ptr %waiter.addr.6 to ptr
  %waiter.1578.61 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %waiter.gc.slot.1577.60)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.1576.59, ptr %waiter.1578.61)
  %target.gc.slot.1579.62 = bitcast ptr %target.addr.3 to ptr
  %target.1580.63 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %target.gc.slot.1579.62)
  %unsafe.addr.1581.64 = getelementptr i8, ptr %target.1580.63, i64 96
  %unsafe.addr.cast.1582.65 = bitcast ptr %unsafe.addr.1581.64 to ptr
  %unsafe.load.ptr.1583.66 = load ptr, ptr %unsafe.addr.cast.1582.65, align 1
  %unsafe.ptr_is_null.i.1585.69 = ptrtoint ptr %unsafe.load.ptr.1583.66 to i64
  %unsafe.ptr.null.1586.70 = icmp eq i64 %unsafe.ptr_is_null.i.1585.69, 0
  br i1 %unsafe.ptr.null.1586.70, label %if.then.1587, label %if.else.1588

node.owned.release.1561:
  %node.release.gc.slot.1563.46 = bitcast ptr %node.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1563.46, ptr null)
  br label %node.owned.cont.1562

node.owned.cont.1562:
  %gc.frame.leave.ptr.1564.47 = bitcast ptr %handle.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1564.47)
  %gc.frame.leave.ptr.1565.48 = bitcast ptr %node.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1565.48)
  %gc.frame.leave.ptr.1566.49 = bitcast ptr %waiter.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1566.49)
  %gc.frame.leave.ptr.1567.50 = bitcast ptr %target.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1567.50)
  ret i64 -1

if.then.1587:
  %target.gc.slot.1590.71 = bitcast ptr %target.addr.3 to ptr
  %target.1591.72 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %target.gc.slot.1590.71)
  %unsafe.addr.1592.73 = getelementptr i8, ptr %target.1591.72, i64 88
  %unsafe.addr.cast.1593.74 = bitcast ptr %unsafe.addr.1592.73 to ptr
  %node.gc.slot.1594.75 = bitcast ptr %node.addr.16 to ptr
  %node.1595.76 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1594.75)
  store ptr %node.1595.76, ptr %unsafe.addr.cast.1593.74, align 1
  %none.1596.77 = load ptr, ptr @py_None
  br label %if.end.1589

if.else.1588:
  %unsafe.addr.1598.79 = getelementptr i8, ptr %unsafe.load.ptr.1583.66, i64 8
  %unsafe.addr.cast.1599.80 = bitcast ptr %unsafe.addr.1598.79 to ptr
  %node.gc.slot.1600.81 = bitcast ptr %node.addr.16 to ptr
  %node.1601.82 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1600.81)
  store ptr %node.1601.82, ptr %unsafe.addr.cast.1599.80, align 1
  %none.1602.83 = load ptr, ptr @py_None
  br label %if.end.1589

if.end.1589:
  %target.gc.slot.1603.84 = bitcast ptr %target.addr.3 to ptr
  %target.1604.85 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %target.gc.slot.1603.84)
  %unsafe.addr.1605.86 = getelementptr i8, ptr %target.1604.85, i64 96
  %unsafe.addr.cast.1606.87 = bitcast ptr %unsafe.addr.1605.86 to ptr
  %node.gc.slot.1607.88 = bitcast ptr %node.addr.16 to ptr
  %node.1608.89 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1607.88)
  store ptr %node.1608.89, ptr %unsafe.addr.cast.1606.87, align 1
  %none.1609.90 = load ptr, ptr @py_None
  %waiter.gc.slot.1610.91 = bitcast ptr %waiter.addr.6 to ptr
  %waiter.1611.92 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %waiter.gc.slot.1610.91)
  %unsafe.addr.1612.93 = getelementptr i8, ptr %waiter.1611.92, i64 104
  %unsafe.addr.cast.1613.94 = bitcast ptr %unsafe.addr.1612.93 to ptr
  %node.gc.slot.1614.95 = bitcast ptr %node.addr.16 to ptr
  %node.1615.96 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.1614.95)
  store ptr %node.1615.96, ptr %unsafe.addr.cast.1613.94, align 1
  %none.1616.97 = load ptr, ptr @py_None
  %waiter.gc.slot.1617.98 = bitcast ptr %waiter.addr.6 to ptr
  %waiter.1618.99 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %waiter.gc.slot.1617.98)
  %unsafe.addr.1619.100 = getelementptr i8, ptr %waiter.1618.99, i64 120
  %unsafe.addr.cast.1620.101 = bitcast ptr %unsafe.addr.1619.100 to ptr
  store i64 4, ptr %unsafe.addr.cast.1620.101, align 1
  %none.1621.102 = load ptr, ptr @py_None
  %waiter.gc.slot.1622.103 = bitcast ptr %waiter.addr.6 to ptr
  %waiter.1623.104 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %waiter.gc.slot.1622.103)
  %unsafe.addr.1624.105 = getelementptr i8, ptr %waiter.1623.104, i64 40
  %unsafe.addr.cast.1625.106 = bitcast ptr %unsafe.addr.1624.105 to ptr
  store i64 0, ptr %unsafe.addr.cast.1625.106, align 1
  %none.1626.107 = load ptr, ptr @py_None
  %waiter.gc.slot.1627.108 = bitcast ptr %waiter.addr.6 to ptr
  %waiter.1628.109 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %waiter.gc.slot.1627.108)
  %unsafe.addr.1629.110 = getelementptr i8, ptr %waiter.1628.109, i64 32
  %unsafe.addr.cast.1630.111 = bitcast ptr %unsafe.addr.1629.110 to ptr
  store i64 3, ptr %unsafe.addr.cast.1630.111, align 1
  %none.1631.112 = load ptr, ptr @py_None
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 5, i64 1, i64 0, i64 3)
  br i1 1, label %node.owned.release.1633, label %node.owned.cont.1634

node.owned.release.1633:
  %node.release.gc.slot.1635.114 = bitcast ptr %node.addr.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.1635.114, ptr null)
  br label %node.owned.cont.1634

node.owned.cont.1634:
  %gc.frame.leave.ptr.1636.115 = bitcast ptr %handle.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1636.115)
  %gc.frame.leave.ptr.1637.116 = bitcast ptr %node.addr.16 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1637.116)
  %gc.frame.leave.ptr.1638.117 = bitcast ptr %waiter.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1638.117)
  %gc.frame.leave.ptr.1639.118 = bitcast ptr %target.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.1639.118)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__join_wake_all(ptr %target) "no-builtins" {
strict.nolib.stub:
  %.166 = getelementptr inbounds [76 x i8], ptr @.strict.nolib.msg.3, i32 0, i32 0
  %strict.nolib.exc.1840.167 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.166)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.1840.167)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.1840.167)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__join_unlink_waiter(ptr %waiter) "no-builtins" {
strict.nolib.stub:
  %.170 = getelementptr inbounds [81 x i8], ptr @.strict.nolib.msg.4, i32 0, i32 0
  %strict.nolib.exc.2038.171 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.170)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.2038.171)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.2038.171)
  ret ptr null
}
define external void @user_py_virtual_thread_runtime__channel_queue_push(ptr %core, i64 %head_offset, i64 %tail_offset, ptr %arm) "no-builtins" {
entry:
  %core.addr.5 = alloca ptr
  %arm.addr.10 = alloca ptr
  store ptr %core, ptr %core.addr.5
  %gc.frame.map.ptr.2039.6 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2040.7 = bitcast ptr %core.addr.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2039.6, ptr %gc.frame.slots.ptr.2040.7)
  store ptr %arm, ptr %arm.addr.10
  %gc.frame.map.ptr.2041.11 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2042.12 = bitcast ptr %arm.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2041.11, ptr %gc.frame.slots.ptr.2042.12)
  %core.gc.slot.2043.13 = bitcast ptr %core.addr.5 to ptr
  %core.2044.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2043.13)
  %unsafe.addr.2046.16 = getelementptr i8, ptr %core.2044.14, i64 %tail_offset
  %unsafe.addr.cast.2047.17 = bitcast ptr %unsafe.addr.2046.16 to ptr
  %unsafe.load.ptr.2048.18 = load ptr, ptr %unsafe.addr.cast.2047.17, align 1
  %arm.gc.slot.2049.20 = bitcast ptr %arm.addr.10 to ptr
  %arm.2050.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2049.20)
  %unsafe.addr.2051.22 = getelementptr i8, ptr %arm.2050.21, i64 0
  %unsafe.addr.cast.2052.23 = bitcast ptr %unsafe.addr.2051.22 to ptr
  store ptr null, ptr %unsafe.addr.cast.2052.23, align 1
  %none.2053.24 = load ptr, ptr @py_None
  %arm.gc.slot.2054.25 = bitcast ptr %arm.addr.10 to ptr
  %arm.2055.26 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2054.25)
  %unsafe.addr.2056.27 = getelementptr i8, ptr %arm.2055.26, i64 8
  %unsafe.addr.cast.2057.28 = bitcast ptr %unsafe.addr.2056.27 to ptr
  store ptr %unsafe.load.ptr.2048.18, ptr %unsafe.addr.cast.2057.28, align 1
  %none.2059.30 = load ptr, ptr @py_None
  %unsafe.ptr_is_null.i.2061.32 = ptrtoint ptr %unsafe.load.ptr.2048.18 to i64
  %unsafe.ptr.null.2062.33 = icmp eq i64 %unsafe.ptr_is_null.i.2061.32, 0
  br i1 %unsafe.ptr.null.2062.33, label %if.then.2063, label %if.else.2064

if.then.2063:
  %core.gc.slot.2066.34 = bitcast ptr %core.addr.5 to ptr
  %core.2067.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2066.34)
  %unsafe.addr.2069.37 = getelementptr i8, ptr %core.2067.35, i64 %head_offset
  %unsafe.addr.cast.2070.38 = bitcast ptr %unsafe.addr.2069.37 to ptr
  %arm.gc.slot.2071.39 = bitcast ptr %arm.addr.10 to ptr
  %arm.2072.40 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2071.39)
  store ptr %arm.2072.40, ptr %unsafe.addr.cast.2070.38, align 1
  %none.2073.41 = load ptr, ptr @py_None
  br label %if.end.2065

if.else.2064:
  %unsafe.addr.2075.43 = getelementptr i8, ptr %unsafe.load.ptr.2048.18, i64 0
  %unsafe.addr.cast.2076.44 = bitcast ptr %unsafe.addr.2075.43 to ptr
  %arm.gc.slot.2077.45 = bitcast ptr %arm.addr.10 to ptr
  %arm.2078.46 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2077.45)
  store ptr %arm.2078.46, ptr %unsafe.addr.cast.2076.44, align 1
  %none.2079.47 = load ptr, ptr @py_None
  br label %if.end.2065

if.end.2065:
  %core.gc.slot.2080.48 = bitcast ptr %core.addr.5 to ptr
  %core.2081.49 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2080.48)
  %unsafe.addr.2083.51 = getelementptr i8, ptr %core.2081.49, i64 %tail_offset
  %unsafe.addr.cast.2084.52 = bitcast ptr %unsafe.addr.2083.51 to ptr
  %arm.gc.slot.2085.53 = bitcast ptr %arm.addr.10 to ptr
  %arm.2086.54 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2085.53)
  store ptr %arm.2086.54, ptr %unsafe.addr.cast.2084.52, align 1
  %none.2087.55 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2088.56 = bitcast ptr %arm.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2088.56)
  %gc.frame.leave.ptr.2089.57 = bitcast ptr %core.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2089.57)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__channel_queue_unlink(ptr %core, i64 %tail_offset, ptr %arm) "no-builtins" {
entry:
  %core.addr.4 = alloca ptr
  %arm.addr.8 = alloca ptr
  store ptr %core, ptr %core.addr.4
  %gc.frame.map.ptr.2090.5 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2091.6 = bitcast ptr %core.addr.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2090.5, ptr %gc.frame.slots.ptr.2091.6)
  store ptr %arm, ptr %arm.addr.8
  %gc.frame.map.ptr.2092.9 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2093.10 = bitcast ptr %arm.addr.8 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2092.9, ptr %gc.frame.slots.ptr.2093.10)
  %arm.gc.slot.2094.11 = bitcast ptr %arm.addr.8 to ptr
  %arm.2095.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2094.11)
  %unsafe.addr.2096.13 = getelementptr i8, ptr %arm.2095.12, i64 8
  %unsafe.addr.cast.2097.14 = bitcast ptr %unsafe.addr.2096.13 to ptr
  %unsafe.load.ptr.2098.15 = load ptr, ptr %unsafe.addr.cast.2097.14, align 1
  %arm.gc.slot.2099.17 = bitcast ptr %arm.addr.8 to ptr
  %arm.2100.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2099.17)
  %unsafe.addr.2101.19 = getelementptr i8, ptr %arm.2100.18, i64 0
  %unsafe.addr.cast.2102.20 = bitcast ptr %unsafe.addr.2101.19 to ptr
  %unsafe.load.ptr.2103.21 = load ptr, ptr %unsafe.addr.cast.2102.20, align 1
  %unsafe.ptr_is_null.i.2105.24 = ptrtoint ptr %unsafe.load.ptr.2098.15 to i64
  %unsafe.ptr.null.2106.25 = icmp eq i64 %unsafe.ptr_is_null.i.2105.24, 0
  br i1 %unsafe.ptr.null.2106.25, label %if.then.2107, label %if.else.2108

if.then.2107:
  %core.gc.slot.2110.26 = bitcast ptr %core.addr.4 to ptr
  %core.2111.27 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2110.26)
  %sub.2113.29 = sub i64 %tail_offset, 8
  %unsafe.addr.2114.30 = getelementptr i8, ptr %core.2111.27, i64 %sub.2113.29
  %unsafe.addr.cast.2115.31 = bitcast ptr %unsafe.addr.2114.30 to ptr
  %unsafe.load.ptr.2116.32 = load ptr, ptr %unsafe.addr.cast.2115.31, align 1
  %unsafe.ptr.eq.l.2117.33 = ptrtoint ptr %unsafe.load.ptr.2116.32 to i64
  %arm.gc.slot.2118.34 = bitcast ptr %arm.addr.8 to ptr
  %arm.2119.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2118.34)
  %unsafe.ptr.eq.r.2120.36 = ptrtoint ptr %arm.2119.35 to i64
  %unsafe.ptr.eq.2121.37 = icmp eq i64 %unsafe.ptr.eq.l.2117.33, %unsafe.ptr.eq.r.2120.36
  %b2i64.2122.38 = zext i1 %unsafe.ptr.eq.2121.37 to i64
  %icmp.2123.39 = icmp eq i64 %b2i64.2122.38, 0
  br i1 %icmp.2123.39, label %if.then.2124, label %if.else.2125

if.else.2108:
  %unsafe.addr.2138.51 = getelementptr i8, ptr %unsafe.load.ptr.2098.15, i64 0
  %unsafe.addr.cast.2139.52 = bitcast ptr %unsafe.addr.2138.51 to ptr
  %unsafe.load.ptr.2140.53 = load ptr, ptr %unsafe.addr.cast.2139.52, align 1
  %unsafe.ptr.eq.l.2141.54 = ptrtoint ptr %unsafe.load.ptr.2140.53 to i64
  %arm.gc.slot.2142.55 = bitcast ptr %arm.addr.8 to ptr
  %arm.2143.56 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2142.55)
  %unsafe.ptr.eq.r.2144.57 = ptrtoint ptr %arm.2143.56 to i64
  %unsafe.ptr.eq.2145.58 = icmp eq i64 %unsafe.ptr.eq.l.2141.54, %unsafe.ptr.eq.r.2144.57
  %b2i64.2146.59 = zext i1 %unsafe.ptr.eq.2145.58 to i64
  %icmp.2147.60 = icmp eq i64 %b2i64.2146.59, 0
  br i1 %icmp.2147.60, label %if.then.2148, label %if.else.2149

if.end.2109:
  %unsafe.ptr_is_null.i.2159.69 = ptrtoint ptr %unsafe.load.ptr.2103.21 to i64
  %unsafe.ptr.null.2160.70 = icmp eq i64 %unsafe.ptr_is_null.i.2159.69, 0
  br i1 %unsafe.ptr.null.2160.70, label %if.then.2161, label %if.else.2162

if.then.2124:
  %gc.frame.leave.ptr.2127.40 = bitcast ptr %arm.addr.8 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2127.40)
  %gc.frame.leave.ptr.2128.41 = bitcast ptr %core.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2128.41)
  ret i64 0

if.else.2125:
  br label %if.end.2126

if.end.2126:
  %core.gc.slot.2129.42 = bitcast ptr %core.addr.4 to ptr
  %core.2130.43 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2129.42)
  %sub.2132.45 = sub i64 %tail_offset, 8
  %unsafe.addr.2133.46 = getelementptr i8, ptr %core.2130.43, i64 %sub.2132.45
  %unsafe.addr.cast.2134.47 = bitcast ptr %unsafe.addr.2133.46 to ptr
  store ptr %unsafe.load.ptr.2103.21, ptr %unsafe.addr.cast.2134.47, align 1
  %none.2136.49 = load ptr, ptr @py_None
  br label %if.end.2109

if.then.2148:
  %gc.frame.leave.ptr.2151.61 = bitcast ptr %arm.addr.8 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2151.61)
  %gc.frame.leave.ptr.2152.62 = bitcast ptr %core.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2152.62)
  ret i64 0

if.else.2149:
  br label %if.end.2150

if.end.2150:
  %unsafe.addr.2154.64 = getelementptr i8, ptr %unsafe.load.ptr.2098.15, i64 0
  %unsafe.addr.cast.2155.65 = bitcast ptr %unsafe.addr.2154.64 to ptr
  store ptr %unsafe.load.ptr.2103.21, ptr %unsafe.addr.cast.2155.65, align 1
  %none.2157.67 = load ptr, ptr @py_None
  br label %if.end.2109

if.then.2161:
  %core.gc.slot.2164.71 = bitcast ptr %core.addr.4 to ptr
  %core.2165.72 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2164.71)
  %unsafe.addr.2167.74 = getelementptr i8, ptr %core.2165.72, i64 %tail_offset
  %unsafe.addr.cast.2168.75 = bitcast ptr %unsafe.addr.2167.74 to ptr
  store ptr %unsafe.load.ptr.2098.15, ptr %unsafe.addr.cast.2168.75, align 1
  %none.2170.77 = load ptr, ptr @py_None
  br label %if.end.2163

if.else.2162:
  %unsafe.addr.2172.79 = getelementptr i8, ptr %unsafe.load.ptr.2103.21, i64 8
  %unsafe.addr.cast.2173.80 = bitcast ptr %unsafe.addr.2172.79 to ptr
  store ptr %unsafe.load.ptr.2098.15, ptr %unsafe.addr.cast.2173.80, align 1
  %none.2175.82 = load ptr, ptr @py_None
  br label %if.end.2163

if.end.2163:
  %arm.gc.slot.2176.83 = bitcast ptr %arm.addr.8 to ptr
  %arm.2177.84 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2176.83)
  %unsafe.addr.2178.85 = getelementptr i8, ptr %arm.2177.84, i64 0
  %unsafe.addr.cast.2179.86 = bitcast ptr %unsafe.addr.2178.85 to ptr
  store ptr null, ptr %unsafe.addr.cast.2179.86, align 1
  %none.2180.87 = load ptr, ptr @py_None
  %arm.gc.slot.2181.88 = bitcast ptr %arm.addr.8 to ptr
  %arm.2182.89 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2181.88)
  %unsafe.addr.2183.90 = getelementptr i8, ptr %arm.2182.89, i64 8
  %unsafe.addr.cast.2184.91 = bitcast ptr %unsafe.addr.2183.90 to ptr
  store ptr null, ptr %unsafe.addr.cast.2184.91, align 1
  %none.2185.92 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2186.93 = bitcast ptr %arm.addr.8 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2186.93)
  %gc.frame.leave.ptr.2187.94 = bitcast ptr %core.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2187.94)
  ret i64 1
}
define external ptr @user_py_virtual_thread_runtime__channel_queue_pop(ptr %core, i64 %head_offset, i64 %tail_offset) "no-builtins" {
entry:
  %core.addr.4 = alloca ptr
  store ptr %core, ptr %core.addr.4
  %gc.frame.map.ptr.2188.5 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2189.6 = bitcast ptr %core.addr.4 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2188.5, ptr %gc.frame.slots.ptr.2189.6)
  %core.gc.slot.2190.9 = bitcast ptr %core.addr.4 to ptr
  %core.2191.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2190.9)
  %unsafe.addr.2193.12 = getelementptr i8, ptr %core.2191.10, i64 %head_offset
  %unsafe.addr.cast.2194.13 = bitcast ptr %unsafe.addr.2193.12 to ptr
  %unsafe.load.ptr.2195.14 = load ptr, ptr %unsafe.addr.cast.2194.13, align 1
  %unsafe.ptr_is_null.i.2197.17 = ptrtoint ptr %unsafe.load.ptr.2195.14 to i64
  %unsafe.ptr.null.2198.18 = icmp eq i64 %unsafe.ptr_is_null.i.2197.17, 0
  br i1 %unsafe.ptr.null.2198.18, label %if.then.2199, label %if.else.2200

if.then.2199:
  %gc.frame.leave.ptr.2202.19 = bitcast ptr %core.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2202.19)
  ret ptr null

if.else.2200:
  br label %if.end.2201

if.end.2201:
  %core.gc.slot.2203.20 = bitcast ptr %core.addr.4 to ptr
  %core.2204.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2203.20)
  %channel_queue_unlink_ret.2207.24 = call i64 (ptr, i64, ptr) @user_py_virtual_thread_runtime__channel_queue_unlink(ptr %core.2204.21, i64 %tail_offset, ptr %unsafe.load.ptr.2195.14)
  %ret.retain.2209.26 = call ptr (ptr) @pcc_gc_retain(ptr %unsafe.load.ptr.2195.14)
  %ret.tmp.root.2210.27 = alloca ptr
  store ptr null, ptr %ret.tmp.root.2210.27
  %ret.tmp.root.ptr.2211.28 = bitcast ptr %ret.tmp.root.2210.27 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.2211.28, ptr %ret.retain.2209.26)
  %gc.frame.lifo.map.ptr.2212.29 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.2213.30 = bitcast ptr %ret.tmp.root.2210.27 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.2212.29, ptr %gc.frame.lifo.slots.ptr.2213.30)
  %gc.frame.leave.ptr.2214.31 = bitcast ptr %core.addr.4 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2214.31)
  %ret.tmp.current.2215.32 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.2211.28)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.2211.28, ptr null)
  %gc.frame.lifo.leave.ptr.2216.33 = bitcast ptr %ret.tmp.root.2210.27 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.2216.33)
  ret ptr %ret.tmp.current.2215.32
}
define external ptr @user_py_virtual_thread_runtime__channel_arm_group(ptr %arm) "no-builtins" {
entry:
  %arm.addr.2 = alloca ptr
  store ptr %arm, ptr %arm.addr.2
  %gc.frame.map.ptr.2217.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2218.4 = bitcast ptr %arm.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2217.3, ptr %gc.frame.slots.ptr.2218.4)
  %arm.gc.slot.2219.5 = bitcast ptr %arm.addr.2 to ptr
  %arm.2220.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2219.5)
  %unsafe.addr.2221.7 = getelementptr i8, ptr %arm.2220.6, i64 16
  %unsafe.addr.cast.2222.8 = bitcast ptr %unsafe.addr.2221.7 to ptr
  %unsafe.load.ptr.2223.9 = load ptr, ptr %unsafe.addr.cast.2222.8, align 1
  %gc.frame.leave.ptr.2224.10 = bitcast ptr %arm.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2224.10)
  ret ptr %unsafe.load.ptr.2223.9
}
define external i64 @user_py_virtual_thread_runtime__channel_arm_index(ptr %group, ptr %arm) "no-builtins" {
entry:
  %group.addr.3 = alloca ptr
  %arm.addr.6 = alloca ptr
  store ptr %group, ptr %group.addr.3
  %gc.frame.map.ptr.2225.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2226.5 = bitcast ptr %group.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2225.4, ptr %gc.frame.slots.ptr.2226.5)
  store ptr %arm, ptr %arm.addr.6
  %gc.frame.map.ptr.2227.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2228.8 = bitcast ptr %arm.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2227.7, ptr %gc.frame.slots.ptr.2228.8)
  %arm.gc.slot.2229.9 = bitcast ptr %arm.addr.6 to ptr
  %arm.2230.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %arm.gc.slot.2229.9)
  %unsafe.ptr.eq.l.2231.11 = ptrtoint ptr %arm.2230.10 to i64
  %group.gc.slot.2232.12 = bitcast ptr %group.addr.3 to ptr
  %group.2233.13 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.2232.12)
  %unsafe.ptr.add.2234.14 = getelementptr i8, ptr %group.2233.13, i64 56
  %unsafe.ptr.eq.r.2235.15 = ptrtoint ptr %unsafe.ptr.add.2234.14 to i64
  %unsafe.ptr.eq.2236.16 = icmp eq i64 %unsafe.ptr.eq.l.2231.11, %unsafe.ptr.eq.r.2235.15
  %b2i64.2237.17 = zext i1 %unsafe.ptr.eq.2236.16 to i64
  %icmp.2238.18 = icmp ne i64 %b2i64.2237.17, 0
  br i1 %icmp.2238.18, label %if.then.2239, label %if.else.2240

if.then.2239:
  %gc.frame.leave.ptr.2242.19 = bitcast ptr %arm.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2242.19)
  %gc.frame.leave.ptr.2243.20 = bitcast ptr %group.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2243.20)
  ret i64 1

if.else.2240:
  br label %if.end.2241

if.end.2241:
  %gc.frame.leave.ptr.2244.21 = bitcast ptr %arm.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2244.21)
  %gc.frame.leave.ptr.2245.22 = bitcast ptr %group.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2245.22)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__channel_valid_object(ptr %obj, i64 %kind) "no-builtins" {
strict.nolib.stub:
  %.64 = getelementptr inbounds [83 x i8], ptr @.strict.nolib.msg.5, i32 0, i32 0
  %strict.nolib.exc.2328.65 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.64)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.2328.65)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.2328.65)
  ret ptr null
}
define external ptr @user_py_virtual_thread_runtime__channel_core(ptr %endpoint, i64 %kind) "no-builtins" {
strict.nolib.stub:
  %.52 = getelementptr inbounds [75 x i8], ptr @.strict.nolib.msg.6, i32 0, i32 0
  %strict.nolib.exc.2377.53 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.52)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.2377.53)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.2377.53)
  ret ptr null
}
define external ptr @user_py_virtual_thread_runtime__channel_ring_slot(ptr %core, i64 %index) "no-builtins" {
entry:
  %core.addr.3 = alloca ptr
  store ptr %core, ptr %core.addr.3
  %gc.frame.map.ptr.2378.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2379.5 = bitcast ptr %core.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2378.4, ptr %gc.frame.slots.ptr.2379.5)
  %core.gc.slot.2380.7 = bitcast ptr %core.addr.3 to ptr
  %core.2381.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2380.7)
  %mul.2383.10 = mul i64 %index, 8
  %add.2384.11 = add i64 128, %mul.2383.10
  %unsafe.ptr.add.2385.12 = getelementptr i8, ptr %core.2381.8, i64 %add.2384.11
  %gc.frame.leave.ptr.2386.13 = bitcast ptr %core.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2386.13)
  ret ptr %unsafe.ptr.add.2385.12
}
define external void @user_py_virtual_thread_runtime__channel_ring_push(ptr %core, ptr %value) "no-builtins" {
entry:
  %core.addr.3 = alloca ptr
  %value.addr.6 = alloca ptr
  %call.ret.root.2402.21 = alloca ptr
  store ptr %core, ptr %core.addr.3
  %gc.frame.map.ptr.2387.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2388.5 = bitcast ptr %core.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2387.4, ptr %gc.frame.slots.ptr.2388.5)
  store ptr %value, ptr %value.addr.6
  %gc.frame.map.ptr.2389.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2390.8 = bitcast ptr %value.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2389.7, ptr %gc.frame.slots.ptr.2390.8)
  %core.gc.slot.2391.9 = bitcast ptr %core.addr.3 to ptr
  %core.2392.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2391.9)
  %unsafe.addr.2393.11 = getelementptr i8, ptr %core.2392.10, i64 48
  %unsafe.addr.cast.2394.12 = bitcast ptr %unsafe.addr.2393.11 to ptr
  %unsafe.load.i64.2395.13 = load i64, ptr %unsafe.addr.cast.2394.12, align 1
  %core.gc.slot.2396.15 = bitcast ptr %core.addr.3 to ptr
  %core.2397.16 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2396.15)
  %core.gc.slot.2398.17 = bitcast ptr %core.addr.3 to ptr
  %core.2399.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2398.17)
  %channel_ring_slot_ret.2401.20 = call ptr (ptr, i64) @user_py_virtual_thread_runtime__channel_ring_slot(ptr %core.2399.18, i64 %unsafe.load.i64.2395.13)
  store ptr null, ptr %call.ret.root.2402.21
  %call.ret.root.ptr.2403.22 = bitcast ptr %call.ret.root.2402.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2403.22, ptr %channel_ring_slot_ret.2401.20)
  %gc.frame.lifo.map.ptr.2404.23 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.2405.24 = bitcast ptr %call.ret.root.2402.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.2404.23, ptr %gc.frame.lifo.slots.ptr.2405.24)
  %call.ret.current.2406.25 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.2403.22)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2403.22, ptr null)
  %gc.frame.lifo.leave.ptr.2407.26 = bitcast ptr %call.ret.root.2402.21 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.2407.26)
  %value.gc.slot.2408.27 = bitcast ptr %value.addr.6 to ptr
  %value.2409.28 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.2408.27)
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %core.2397.16, ptr %call.ret.current.2406.25, ptr %value.2409.28)
  %add.2411.30 = add i64 %unsafe.load.i64.2395.13, 1
  %core.gc.slot.2413.32 = bitcast ptr %core.addr.3 to ptr
  %core.2414.33 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2413.32)
  %unsafe.addr.2415.34 = getelementptr i8, ptr %core.2414.33, i64 24
  %unsafe.addr.cast.2416.35 = bitcast ptr %unsafe.addr.2415.34 to ptr
  %unsafe.load.i64.2417.36 = load i64, ptr %unsafe.addr.cast.2416.35, align 1
  %icmp.2418.37 = icmp eq i64 %add.2411.30, %unsafe.load.i64.2417.36
  br i1 %icmp.2418.37, label %if.then.2419, label %if.else.2420

if.then.2419:
  br label %if.end.2421

if.else.2420:
  br label %if.end.2421

if.end.2421:
  %tail.addr.14.phi = phi i64 [ 0, %if.then.2419 ], [ %add.2411.30, %if.else.2420 ]
  %core.gc.slot.2422.38 = bitcast ptr %core.addr.3 to ptr
  %core.2423.39 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2422.38)
  %unsafe.addr.2424.40 = getelementptr i8, ptr %core.2423.39, i64 48
  %unsafe.addr.cast.2425.41 = bitcast ptr %unsafe.addr.2424.40 to ptr
  store i64 %tail.addr.14.phi, ptr %unsafe.addr.cast.2425.41, align 1
  %none.2427.43 = load ptr, ptr @py_None
  %core.gc.slot.2428.44 = bitcast ptr %core.addr.3 to ptr
  %core.2429.45 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2428.44)
  %unsafe.addr.2430.46 = getelementptr i8, ptr %core.2429.45, i64 32
  %unsafe.addr.cast.2431.47 = bitcast ptr %unsafe.addr.2430.46 to ptr
  %core.gc.slot.2432.48 = bitcast ptr %core.addr.3 to ptr
  %core.2433.49 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2432.48)
  %unsafe.addr.2434.50 = getelementptr i8, ptr %core.2433.49, i64 32
  %unsafe.addr.cast.2435.51 = bitcast ptr %unsafe.addr.2434.50 to ptr
  %unsafe.load.i64.2436.52 = load i64, ptr %unsafe.addr.cast.2435.51, align 1
  %add.2437.53 = add i64 %unsafe.load.i64.2436.52, 1
  store i64 %add.2437.53, ptr %unsafe.addr.cast.2431.47, align 1
  %none.2438.54 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2439.55 = bitcast ptr %value.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2439.55)
  %gc.frame.leave.ptr.2440.56 = bitcast ptr %core.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2440.56)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__channel_ring_pop(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  %call.ret.root.2452.15 = alloca ptr
  %slot.addr.21 = alloca ptr
  store ptr null, ptr %slot.addr.21
  %value.addr.33 = alloca ptr
  store ptr null, ptr %value.addr.33
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2441.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2442.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2441.3, ptr %gc.frame.slots.ptr.2442.4)
  %core.gc.slot.2443.5 = bitcast ptr %core.addr.2 to ptr
  %core.2444.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2443.5)
  %unsafe.addr.2445.7 = getelementptr i8, ptr %core.2444.6, i64 40
  %unsafe.addr.cast.2446.8 = bitcast ptr %unsafe.addr.2445.7 to ptr
  %unsafe.load.i64.2447.9 = load i64, ptr %unsafe.addr.cast.2446.8, align 1
  %core.gc.slot.2448.11 = bitcast ptr %core.addr.2 to ptr
  %core.2449.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2448.11)
  %channel_ring_slot_ret.2451.14 = call ptr (ptr, i64) @user_py_virtual_thread_runtime__channel_ring_slot(ptr %core.2449.12, i64 %unsafe.load.i64.2447.9)
  store ptr null, ptr %call.ret.root.2452.15
  %call.ret.root.ptr.2453.16 = bitcast ptr %call.ret.root.2452.15 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2453.16, ptr %channel_ring_slot_ret.2451.14)
  %gc.frame.lifo.map.ptr.2454.17 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.2455.18 = bitcast ptr %call.ret.root.2452.15 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.2454.17, ptr %gc.frame.lifo.slots.ptr.2455.18)
  %call.ret.current.2456.19 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.2453.16)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2453.16, ptr null)
  %gc.frame.lifo.leave.ptr.2457.20 = bitcast ptr %call.ret.root.2452.15 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.2457.20)
  %gc.frame.map.ptr.2463.26 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.2464.27 = bitcast ptr %slot.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2463.26, ptr %gc.frame.slots.ptr.2464.27)
  %gc.frame.map.ptr.2470.34 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2471.35 = bitcast ptr %value.addr.33 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2470.34, ptr %gc.frame.slots.ptr.2471.35)
  br i1 0, label %slot.owned.release.2459, label %slot.owned.cont.2460

slot.owned.release.2459:
  %slot.release.gc.slot.2461.24 = bitcast ptr %slot.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %slot.release.gc.slot.2461.24, ptr null)
  br label %slot.owned.cont.2460

slot.owned.cont.2460:
  %slot.owned.resolve.2462.25 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.2456.19)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %slot.owned.resolve.2462.25)
  store ptr %slot.owned.resolve.2462.25, ptr %slot.addr.21
  %core.gc.slot.2465.28 = bitcast ptr %core.addr.2 to ptr
  %core.2466.29 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2465.28)
  %slot.gc.slot.2467.30 = bitcast ptr %slot.addr.21 to ptr
  %slot.2468.31 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %slot.gc.slot.2467.30)
  %extern.pcc_gc_load_ptr.ret.2469.32 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %core.2466.29, ptr %slot.2468.31)
  store ptr %extern.pcc_gc_load_ptr.ret.2469.32, ptr %value.addr.33
  %value.gc.slot.2472.36 = bitcast ptr %value.addr.33 to ptr
  %value.2473.37 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.2472.36)
  %unsafe.ptr_is_null.i.2474.38 = ptrtoint ptr %value.2473.37 to i64
  %unsafe.ptr.null.2475.39 = icmp eq i64 %unsafe.ptr_is_null.i.2474.38, 0
  %b2i64.2476.40 = zext i1 %unsafe.ptr.null.2475.39 to i64
  %icmp.2477.41 = icmp eq i64 %b2i64.2476.40, 0
  br i1 %icmp.2477.41, label %if.then.2478, label %if.else.2479

if.then.2478:
  %value.gc.slot.2481.42 = bitcast ptr %value.addr.33 to ptr
  %value.2482.43 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.2481.42)
  call void (ptr) @py_incref(ptr %value.2482.43)
  br label %if.end.2480

if.else.2479:
  br label %if.end.2480

if.end.2480:
  %core.gc.slot.2483.44 = bitcast ptr %core.addr.2 to ptr
  %core.2484.45 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2483.44)
  %slot.gc.slot.2485.46 = bitcast ptr %slot.addr.21 to ptr
  %slot.2486.47 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %slot.gc.slot.2485.46)
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %core.2484.45, ptr %slot.2486.47, ptr null)
  %add.2488.49 = add i64 %unsafe.load.i64.2447.9, 1
  %core.gc.slot.2490.51 = bitcast ptr %core.addr.2 to ptr
  %core.2491.52 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2490.51)
  %unsafe.addr.2492.53 = getelementptr i8, ptr %core.2491.52, i64 24
  %unsafe.addr.cast.2493.54 = bitcast ptr %unsafe.addr.2492.53 to ptr
  %unsafe.load.i64.2494.55 = load i64, ptr %unsafe.addr.cast.2493.54, align 1
  %icmp.2495.56 = icmp eq i64 %add.2488.49, %unsafe.load.i64.2494.55
  br i1 %icmp.2495.56, label %if.then.2496, label %if.else.2497

if.then.2496:
  br label %if.end.2498

if.else.2497:
  br label %if.end.2498

if.end.2498:
  %head.addr.10.phi = phi i64 [ 0, %if.then.2496 ], [ %add.2488.49, %if.else.2497 ]
  %core.gc.slot.2499.57 = bitcast ptr %core.addr.2 to ptr
  %core.2500.58 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2499.57)
  %unsafe.addr.2501.59 = getelementptr i8, ptr %core.2500.58, i64 40
  %unsafe.addr.cast.2502.60 = bitcast ptr %unsafe.addr.2501.59 to ptr
  store i64 %head.addr.10.phi, ptr %unsafe.addr.cast.2502.60, align 1
  %none.2504.62 = load ptr, ptr @py_None
  %core.gc.slot.2505.63 = bitcast ptr %core.addr.2 to ptr
  %core.2506.64 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2505.63)
  %unsafe.addr.2507.65 = getelementptr i8, ptr %core.2506.64, i64 32
  %unsafe.addr.cast.2508.66 = bitcast ptr %unsafe.addr.2507.65 to ptr
  %core.gc.slot.2509.67 = bitcast ptr %core.addr.2 to ptr
  %core.2510.68 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2509.67)
  %unsafe.addr.2511.69 = getelementptr i8, ptr %core.2510.68, i64 32
  %unsafe.addr.cast.2512.70 = bitcast ptr %unsafe.addr.2511.69 to ptr
  %unsafe.load.i64.2513.71 = load i64, ptr %unsafe.addr.cast.2512.70, align 1
  %sub.2514.72 = sub i64 %unsafe.load.i64.2513.71, 1
  store i64 %sub.2514.72, ptr %unsafe.addr.cast.2508.66, align 1
  %none.2515.73 = load ptr, ptr @py_None
  %value.gc.slot.2516.74 = bitcast ptr %value.addr.33 to ptr
  %value.2517.75 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.2516.74)
  %ret.retain.2518.76 = call ptr (ptr) @pcc_gc_retain(ptr %value.2517.75)
  %ret.tmp.root.2519.77 = alloca ptr
  store ptr null, ptr %ret.tmp.root.2519.77
  %ret.tmp.root.ptr.2520.78 = bitcast ptr %ret.tmp.root.2519.77 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.2520.78, ptr %ret.retain.2518.76)
  %gc.frame.lifo.map.ptr.2521.79 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.2522.80 = bitcast ptr %ret.tmp.root.2519.77 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.2521.79, ptr %gc.frame.lifo.slots.ptr.2522.80)
  br i1 1, label %slot.owned.release.2524, label %slot.owned.cont.2525

slot.owned.release.2524:
  %slot.release.gc.slot.2526.82 = bitcast ptr %slot.addr.21 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %slot.release.gc.slot.2526.82, ptr null)
  br label %slot.owned.cont.2525

slot.owned.cont.2525:
  %gc.frame.leave.ptr.2527.83 = bitcast ptr %value.addr.33 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2527.83)
  %gc.frame.leave.ptr.2528.84 = bitcast ptr %slot.addr.21 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2528.84)
  %gc.frame.leave.ptr.2529.85 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2529.85)
  %ret.tmp.current.2530.86 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.2520.78)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.2520.78, ptr null)
  %gc.frame.lifo.leave.ptr.2531.87 = bitcast ptr %ret.tmp.root.2519.77 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.2531.87)
  ret ptr %ret.tmp.current.2530.86
}
define external void @user_py_virtual_thread_runtime__channel_ring_clear(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  %call.ret.root.2547.14 = alloca ptr
  %value.addr.20 = alloca ptr
  store ptr null, ptr %value.addr.20
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2532.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2533.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2532.3, ptr %gc.frame.slots.ptr.2533.4)
  %gc.frame.map.ptr.2558.25 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.2559.26 = bitcast ptr %value.addr.20 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2558.25, ptr %gc.frame.slots.ptr.2559.26)
  br label %while.cond.2534

while.cond.2534:
  %value.owned.21.phi = phi i1 [ 0, %entry ], [ 1, %while.latch.2536 ]
  %core.gc.slot.2538.5 = bitcast ptr %core.addr.2 to ptr
  %core.2539.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2538.5)
  %unsafe.addr.2540.7 = getelementptr i8, ptr %core.2539.6, i64 32
  %unsafe.addr.cast.2541.8 = bitcast ptr %unsafe.addr.2540.7 to ptr
  %unsafe.load.i64.2542.9 = load i64, ptr %unsafe.addr.cast.2541.8, align 1
  %icmp.2543.10 = icmp sgt i64 %unsafe.load.i64.2542.9, 0
  br i1 %icmp.2543.10, label %while.body.2535, label %while.end.2537

while.body.2535:
  %core.gc.slot.2544.11 = bitcast ptr %core.addr.2 to ptr
  %core.2545.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2544.11)
  %channel_ring_pop_ret.2546.13 = call ptr (ptr) @user_py_virtual_thread_runtime__channel_ring_pop(ptr %core.2545.12)
  store ptr null, ptr %call.ret.root.2547.14
  %call.ret.root.ptr.2548.15 = bitcast ptr %call.ret.root.2547.14 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2548.15, ptr %channel_ring_pop_ret.2546.13)
  %gc.frame.lifo.map.ptr.2549.16 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.2550.17 = bitcast ptr %call.ret.root.2547.14 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.2549.16, ptr %gc.frame.lifo.slots.ptr.2550.17)
  %call.ret.current.2551.18 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.2548.15)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.2548.15, ptr null)
  %gc.frame.lifo.leave.ptr.2552.19 = bitcast ptr %call.ret.root.2547.14 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.2552.19)
  br i1 %value.owned.21.phi, label %value.owned.release.2554, label %value.owned.cont.2555

while.latch.2536:
  br label %while.cond.2534

while.end.2537:
  br i1 %value.owned.21.phi, label %value.owned.release.2572, label %value.owned.cont.2573

value.owned.release.2554:
  %value.release.gc.slot.2556.23 = bitcast ptr %value.addr.20 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %value.release.gc.slot.2556.23, ptr null)
  br label %value.owned.cont.2555

value.owned.cont.2555:
  %value.owned.resolve.2557.24 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.2551.18)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %value.owned.resolve.2557.24)
  store ptr %value.owned.resolve.2557.24, ptr %value.addr.20
  %value.gc.slot.2560.27 = bitcast ptr %value.addr.20 to ptr
  %value.2561.28 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %value.gc.slot.2560.27)
  %unsafe.ptr_is_null.i.2562.29 = ptrtoint ptr %value.2561.28 to i64
  %unsafe.ptr.null.2563.30 = icmp eq i64 %unsafe.ptr_is_null.i.2562.29, 0
  %b2i64.2564.31 = zext i1 %unsafe.ptr.null.2563.30 to i64
  %icmp.2565.32 = icmp eq i64 %b2i64.2564.31, 0
  br i1 %icmp.2565.32, label %if.then.2566, label %if.else.2567

if.then.2566:
  %value.gc.slot.2569.33 = bitcast ptr %value.addr.20 to ptr
  %value.2570.34 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %value.gc.slot.2569.33)
  call void (ptr) @py_decref(ptr %value.2570.34)
  br label %if.end.2568

if.else.2567:
  br label %if.end.2568

if.end.2568:
  br label %while.latch.2536

value.owned.release.2572:
  %value.release.gc.slot.2574.36 = bitcast ptr %value.addr.20 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %value.release.gc.slot.2574.36, ptr null)
  br label %value.owned.cont.2573

value.owned.cont.2573:
  %gc.frame.leave.ptr.2575.37 = bitcast ptr %value.addr.20 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2575.37)
  %gc.frame.leave.ptr.2576.38 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2576.38)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__channel_consumer_busy(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2577.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2578.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2577.3, ptr %gc.frame.slots.ptr.2578.4)
  %core.gc.slot.2579.5 = bitcast ptr %core.addr.2 to ptr
  %core.2580.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2579.5)
  %unsafe.addr.2581.7 = getelementptr i8, ptr %core.2580.6, i64 120
  %unsafe.addr.cast.2582.8 = bitcast ptr %unsafe.addr.2581.7 to ptr
  %unsafe.load.i64.2583.9 = load i64, ptr %unsafe.addr.cast.2582.8, align 1
  %and.2584.10 = and i64 %unsafe.load.i64.2583.9, 1
  %gc.frame.leave.ptr.2585.11 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2585.11)
  ret i64 %and.2584.10
}
define external i64 @user_py_virtual_thread_runtime__channel_consumer_acquire(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2586.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2587.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2586.3, ptr %gc.frame.slots.ptr.2587.4)
  %core.gc.slot.2588.5 = bitcast ptr %core.addr.2 to ptr
  %core.2589.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2588.5)
  %unsafe.addr.2590.7 = getelementptr i8, ptr %core.2589.6, i64 120
  %unsafe.addr.cast.2591.8 = bitcast ptr %unsafe.addr.2590.7 to ptr
  %unsafe.load.i64.2592.9 = load i64, ptr %unsafe.addr.cast.2591.8, align 1
  %and.2594.12 = and i64 %unsafe.load.i64.2592.9, 1
  %icmp.2595.13 = icmp ne i64 %and.2594.12, 0
  br i1 %icmp.2595.13, label %if.then.2596, label %if.else.2597

if.then.2596:
  %gc.frame.leave.ptr.2599.14 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2599.14)
  ret i64 -1

if.else.2597:
  br label %if.end.2598

if.end.2598:
  %core.gc.slot.2600.15 = bitcast ptr %core.addr.2 to ptr
  %core.2601.16 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2600.15)
  %unsafe.addr.2602.17 = getelementptr i8, ptr %core.2601.16, i64 120
  %unsafe.addr.cast.2603.18 = bitcast ptr %unsafe.addr.2602.17 to ptr
  %or.2605.20 = or i64 %unsafe.load.i64.2592.9, 1
  store i64 %or.2605.20, ptr %unsafe.addr.cast.2603.18, align 1
  %none.2606.21 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2607.22 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2607.22)
  ret i64 0
}
define external void @user_py_virtual_thread_runtime__channel_consumer_release(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2608.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2609.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2608.3, ptr %gc.frame.slots.ptr.2609.4)
  %core.gc.slot.2610.5 = bitcast ptr %core.addr.2 to ptr
  %core.2611.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2610.5)
  %unsafe.addr.2612.7 = getelementptr i8, ptr %core.2611.6, i64 120
  %unsafe.addr.cast.2613.8 = bitcast ptr %unsafe.addr.2612.7 to ptr
  %unsafe.load.i64.2614.9 = load i64, ptr %unsafe.addr.cast.2613.8, align 1
  %core.gc.slot.2615.11 = bitcast ptr %core.addr.2 to ptr
  %core.2616.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2615.11)
  %unsafe.addr.2617.13 = getelementptr i8, ptr %core.2616.12, i64 120
  %unsafe.addr.cast.2618.14 = bitcast ptr %unsafe.addr.2617.13 to ptr
  %and.2620.16 = and i64 %unsafe.load.i64.2614.9, -2
  store i64 %and.2620.16, ptr %unsafe.addr.cast.2618.14, align 1
  %none.2621.17 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2622.18 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2622.18)
  ret void
}
define external void @user_py_virtual_thread_runtime__channel_send_lease_acquire(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2623.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2624.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2623.3, ptr %gc.frame.slots.ptr.2624.4)
  %core.gc.slot.2625.5 = bitcast ptr %core.addr.2 to ptr
  %core.2626.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2625.5)
  %unsafe.addr.2627.7 = getelementptr i8, ptr %core.2626.6, i64 120
  %unsafe.addr.cast.2628.8 = bitcast ptr %unsafe.addr.2627.7 to ptr
  %core.gc.slot.2629.9 = bitcast ptr %core.addr.2 to ptr
  %core.2630.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2629.9)
  %unsafe.addr.2631.11 = getelementptr i8, ptr %core.2630.10, i64 120
  %unsafe.addr.cast.2632.12 = bitcast ptr %unsafe.addr.2631.11 to ptr
  %unsafe.load.i64.2633.13 = load i64, ptr %unsafe.addr.cast.2632.12, align 1
  %add.2634.14 = add i64 %unsafe.load.i64.2633.13, 2
  store i64 %add.2634.14, ptr %unsafe.addr.cast.2628.8, align 1
  %none.2635.15 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2636.16 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2636.16)
  ret void
}
define external void @user_py_virtual_thread_runtime__channel_send_lease_release(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2637.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2638.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2637.3, ptr %gc.frame.slots.ptr.2638.4)
  %core.gc.slot.2639.5 = bitcast ptr %core.addr.2 to ptr
  %core.2640.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2639.5)
  %unsafe.addr.2641.7 = getelementptr i8, ptr %core.2640.6, i64 120
  %unsafe.addr.cast.2642.8 = bitcast ptr %unsafe.addr.2641.7 to ptr
  %unsafe.load.i64.2643.9 = load i64, ptr %unsafe.addr.cast.2642.8, align 1
  %icmp.2645.12 = icmp sge i64 %unsafe.load.i64.2643.9, 2
  br i1 %icmp.2645.12, label %if.then.2646, label %if.else.2647

if.then.2646:
  %core.gc.slot.2649.13 = bitcast ptr %core.addr.2 to ptr
  %core.2650.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2649.13)
  %unsafe.addr.2651.15 = getelementptr i8, ptr %core.2650.14, i64 120
  %unsafe.addr.cast.2652.16 = bitcast ptr %unsafe.addr.2651.15 to ptr
  %sub.2654.18 = sub i64 %unsafe.load.i64.2643.9, 2
  store i64 %sub.2654.18, ptr %unsafe.addr.cast.2652.16, align 1
  %none.2655.19 = load ptr, ptr @py_None
  br label %if.end.2648

if.else.2647:
  br label %if.end.2648

if.end.2648:
  %gc.frame.leave.ptr.2656.20 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2656.20)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__channel_send_leases(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.2657.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2658.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2657.3, ptr %gc.frame.slots.ptr.2658.4)
  %core.gc.slot.2659.5 = bitcast ptr %core.addr.2 to ptr
  %core.2660.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.2659.5)
  %unsafe.addr.2661.7 = getelementptr i8, ptr %core.2660.6, i64 120
  %unsafe.addr.cast.2662.8 = bitcast ptr %unsafe.addr.2661.7 to ptr
  %unsafe.load.i64.2663.9 = load i64, ptr %unsafe.addr.cast.2662.8, align 1
  %fdiv_bz.2664.10 = icmp eq i64 2, 0
  br i1 %fdiv_bz.2664.10, label %div.zero.2666, label %div.ok.2665

div.ok.2665:
  %floordiv.2671.q.15 = sdiv i64 %unsafe.load.i64.2663.9, 2
  %floordiv.2671.r.16 = srem i64 %unsafe.load.i64.2663.9, 2
  %floordiv.2671.r_nz.17 = icmp ne i64 %floordiv.2671.r.16, 0
  %floordiv.2671.r_neg.18 = icmp slt i64 %floordiv.2671.r.16, 0
  %floordiv.2671.b_neg.19 = icmp slt i64 2, 0
  %floordiv.2671.sign_diff.20 = xor i1 %floordiv.2671.r_neg.18, %floordiv.2671.b_neg.19
  %floordiv.2671.need_fix.21 = and i1 %floordiv.2671.r_nz.17, %floordiv.2671.sign_diff.20
  %floordiv.2671.q_fix.22 = sub i64 %floordiv.2671.q.15, 1
  %floordiv.2671.23 = select i1 %floordiv.2671.need_fix.21, i64 %floordiv.2671.q_fix.22, i64 %floordiv.2671.q.15
  %gc.frame.leave.ptr.2672.24 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2672.24)
  ret i64 %floordiv.2671.23

div.zero.2666:
  %.11 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.2667.12 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.11)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.2667.12)
  %raise.frame.exc.2668.13 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  br label %err.finish

err.finish:
  %gc.frame.leave.ptr.2669.14 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2669.14)
  ret i64 0

raise.cont.2670:
  unreachable
}
define external void @user_py_virtual_thread_runtime__channel_task_clear(ptr %vthread, i64 %clear_value) "no-builtins" {
entry:
  %vthread.addr.3 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.3
  %gc.frame.map.ptr.2673.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2674.5 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2673.4, ptr %gc.frame.slots.ptr.2674.5)
  %vthread.gc.slot.2675.7 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2676.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2675.7)
  %vthread.gc.slot.2677.9 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2678.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2677.9)
  %unsafe.ptr.add.2679.11 = getelementptr i8, ptr %vthread.2678.10, i64 136
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.2676.8, ptr %unsafe.ptr.add.2679.11, ptr null)
  %vthread.gc.slot.2680.12 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2681.13 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2680.12)
  %vthread.gc.slot.2682.14 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2683.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2682.14)
  %unsafe.ptr.add.2684.16 = getelementptr i8, ptr %vthread.2683.15, i64 144
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.2681.13, ptr %unsafe.ptr.add.2684.16, ptr null)
  %icmp.2686.18 = icmp ne i64 %clear_value, 0
  br i1 %icmp.2686.18, label %if.then.2687, label %if.else.2688

if.then.2687:
  %vthread.gc.slot.2690.19 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2691.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2690.19)
  %vthread.gc.slot.2692.21 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2693.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2692.21)
  %unsafe.ptr.add.2694.23 = getelementptr i8, ptr %vthread.2693.22, i64 168
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.2691.20, ptr %unsafe.ptr.add.2694.23, ptr null)
  br label %if.end.2689

if.else.2688:
  br label %if.end.2689

if.end.2689:
  %vthread.gc.slot.2695.24 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2696.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2695.24)
  %unsafe.addr.2697.26 = getelementptr i8, ptr %vthread.2696.25, i64 152
  %unsafe.addr.cast.2698.27 = bitcast ptr %unsafe.addr.2697.26 to ptr
  store ptr null, ptr %unsafe.addr.cast.2698.27, align 1
  %none.2699.28 = load ptr, ptr @py_None
  %vthread.gc.slot.2700.29 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2701.30 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2700.29)
  %unsafe.addr.2702.31 = getelementptr i8, ptr %vthread.2701.30, i64 160
  %unsafe.addr.cast.2703.32 = bitcast ptr %unsafe.addr.2702.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.2703.32, align 1
  %none.2704.33 = load ptr, ptr @py_None
  %vthread.gc.slot.2705.34 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.2706.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2705.34)
  %unsafe.addr.2707.36 = getelementptr i8, ptr %vthread.2706.35, i64 120
  %unsafe.addr.cast.2708.37 = bitcast ptr %unsafe.addr.2707.36 to ptr
  store i64 0, ptr %unsafe.addr.cast.2708.37, align 1
  %none.2709.38 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.2710.39 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2710.39)
  ret void
}
define external void @user_py_virtual_thread_runtime__channel_publish_ready(ptr %vthread, ptr %group, i64 %status, i64 %index, ptr %value) "no-builtins" {
entry:
  %vthread.addr.6 = alloca ptr
  %group.addr.9 = alloca ptr
  %value.addr.14 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.6
  %gc.frame.map.ptr.2711.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2712.8 = bitcast ptr %vthread.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2711.7, ptr %gc.frame.slots.ptr.2712.8)
  store ptr %group, ptr %group.addr.9
  %gc.frame.map.ptr.2713.10 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2714.11 = bitcast ptr %group.addr.9 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2713.10, ptr %gc.frame.slots.ptr.2714.11)
  store ptr %value, ptr %value.addr.14
  %gc.frame.map.ptr.2715.15 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.2716.16 = bitcast ptr %value.addr.14 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.2715.15, ptr %gc.frame.slots.ptr.2716.16)
  %value.gc.slot.2717.17 = bitcast ptr %value.addr.14 to ptr
  %value.2718.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.2717.17)
  %unsafe.ptr_is_null.i.2719.19 = ptrtoint ptr %value.2718.18 to i64
  %unsafe.ptr.null.2720.20 = icmp eq i64 %unsafe.ptr_is_null.i.2719.19, 0
  br i1 %unsafe.ptr.null.2720.20, label %if.then.2721, label %if.else.2722

if.then.2721:
  %unsafe.global.load.ptr.2724.21 = load ptr, ptr @py_None
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.global.load.ptr.2724.21)
  store ptr %unsafe.global.load.ptr.2724.21, ptr %value.addr.14
  br label %if.end.2723

if.else.2722:
  br label %if.end.2723

if.end.2723:
  %vthread.gc.slot.2725.22 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2726.23 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2725.22)
  %vthread.gc.slot.2727.24 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2728.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2727.24)
  %unsafe.ptr.add.2729.26 = getelementptr i8, ptr %vthread.2728.25, i64 168
  %value.2730.27 = load ptr, ptr %value.addr.14
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.2726.23, ptr %unsafe.ptr.add.2729.26, ptr %value.2730.27)
  %vthread.gc.slot.2731.28 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2732.29 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2731.28)
  %unsafe.addr.2733.30 = getelementptr i8, ptr %vthread.2732.29, i64 176
  %unsafe.addr.cast.2734.31 = bitcast ptr %unsafe.addr.2733.30 to ptr
  store i64 %status, ptr %unsafe.addr.cast.2734.31, align 1
  %none.2736.33 = load ptr, ptr @py_None
  %vthread.gc.slot.2737.34 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2738.35 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2737.34)
  %unsafe.addr.2739.36 = getelementptr i8, ptr %vthread.2738.35, i64 184
  %unsafe.addr.cast.2740.37 = bitcast ptr %unsafe.addr.2739.36 to ptr
  store i64 %index, ptr %unsafe.addr.cast.2740.37, align 1
  %none.2742.39 = load ptr, ptr @py_None
  %vthread.gc.slot.2743.40 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2744.41 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2743.40)
  call void (ptr, i64) @user_py_virtual_thread_runtime__channel_task_clear(ptr %vthread.2744.41, i64 0)
  %vthread.gc.slot.2745.42 = bitcast ptr %vthread.addr.6 to ptr
  %vthread.2746.43 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.2745.42)
  %group.gc.slot.2747.44 = bitcast ptr %group.addr.9 to ptr
  %group.2748.45 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %group.gc.slot.2747.44)
  call void (ptr, ptr) @user_py_virtual_thread_runtime__ready_commit(ptr %vthread.2746.43, ptr %group.2748.45)
  %gc.frame.leave.ptr.2749.46 = bitcast ptr %value.addr.14 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2749.46)
  %gc.frame.leave.ptr.2750.47 = bitcast ptr %group.addr.9 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2750.47)
  %gc.frame.leave.ptr.2751.48 = bitcast ptr %vthread.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.2751.48)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__channel_detach_wait_locked(ptr %vthread) "no-builtins" {
strict.nolib.stub:
  %.238 = getelementptr inbounds [89 x i8], ptr @.strict.nolib.msg.7, i32 0, i32 0
  %strict.nolib.exc.3082.239 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.238)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3082.239)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3082.239)
  ret ptr null
}
define external i64 @user_py_virtual_thread_runtime__channel_terminal_cleanup_locked(ptr %vthread) "no-builtins" {
strict.nolib.stub:
  %.95 = getelementptr inbounds [94 x i8], ptr @.strict.nolib.msg.8, i32 0, i32 0
  %strict.nolib.exc.3222.96 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.95)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3222.96)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3222.96)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__channel_wake_recv_arm(ptr %core, ptr %arm, i64 %status, ptr %value) "no-builtins" {
strict.nolib.stub:
  %.193 = getelementptr inbounds [84 x i8], ptr @.strict.nolib.msg.9, i32 0, i32 0
  %strict.nolib.exc.3461.194 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.193)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3461.194)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3461.194)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__channel_wake_sender_arm(ptr %core, ptr %arm, i64 %accepted) "no-builtins" {
strict.nolib.stub:
  %.134 = getelementptr inbounds [86 x i8], ptr @.strict.nolib.msg.10, i32 0, i32 0
  %strict.nolib.exc.3615.135 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.134)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3615.135)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3615.135)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__channel_take_sender(ptr %core, ptr %arm) "no-builtins" {
strict.nolib.stub:
  %.136 = getelementptr inbounds [82 x i8], ptr @.strict.nolib.msg.11, i32 0, i32 0
  %strict.nolib.exc.3770.137 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.136)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3770.137)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3770.137)
  ret ptr null
}
define external i64 @user_py_virtual_thread_runtime__channel_fill_from_sender(ptr %core) "no-builtins" {
entry:
  %core.addr.2 = alloca ptr
  %call.ret.root.3801.27 = alloca ptr
  %arm.addr.33 = alloca ptr
  store ptr null, ptr %arm.addr.33
  store ptr %core, ptr %core.addr.2
  %gc.frame.map.ptr.3771.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.3772.4 = bitcast ptr %core.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.3771.3, ptr %gc.frame.slots.ptr.3772.4)
  %core.gc.slot.3773.5 = bitcast ptr %core.addr.2 to ptr
  %core.3774.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.3773.5)
  %unsafe.addr.3775.7 = getelementptr i8, ptr %core.3774.6, i64 64
  %unsafe.addr.cast.3776.8 = bitcast ptr %unsafe.addr.3775.7 to ptr
  %unsafe.load.i64.3777.9 = load i64, ptr %unsafe.addr.cast.3776.8, align 1
  %icmp.3778.10 = icmp ne i64 %unsafe.load.i64.3777.9, 0
  %gc.frame.map.ptr.3812.38 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.3813.39 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.3812.38, ptr %gc.frame.slots.ptr.3813.39)
  br i1 %icmp.3778.10, label %if.then.3779, label %if.else.3780

if.then.3779:
  %gc.frame.leave.ptr.3782.11 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3782.11)
  %gc.frame.leave.ptr.3814.40 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3814.40)
  ret i64 0

if.else.3780:
  br label %if.end.3781

if.end.3781:
  %core.gc.slot.3783.12 = bitcast ptr %core.addr.2 to ptr
  %core.3784.13 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.3783.12)
  %unsafe.addr.3785.14 = getelementptr i8, ptr %core.3784.13, i64 32
  %unsafe.addr.cast.3786.15 = bitcast ptr %unsafe.addr.3785.14 to ptr
  %unsafe.load.i64.3787.16 = load i64, ptr %unsafe.addr.cast.3786.15, align 1
  %core.gc.slot.3788.17 = bitcast ptr %core.addr.2 to ptr
  %core.3789.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.3788.17)
  %unsafe.addr.3790.19 = getelementptr i8, ptr %core.3789.18, i64 24
  %unsafe.addr.cast.3791.20 = bitcast ptr %unsafe.addr.3790.19 to ptr
  %unsafe.load.i64.3792.21 = load i64, ptr %unsafe.addr.cast.3791.20, align 1
  %icmp.3793.22 = icmp sge i64 %unsafe.load.i64.3787.16, %unsafe.load.i64.3792.21
  br i1 %icmp.3793.22, label %if.then.3794, label %if.else.3795

if.then.3794:
  %gc.frame.leave.ptr.3797.23 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3797.23)
  %gc.frame.leave.ptr.3815.41 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3815.41)
  ret i64 0

if.else.3795:
  br label %if.end.3796

if.end.3796:
  %core.gc.slot.3798.24 = bitcast ptr %core.addr.2 to ptr
  %core.3799.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.3798.24)
  %channel_queue_pop_ret.3800.26 = call ptr (ptr, i64, i64) @user_py_virtual_thread_runtime__channel_queue_pop(ptr %core.3799.25, i64 88, i64 96)
  store ptr null, ptr %call.ret.root.3801.27
  %call.ret.root.ptr.3802.28 = bitcast ptr %call.ret.root.3801.27 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.3802.28, ptr %channel_queue_pop_ret.3800.26)
  %gc.frame.lifo.map.ptr.3803.29 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.3804.30 = bitcast ptr %call.ret.root.3801.27 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.3803.29, ptr %gc.frame.lifo.slots.ptr.3804.30)
  %call.ret.current.3805.31 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.3802.28)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.3802.28, ptr null)
  %gc.frame.lifo.leave.ptr.3806.32 = bitcast ptr %call.ret.root.3801.27 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.3806.32)
  br i1 0, label %arm.owned.release.3808, label %arm.owned.cont.3809

arm.owned.release.3808:
  %arm.release.gc.slot.3810.36 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %arm.release.gc.slot.3810.36, ptr null)
  br label %arm.owned.cont.3809

arm.owned.cont.3809:
  %arm.owned.resolve.3811.37 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.3805.31)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %arm.owned.resolve.3811.37)
  store ptr %arm.owned.resolve.3811.37, ptr %arm.addr.33
  %arm.gc.slot.3816.42 = bitcast ptr %arm.addr.33 to ptr
  %arm.3817.43 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %arm.gc.slot.3816.42)
  %unsafe.ptr_is_null.i.3818.44 = ptrtoint ptr %arm.3817.43 to i64
  %unsafe.ptr.null.3819.45 = icmp eq i64 %unsafe.ptr_is_null.i.3818.44, 0
  br i1 %unsafe.ptr.null.3819.45, label %if.then.3820, label %if.else.3821

if.then.3820:
  br i1 1, label %arm.owned.release.3824, label %arm.owned.cont.3825

if.else.3821:
  br label %if.end.3822

if.end.3822:
  %core.gc.slot.3829.50 = bitcast ptr %core.addr.2 to ptr
  %core.3830.51 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.3829.50)
  %arm.gc.slot.3831.52 = bitcast ptr %arm.addr.33 to ptr
  %arm.3832.53 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %arm.gc.slot.3831.52)
  %channel_wake_sender_arm_ret.3833.54 = call i64 (ptr, ptr, i64) @user_py_virtual_thread_runtime__channel_wake_sender_arm(ptr %core.3830.51, ptr %arm.3832.53, i64 1)
  br i1 1, label %arm.owned.release.3835, label %arm.owned.cont.3836

arm.owned.release.3824:
  %arm.release.gc.slot.3826.47 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %arm.release.gc.slot.3826.47, ptr null)
  br label %arm.owned.cont.3825

arm.owned.cont.3825:
  %gc.frame.leave.ptr.3827.48 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3827.48)
  %gc.frame.leave.ptr.3828.49 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3828.49)
  ret i64 0

arm.owned.release.3835:
  %arm.release.gc.slot.3837.56 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %arm.release.gc.slot.3837.56, ptr null)
  br label %arm.owned.cont.3836

arm.owned.cont.3836:
  %gc.frame.leave.ptr.3838.57 = bitcast ptr %arm.addr.33 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3838.57)
  %gc.frame.leave.ptr.3839.58 = bitcast ptr %core.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3839.58)
  ret i64 %channel_wake_sender_arm_ret.3833.54
}
define external i64 @user_py_virtual_thread_runtime__channel_maybe_wake_sender_closed(ptr %core) "no-builtins" {
strict.nolib.stub:
  %.73 = getelementptr inbounds [95 x i8], ptr @.strict.nolib.msg.12, i32 0, i32 0
  %strict.nolib.exc.3924.74 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.73)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.3924.74)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.3924.74)
  ret i64 0
}
define external void @user_py_virtual_thread_runtime__channel_raise(ptr %message) "no-builtins" {
entry:
  %message.addr.2 = alloca ptr
  %exception.addr.8 = alloca ptr
  store ptr null, ptr %exception.addr.8
  store ptr %message, ptr %message.addr.2
  %gc.frame.map.ptr.3925.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.3926.4 = bitcast ptr %message.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.3925.3, ptr %gc.frame.slots.ptr.3926.4)
  %message.gc.slot.3927.5 = bitcast ptr %message.addr.2 to ptr
  %message.3928.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %message.gc.slot.3927.5)
  %extern.py_exc_new.ret.3929.7 = call ptr (i64, ptr) @py_exc_new(i64 7, ptr %message.3928.6)
  store ptr %extern.py_exc_new.ret.3929.7, ptr %exception.addr.8
  %gc.frame.map.ptr.3930.9 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.3931.10 = bitcast ptr %exception.addr.8 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.3930.9, ptr %gc.frame.slots.ptr.3931.10)
  %exception.gc.slot.3932.11 = bitcast ptr %exception.addr.8 to ptr
  %exception.3933.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %exception.gc.slot.3932.11)
  call void (ptr) @py_raise(ptr %exception.3933.12)
  %exception.gc.slot.3934.13 = bitcast ptr %exception.addr.8 to ptr
  %exception.3935.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %exception.gc.slot.3934.13)
  call void (ptr) @py_decref(ptr %exception.3935.14)
  %gc.frame.leave.ptr.3936.15 = bitcast ptr %exception.addr.8 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3936.15)
  %gc.frame.leave.ptr.3937.16 = bitcast ptr %message.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.3937.16)
  ret void
}
define external ptr @user_py_virtual_thread_runtime__channel_endpoint_new(ptr %core, i64 %kind) "no-builtins" {
strict.nolib.stub:
  %.89 = getelementptr inbounds [83 x i8], ptr @.strict.nolib.msg.13, i32 0, i32 0
  %strict.nolib.exc.4025.90 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.89)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4025.90)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4025.90)
  ret ptr null
}
define external ptr @user_py_virtual_thread_runtime__channel_pair_new(i64 %capacity, i64 %mode) "no-builtins" {
strict.nolib.stub:
  %.409 = getelementptr inbounds [79 x i8], ptr @.strict.nolib.msg.14, i32 0, i32 0
  %strict.nolib.exc.4476.410 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.409)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4476.410)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4476.410)
  ret ptr null
}
define external i64 @user_py_virtual_thread_runtime__channel_current_running(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %current.addr.6 = alloca ptr
  store ptr null, ptr %current.addr.6
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.4736.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4737.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4736.3, ptr %gc.frame.slots.ptr.4737.4)
  %unsafe.global.load.ptr.4738.5 = load ptr, ptr @pcc_current_virtual_thread_py
  store ptr %unsafe.global.load.ptr.4738.5, ptr %current.addr.6
  %current.4739.7 = load ptr, ptr %current.addr.6
  %extern.pcc_gc_note_relocation_read.ret.4740.8 = call ptr (ptr) @pcc_gc_note_relocation_read(ptr %current.4739.7)
  store ptr %extern.pcc_gc_note_relocation_read.ret.4740.8, ptr %current.addr.6
  %gc.frame.map.ptr.4741.9 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4742.10 = bitcast ptr %current.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4741.9, ptr %gc.frame.slots.ptr.4742.10)
  %current.gc.slot.4743.11 = bitcast ptr %current.addr.6 to ptr
  %current.4744.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %current.gc.slot.4743.11)
  %unsafe.ptr_is_null.i.4745.13 = ptrtoint ptr %current.4744.12 to i64
  %unsafe.ptr.null.4746.14 = icmp eq i64 %unsafe.ptr_is_null.i.4745.13, 0
  br i1 %unsafe.ptr.null.4746.14, label %if.then.4757, label %cond.right.4747

cond.right.4747:
  %current.gc.slot.4748.15 = bitcast ptr %current.addr.6 to ptr
  %current.4749.16 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %current.gc.slot.4748.15)
  %unsafe.ptr.eq.l.4750.17 = ptrtoint ptr %current.4749.16 to i64
  %vthread.gc.slot.4751.18 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4752.19 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4751.18)
  %unsafe.ptr.eq.r.4753.20 = ptrtoint ptr %vthread.4752.19 to i64
  %unsafe.ptr.eq.4754.21 = icmp eq i64 %unsafe.ptr.eq.l.4750.17, %unsafe.ptr.eq.r.4753.20
  %b2i64.4755.22 = zext i1 %unsafe.ptr.eq.4754.21 to i64
  %icmp.4756.23 = icmp eq i64 %b2i64.4755.22, 0
  br i1 %icmp.4756.23, label %if.then.4757, label %if.else.4758

if.then.4757:
  %gc.frame.leave.ptr.4760.24 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4760.24)
  %gc.frame.leave.ptr.4761.25 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4761.25)
  ret i64 0

if.else.4758:
  br label %if.end.4759

if.end.4759:
  %vthread.gc.slot.4762.26 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4763.27 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4762.26)
  %unsafe.addr.4764.28 = getelementptr i8, ptr %vthread.4763.27, i64 32
  %unsafe.addr.cast.4765.29 = bitcast ptr %unsafe.addr.4764.28 to ptr
  %unsafe.load.i64.4766.30 = load i64, ptr %unsafe.addr.cast.4765.29, align 1
  %icmp.4767.31 = icmp ne i64 %unsafe.load.i64.4766.30, 2
  br i1 %icmp.4767.31, label %if.then.4775, label %cond.right.4768

cond.right.4768:
  %vthread.gc.slot.4769.32 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4770.33 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4769.32)
  %unsafe.addr.4771.34 = getelementptr i8, ptr %vthread.4770.33, i64 120
  %unsafe.addr.cast.4772.35 = bitcast ptr %unsafe.addr.4771.34 to ptr
  %unsafe.load.i64.4773.36 = load i64, ptr %unsafe.addr.cast.4772.35, align 1
  %icmp.4774.37 = icmp ne i64 %unsafe.load.i64.4773.36, 0
  br i1 %icmp.4774.37, label %if.then.4775, label %if.else.4776

if.then.4775:
  %gc.frame.leave.ptr.4778.38 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4778.38)
  %gc.frame.leave.ptr.4779.39 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4779.39)
  ret i64 0

if.else.4776:
  br label %if.end.4777

if.end.4777:
  %vthread.gc.slot.4780.40 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4781.41 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4780.40)
  %unsafe.addr.4782.42 = getelementptr i8, ptr %vthread.4781.41, i64 152
  %unsafe.addr.cast.4783.43 = bitcast ptr %unsafe.addr.4782.42 to ptr
  %unsafe.load.ptr.4784.44 = load ptr, ptr %unsafe.addr.cast.4783.43, align 1
  %unsafe.ptr_is_null.i.4785.45 = ptrtoint ptr %unsafe.load.ptr.4784.44 to i64
  %unsafe.ptr.null.4786.46 = icmp eq i64 %unsafe.ptr_is_null.i.4785.45, 0
  %b2i64.4787.47 = zext i1 %unsafe.ptr.null.4786.46 to i64
  %icmp.4788.48 = icmp eq i64 %b2i64.4787.47, 0
  br i1 %icmp.4788.48, label %if.then.4789, label %if.else.4790

if.then.4789:
  %gc.frame.leave.ptr.4792.49 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4792.49)
  %gc.frame.leave.ptr.4793.50 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4793.50)
  ret i64 0

if.else.4790:
  br label %if.end.4791

if.end.4791:
  %vthread.gc.slot.4794.51 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4795.52 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4794.51)
  %unsafe.addr.4796.53 = getelementptr i8, ptr %vthread.4795.52, i64 160
  %unsafe.addr.cast.4797.54 = bitcast ptr %unsafe.addr.4796.53 to ptr
  %unsafe.load.ptr.4798.55 = load ptr, ptr %unsafe.addr.cast.4797.54, align 1
  %unsafe.ptr_is_null.i.4799.56 = ptrtoint ptr %unsafe.load.ptr.4798.55 to i64
  %unsafe.ptr.null.4800.57 = icmp eq i64 %unsafe.ptr_is_null.i.4799.56, 0
  %b2i64.4801.58 = zext i1 %unsafe.ptr.null.4800.57 to i64
  %icmp.4802.59 = icmp eq i64 %b2i64.4801.58, 0
  br i1 %icmp.4802.59, label %if.then.4803, label %if.else.4804

if.then.4803:
  %gc.frame.leave.ptr.4806.60 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4806.60)
  %gc.frame.leave.ptr.4807.61 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4807.61)
  ret i64 0

if.else.4804:
  br label %if.end.4805

if.end.4805:
  %vthread.gc.slot.4808.62 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.4809.63 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4808.62)
  %unsafe.addr.4810.64 = getelementptr i8, ptr %vthread.4809.63, i64 176
  %unsafe.addr.cast.4811.65 = bitcast ptr %unsafe.addr.4810.64 to ptr
  %unsafe.load.i64.4812.66 = load i64, ptr %unsafe.addr.cast.4811.65, align 1
  %icmp.4813.67 = icmp ne i64 %unsafe.load.i64.4812.66, -1
  br i1 %icmp.4813.67, label %if.then.4814, label %if.else.4815

if.then.4814:
  %gc.frame.leave.ptr.4817.68 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4817.68)
  %gc.frame.leave.ptr.4818.69 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4818.69)
  ret i64 0

if.else.4815:
  br label %if.end.4816

if.end.4816:
  %gc.frame.leave.ptr.4819.70 = bitcast ptr %current.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4819.70)
  %gc.frame.leave.ptr.4820.71 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4820.71)
  ret i64 1
}
define external void @user_py_virtual_thread_runtime__channel_store_immediate(ptr %vthread, i64 %status, i64 %index, ptr %value) "no-builtins" {
entry:
  %vthread.addr.5 = alloca ptr
  %value.addr.10 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.5
  %gc.frame.map.ptr.4821.6 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4822.7 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4821.6, ptr %gc.frame.slots.ptr.4822.7)
  store ptr %value, ptr %value.addr.10
  %gc.frame.map.ptr.4823.11 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4824.12 = bitcast ptr %value.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4823.11, ptr %gc.frame.slots.ptr.4824.12)
  %value.gc.slot.4825.13 = bitcast ptr %value.addr.10 to ptr
  %value.4826.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.4825.13)
  %unsafe.ptr_is_null.i.4827.15 = ptrtoint ptr %value.4826.14 to i64
  %unsafe.ptr.null.4828.16 = icmp eq i64 %unsafe.ptr_is_null.i.4827.15, 0
  br i1 %unsafe.ptr.null.4828.16, label %if.then.4829, label %if.else.4830

if.then.4829:
  %unsafe.global.load.ptr.4832.17 = load ptr, ptr @py_None
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.global.load.ptr.4832.17)
  store ptr %unsafe.global.load.ptr.4832.17, ptr %value.addr.10
  br label %if.end.4831

if.else.4830:
  br label %if.end.4831

if.end.4831:
  %vthread.gc.slot.4833.18 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.4834.19 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4833.18)
  %vthread.gc.slot.4835.20 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.4836.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4835.20)
  %unsafe.ptr.add.4837.22 = getelementptr i8, ptr %vthread.4836.21, i64 168
  %value.4838.23 = load ptr, ptr %value.addr.10
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.4834.19, ptr %unsafe.ptr.add.4837.22, ptr %value.4838.23)
  %vthread.gc.slot.4839.24 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.4840.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4839.24)
  %unsafe.addr.4841.26 = getelementptr i8, ptr %vthread.4840.25, i64 176
  %unsafe.addr.cast.4842.27 = bitcast ptr %unsafe.addr.4841.26 to ptr
  store i64 %status, ptr %unsafe.addr.cast.4842.27, align 1
  %none.4844.29 = load ptr, ptr @py_None
  %vthread.gc.slot.4845.30 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.4846.31 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.4845.30)
  %unsafe.addr.4847.32 = getelementptr i8, ptr %vthread.4846.31, i64 184
  %unsafe.addr.cast.4848.33 = bitcast ptr %unsafe.addr.4847.32 to ptr
  store i64 %index, ptr %unsafe.addr.cast.4848.33, align 1
  %none.4850.35 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.4851.36 = bitcast ptr %value.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4851.36)
  %gc.frame.leave.ptr.4852.37 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4852.37)
  ret void
}
define external void @user_py_virtual_thread_runtime__channel_consume_oneshot_sender(ptr %sender, ptr %core) "no-builtins" {
entry:
  %sender.addr.3 = alloca ptr
  %core.addr.6 = alloca ptr
  store ptr %sender, ptr %sender.addr.3
  %gc.frame.map.ptr.4853.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4854.5 = bitcast ptr %sender.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4853.4, ptr %gc.frame.slots.ptr.4854.5)
  store ptr %core, ptr %core.addr.6
  %gc.frame.map.ptr.4855.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.4856.8 = bitcast ptr %core.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.4855.7, ptr %gc.frame.slots.ptr.4856.8)
  %sender.gc.slot.4857.9 = bitcast ptr %sender.addr.3 to ptr
  %sender.4858.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %sender.gc.slot.4857.9)
  %unsafe.addr.4859.11 = getelementptr i8, ptr %sender.4858.10, i64 32
  %unsafe.addr.cast.4860.12 = bitcast ptr %unsafe.addr.4859.11 to ptr
  store i64 1, ptr %unsafe.addr.cast.4860.12, align 1
  %none.4861.13 = load ptr, ptr @py_None
  %core.gc.slot.4862.14 = bitcast ptr %core.addr.6 to ptr
  %core.4863.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.4862.14)
  %unsafe.addr.4864.16 = getelementptr i8, ptr %core.4863.15, i64 56
  %unsafe.addr.cast.4865.17 = bitcast ptr %unsafe.addr.4864.16 to ptr
  %unsafe.load.i64.4866.18 = load i64, ptr %unsafe.addr.cast.4865.17, align 1
  %icmp.4867.19 = icmp sgt i64 %unsafe.load.i64.4866.18, 0
  br i1 %icmp.4867.19, label %if.then.4868, label %if.else.4869

if.then.4868:
  %core.gc.slot.4871.20 = bitcast ptr %core.addr.6 to ptr
  %core.4872.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.4871.20)
  %unsafe.addr.4873.22 = getelementptr i8, ptr %core.4872.21, i64 56
  %unsafe.addr.cast.4874.23 = bitcast ptr %unsafe.addr.4873.22 to ptr
  %core.gc.slot.4875.24 = bitcast ptr %core.addr.6 to ptr
  %core.4876.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.4875.24)
  %unsafe.addr.4877.26 = getelementptr i8, ptr %core.4876.25, i64 56
  %unsafe.addr.cast.4878.27 = bitcast ptr %unsafe.addr.4877.26 to ptr
  %unsafe.load.i64.4879.28 = load i64, ptr %unsafe.addr.cast.4878.27, align 1
  %sub.4880.29 = sub i64 %unsafe.load.i64.4879.28, 1
  store i64 %sub.4880.29, ptr %unsafe.addr.cast.4874.23, align 1
  %none.4881.30 = load ptr, ptr @py_None
  br label %if.end.4870

if.else.4869:
  br label %if.end.4870

if.end.4870:
  %core.gc.slot.4882.31 = bitcast ptr %core.addr.6 to ptr
  %core.4883.32 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %core.gc.slot.4882.31)
  %unsafe.addr.4884.33 = getelementptr i8, ptr %core.4883.32, i64 80
  %unsafe.addr.cast.4885.34 = bitcast ptr %unsafe.addr.4884.33 to ptr
  store i64 1, ptr %unsafe.addr.cast.4885.34, align 1
  %none.4886.35 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.4887.36 = bitcast ptr %core.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4887.36)
  %gc.frame.leave.ptr.4888.37 = bitcast ptr %sender.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.4888.37)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__channel_recv_ready_status(ptr %core) "no-builtins" {
strict.nolib.stub:
  %.104 = getelementptr inbounds [88 x i8], ptr @.strict.nolib.msg.18, i32 0, i32 0
  %strict.nolib.exc.4983.105 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.104)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.4983.105)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.4983.105)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__channel_recv_now(ptr %core, ptr %vthread, i64 %index) "no-builtins" {
strict.nolib.stub:
  %.155 = getelementptr inbounds [79 x i8], ptr @.strict.nolib.msg.19, i32 0, i32 0
  %strict.nolib.exc.5176.156 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.155)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.5176.156)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.5176.156)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__channel_result_tuple(ptr %vthread, i64 %select_result) "no-builtins" {
strict.nolib.stub:
  %.338 = getelementptr inbounds [83 x i8], ptr @.strict.nolib.msg.22, i32 0, i32 0
  %strict.nolib.exc.6415.339 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.338)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.6415.339)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.6415.339)
  ret ptr null
}
define external ptr @user_py_virtual_thread_runtime__dequeue_from(ptr %head_slot, ptr %tail_slot) "no-builtins" {
strict.nolib.stub:
  %.140 = getelementptr inbounds [75 x i8], ptr @.strict.nolib.msg.26, i32 0, i32 0
  %strict.nolib.exc.7393.141 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.140)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.7393.141)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.7393.141)
  ret ptr null
}
define external ptr @user_py_virtual_thread_runtime__dequeue() "no-builtins" {
entry:
  %call.ret.root.7415.19 = alloca ptr
  %call.ret.root.7423.27 = alloca ptr
  %call.ret.root.7430.34 = alloca ptr
  %thread.addr.40 = alloca ptr
  store ptr null, ptr %thread.addr.40
  %err.empty.owner.7482.77 = alloca ptr
  store ptr null, ptr %err.empty.owner.7482.77
  %call.ret.root.7499.94 = alloca ptr
  %call.ret.root.7507.102 = alloca ptr
  %call.ret.root.7514.109 = alloca ptr
  %call.ret.root.7566.148 = alloca ptr
  %call.ret.root.7574.156 = alloca ptr
  %call.ret.root.7581.163 = alloca ptr
  %call.ret.root.7620.195 = alloca ptr
  %unsafe.global.addr.7394.1 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.7395.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.7394.1)
  %unsafe.global.addr.7396.4 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.7397.5 = getelementptr i8, ptr %unsafe.global.addr.7396.4, i64 0
  %unsafe.addr.cast.7398.6 = bitcast ptr %unsafe.addr.7397.5 to ptr
  %unsafe.load.i32.7399.7 = load i32, ptr %unsafe.addr.cast.7398.6, align 1
  %unsafe.i32.to.i64.7400.8 = sext i32 %unsafe.load.i32.7399.7 to i64
  %icmp.7402.11 = icmp sgt i64 %counter_ret.7395.2, 0
  %gc.frame.map.ptr.7441.45 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.7442.46 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7441.45, ptr %gc.frame.slots.ptr.7442.46)
  br i1 %icmp.7402.11, label %cond.right.7403, label %if.else.7411

cond.right.7403:
  %icmp.7405.13 = icmp sge i64 %unsafe.i32.to.i64.7400.8, 0
  br i1 %icmp.7405.13, label %cond.right.7406, label %if.else.7411

cond.right.7406:
  %icmp.7409.16 = icmp slt i64 %unsafe.i32.to.i64.7400.8, %counter_ret.7395.2
  br i1 %icmp.7409.16, label %if.then.7410, label %if.else.7411

if.then.7410:
  %carrier_head_slot_ret.7414.18 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %unsafe.i32.to.i64.7400.8)
  store ptr null, ptr %call.ret.root.7415.19
  %call.ret.root.ptr.7416.20 = bitcast ptr %call.ret.root.7415.19 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7416.20, ptr %carrier_head_slot_ret.7414.18)
  %gc.frame.lifo.map.ptr.7417.21 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7418.22 = bitcast ptr %call.ret.root.7415.19 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7417.21, ptr %gc.frame.lifo.slots.ptr.7418.22)
  %call.ret.current.7419.23 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7416.20)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7416.20, ptr null)
  %gc.frame.lifo.leave.ptr.7420.24 = bitcast ptr %call.ret.root.7415.19 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7420.24)
  %carrier_tail_slot_ret.7422.26 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %unsafe.i32.to.i64.7400.8)
  store ptr null, ptr %call.ret.root.7423.27
  %call.ret.root.ptr.7424.28 = bitcast ptr %call.ret.root.7423.27 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7424.28, ptr %carrier_tail_slot_ret.7422.26)
  %gc.frame.lifo.map.ptr.7425.29 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7426.30 = bitcast ptr %call.ret.root.7423.27 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7425.29, ptr %gc.frame.lifo.slots.ptr.7426.30)
  %call.ret.current.7427.31 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7424.28)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7424.28, ptr null)
  %gc.frame.lifo.leave.ptr.7428.32 = bitcast ptr %call.ret.root.7423.27 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7428.32)
  %dequeue_from_ret.7429.33 = call ptr (ptr, ptr) @user_py_virtual_thread_runtime__dequeue_from(ptr %call.ret.current.7419.23, ptr %call.ret.current.7427.31)
  store ptr null, ptr %call.ret.root.7430.34
  %call.ret.root.ptr.7431.35 = bitcast ptr %call.ret.root.7430.34 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7431.35, ptr %dequeue_from_ret.7429.33)
  %gc.frame.lifo.map.ptr.7432.36 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7433.37 = bitcast ptr %call.ret.root.7430.34 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7432.36, ptr %gc.frame.lifo.slots.ptr.7433.37)
  %call.ret.current.7434.38 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7431.35)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7431.35, ptr null)
  %gc.frame.lifo.leave.ptr.7435.39 = bitcast ptr %call.ret.root.7430.34 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7435.39)
  br i1 0, label %thread.owned.release.7437, label %thread.owned.cont.7438

if.else.7411:
  %icmp.7553.141 = icmp sgt i64 %counter_ret.7395.2, 0
  br i1 %icmp.7553.141, label %if.then.7554, label %if.else.7555

if.end.7412:
  %thread.owned.41.phi.2 = phi i1 [ %thread.owned.41.phi.3, %while.end.7469 ], [ %thread.owned.41.phi.1, %if.end.7556 ]
  %unsafe.global.addr.7617.192 = bitcast ptr @pcc_vthread_ready_head_py to ptr
  %unsafe.global.addr.7618.193 = bitcast ptr @pcc_vthread_ready_tail_py to ptr
  %dequeue_from_ret.7619.194 = call ptr (ptr, ptr) @user_py_virtual_thread_runtime__dequeue_from(ptr %unsafe.global.addr.7617.192, ptr %unsafe.global.addr.7618.193)
  store ptr null, ptr %call.ret.root.7620.195
  %call.ret.root.ptr.7621.196 = bitcast ptr %call.ret.root.7620.195 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7621.196, ptr %dequeue_from_ret.7619.194)
  %gc.frame.lifo.map.ptr.7622.197 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7623.198 = bitcast ptr %call.ret.root.7620.195 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7622.197, ptr %gc.frame.lifo.slots.ptr.7623.198)
  %call.ret.current.7624.199 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7621.196)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7621.196, ptr null)
  %gc.frame.lifo.leave.ptr.7625.200 = bitcast ptr %call.ret.root.7620.195 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7625.200)
  %ret.tmp.root.7626.201 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7626.201
  %ret.tmp.root.ptr.7627.202 = bitcast ptr %ret.tmp.root.7626.201 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7627.202, ptr %call.ret.current.7624.199)
  %gc.frame.lifo.map.ptr.7628.203 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7629.204 = bitcast ptr %ret.tmp.root.7626.201 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7628.203, ptr %gc.frame.lifo.slots.ptr.7629.204)
  br i1 %thread.owned.41.phi.2, label %thread.owned.release.7631, label %thread.owned.cont.7632

thread.owned.release.7437:
  %thread.release.gc.slot.7439.43 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %thread.release.gc.slot.7439.43, ptr null)
  br label %thread.owned.cont.7438

thread.owned.cont.7438:
  %thread.owned.resolve.7440.44 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.7434.38)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %thread.owned.resolve.7440.44)
  store ptr %thread.owned.resolve.7440.44, ptr %thread.addr.40
  %thread.gc.slot.7443.47 = bitcast ptr %thread.addr.40 to ptr
  %thread.7444.48 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7443.47)
  %unsafe.ptr_is_null.i.7445.49 = ptrtoint ptr %thread.7444.48 to i64
  %unsafe.ptr.null.7446.50 = icmp eq i64 %unsafe.ptr_is_null.i.7445.49, 0
  %b2i64.7447.51 = zext i1 %unsafe.ptr.null.7446.50 to i64
  %icmp.7448.52 = icmp eq i64 %b2i64.7447.51, 0
  br i1 %icmp.7448.52, label %if.then.7449, label %if.else.7450

if.then.7449:
  %thread.gc.slot.7452.53 = bitcast ptr %thread.addr.40 to ptr
  %thread.7453.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7452.53)
  br i1 1, label %ret.local.ready.7456, label %ret.local.borrowed.7455

if.else.7450:
  br label %if.end.7451

if.end.7451:
  br label %while.cond.7466

ret.local.borrowed.7455:
  %ret.local.retain.7457.56 = call ptr (ptr) @pcc_gc_retain(ptr %thread.7453.54)
  br label %ret.local.ready.7456

ret.local.ready.7456:
  %ret.local.value.7458.57 = phi ptr [%thread.7453.54, %if.then.7449], [%ret.local.retain.7457.56, %ret.local.borrowed.7455]
  %ret.tmp.root.7459.58 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7459.58
  %ret.tmp.root.ptr.7460.59 = bitcast ptr %ret.tmp.root.7459.58 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7460.59, ptr %ret.local.value.7458.57)
  %gc.frame.lifo.map.ptr.7461.60 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7462.61 = bitcast ptr %ret.tmp.root.7459.58 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7461.60, ptr %gc.frame.lifo.slots.ptr.7462.61)
  %gc.frame.leave.ptr.7463.62 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7463.62)
  %ret.tmp.current.7464.63 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7460.59)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7460.59, ptr null)
  %gc.frame.lifo.leave.ptr.7465.64 = bitcast ptr %ret.tmp.root.7459.58 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7465.64)
  ret ptr %ret.tmp.current.7464.63

while.cond.7466:
  %offset.addr.65.phi = phi i64 [ 1, %if.end.7451 ], [ %add.7551.139, %while.latch.7468 ]
  %thread.owned.41.phi.3 = phi i1 [ 1, %if.end.7451 ], [ 1, %while.latch.7468 ]
  %icmp.7472.68 = icmp slt i64 %offset.addr.65.phi, %counter_ret.7395.2
  br i1 %icmp.7472.68, label %while.body.7467, label %while.end.7469

while.body.7467:
  %add.7475.71 = add i64 %unsafe.i32.to.i64.7400.8, %offset.addr.65.phi
  %mod_bz.7477.73 = icmp eq i64 %counter_ret.7395.2, 0
  br i1 %mod_bz.7477.73, label %div.zero.7479, label %div.ok.7478

while.latch.7468:
  br label %while.cond.7466

while.end.7469:
  br label %if.end.7412

div.ok.7478:
  %r.7489.83 = srem i64 %add.7475.71, %counter_ret.7395.2
  %r_nz.7490.84 = icmp ne i64 %r.7489.83, 0
  %r_neg.7491.85 = icmp slt i64 %r.7489.83, 0
  %b_neg.7492.86 = icmp slt i64 %counter_ret.7395.2, 0
  %sign_diff.7493.87 = xor i1 %r_neg.7491.85, %b_neg.7492.86
  %need_fix.7494.88 = and i1 %r_nz.7490.84, %sign_diff.7493.87
  %r_fix.7495.89 = add i64 %r.7489.83, %counter_ret.7395.2
  %mod.7496.90 = select i1 %need_fix.7494.88, i64 %r_fix.7495.89, i64 %r.7489.83
  %carrier_head_slot_ret.7498.93 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %mod.7496.90)
  store ptr null, ptr %call.ret.root.7499.94
  %call.ret.root.ptr.7500.95 = bitcast ptr %call.ret.root.7499.94 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7500.95, ptr %carrier_head_slot_ret.7498.93)
  %gc.frame.lifo.map.ptr.7501.96 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7502.97 = bitcast ptr %call.ret.root.7499.94 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7501.96, ptr %gc.frame.lifo.slots.ptr.7502.97)
  %call.ret.current.7503.98 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7500.95)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7500.95, ptr null)
  %gc.frame.lifo.leave.ptr.7504.99 = bitcast ptr %call.ret.root.7499.94 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7504.99)
  %carrier_tail_slot_ret.7506.101 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %mod.7496.90)
  store ptr null, ptr %call.ret.root.7507.102
  %call.ret.root.ptr.7508.103 = bitcast ptr %call.ret.root.7507.102 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7508.103, ptr %carrier_tail_slot_ret.7506.101)
  %gc.frame.lifo.map.ptr.7509.104 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7510.105 = bitcast ptr %call.ret.root.7507.102 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7509.104, ptr %gc.frame.lifo.slots.ptr.7510.105)
  %call.ret.current.7511.106 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7508.103)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7508.103, ptr null)
  %gc.frame.lifo.leave.ptr.7512.107 = bitcast ptr %call.ret.root.7507.102 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7512.107)
  %dequeue_from_ret.7513.108 = call ptr (ptr, ptr) @user_py_virtual_thread_runtime__dequeue_from(ptr %call.ret.current.7503.98, ptr %call.ret.current.7511.106)
  store ptr null, ptr %call.ret.root.7514.109
  %call.ret.root.ptr.7515.110 = bitcast ptr %call.ret.root.7514.109 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7515.110, ptr %dequeue_from_ret.7513.108)
  %gc.frame.lifo.map.ptr.7516.111 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7517.112 = bitcast ptr %call.ret.root.7514.109 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7516.111, ptr %gc.frame.lifo.slots.ptr.7517.112)
  %call.ret.current.7518.113 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7515.110)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7515.110, ptr null)
  %gc.frame.lifo.leave.ptr.7519.114 = bitcast ptr %call.ret.root.7514.109 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7519.114)
  br i1 %thread.owned.41.phi.3, label %thread.owned.release.7521, label %thread.owned.cont.7522

div.zero.7479:
  %.74 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.7480.75 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.74)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.7480.75)
  %raise.frame.exc.7481.76 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  %thread.err.slot.7484.79 = bitcast ptr %thread.addr.40 to ptr
  %thread.err.empty.7485.80 = bitcast ptr %err.empty.owner.7482.77 to ptr
  %thread.err.active.slot.7486.81 = select i1 %thread.owned.41.phi.3, ptr %thread.err.slot.7484.79, ptr %thread.err.empty.7485.80
  call void (ptr, ptr) @pcc_gc_store_root(ptr %thread.err.active.slot.7486.81, ptr null)
  br label %err.finish

err.finish:
  %gc.frame.leave.ptr.7487.82 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7487.82)
  ret ptr null

raise.cont.7488:
  unreachable

thread.owned.release.7521:
  %thread.release.gc.slot.7523.116 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %thread.release.gc.slot.7523.116, ptr null)
  br label %thread.owned.cont.7522

thread.owned.cont.7522:
  %thread.owned.resolve.7524.117 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.7518.113)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %thread.owned.resolve.7524.117)
  store ptr %thread.owned.resolve.7524.117, ptr %thread.addr.40
  %thread.gc.slot.7525.118 = bitcast ptr %thread.addr.40 to ptr
  %thread.7526.119 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7525.118)
  %unsafe.ptr_is_null.i.7527.120 = ptrtoint ptr %thread.7526.119 to i64
  %unsafe.ptr.null.7528.121 = icmp eq i64 %unsafe.ptr_is_null.i.7527.120, 0
  %b2i64.7529.122 = zext i1 %unsafe.ptr.null.7528.121 to i64
  %icmp.7530.123 = icmp eq i64 %b2i64.7529.122, 0
  br i1 %icmp.7530.123, label %if.then.7531, label %if.else.7532

if.then.7531:
  %unsafe.global.addr.7534.124 = bitcast ptr @pcc_vthread_carrier_steal_count_py to ptr
  %counter_add_ret.7535.125 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.7534.124, i64 1)
  %thread.gc.slot.7536.126 = bitcast ptr %thread.addr.40 to ptr
  %thread.7537.127 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7536.126)
  br i1 1, label %ret.local.ready.7540, label %ret.local.borrowed.7539

if.else.7532:
  br label %if.end.7533

if.end.7533:
  %add.7551.139 = add i64 %offset.addr.65.phi, 1
  br label %while.latch.7468

ret.local.borrowed.7539:
  %ret.local.retain.7541.129 = call ptr (ptr) @pcc_gc_retain(ptr %thread.7537.127)
  br label %ret.local.ready.7540

ret.local.ready.7540:
  %ret.local.value.7542.130 = phi ptr [%thread.7537.127, %if.then.7531], [%ret.local.retain.7541.129, %ret.local.borrowed.7539]
  %ret.tmp.root.7543.131 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7543.131
  %ret.tmp.root.ptr.7544.132 = bitcast ptr %ret.tmp.root.7543.131 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7544.132, ptr %ret.local.value.7542.130)
  %gc.frame.lifo.map.ptr.7545.133 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7546.134 = bitcast ptr %ret.tmp.root.7543.131 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7545.133, ptr %gc.frame.lifo.slots.ptr.7546.134)
  %gc.frame.leave.ptr.7547.135 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7547.135)
  %ret.tmp.current.7548.136 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7544.132)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7544.132, ptr null)
  %gc.frame.lifo.leave.ptr.7549.137 = bitcast ptr %ret.tmp.root.7543.131 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7549.137)
  ret ptr %ret.tmp.current.7548.136

if.then.7554:
  br label %while.cond.7557

if.else.7555:
  br label %if.end.7556

if.end.7556:
  %thread.owned.41.phi.1 = phi i1 [ 0, %if.else.7555 ], [ %thread.owned.41.phi, %while.end.7560 ]
  br label %if.end.7412

while.cond.7557:
  %index.addr.142.phi = phi i64 [ 0, %if.then.7554 ], [ %add.7616.191, %while.latch.7559 ]
  %thread.owned.41.phi = phi i1 [ 0, %if.then.7554 ], [ 1, %while.latch.7559 ]
  %icmp.7563.145 = icmp slt i64 %index.addr.142.phi, %counter_ret.7395.2
  br i1 %icmp.7563.145, label %while.body.7558, label %while.end.7560

while.body.7558:
  %carrier_head_slot_ret.7565.147 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %index.addr.142.phi)
  store ptr null, ptr %call.ret.root.7566.148
  %call.ret.root.ptr.7567.149 = bitcast ptr %call.ret.root.7566.148 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7567.149, ptr %carrier_head_slot_ret.7565.147)
  %gc.frame.lifo.map.ptr.7568.150 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7569.151 = bitcast ptr %call.ret.root.7566.148 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7568.150, ptr %gc.frame.lifo.slots.ptr.7569.151)
  %call.ret.current.7570.152 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7567.149)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7567.149, ptr null)
  %gc.frame.lifo.leave.ptr.7571.153 = bitcast ptr %call.ret.root.7566.148 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7571.153)
  %carrier_tail_slot_ret.7573.155 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_tail_slot(i64 %index.addr.142.phi)
  store ptr null, ptr %call.ret.root.7574.156
  %call.ret.root.ptr.7575.157 = bitcast ptr %call.ret.root.7574.156 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7575.157, ptr %carrier_tail_slot_ret.7573.155)
  %gc.frame.lifo.map.ptr.7576.158 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7577.159 = bitcast ptr %call.ret.root.7574.156 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7576.158, ptr %gc.frame.lifo.slots.ptr.7577.159)
  %call.ret.current.7578.160 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7575.157)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7575.157, ptr null)
  %gc.frame.lifo.leave.ptr.7579.161 = bitcast ptr %call.ret.root.7574.156 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7579.161)
  %dequeue_from_ret.7580.162 = call ptr (ptr, ptr) @user_py_virtual_thread_runtime__dequeue_from(ptr %call.ret.current.7570.152, ptr %call.ret.current.7578.160)
  store ptr null, ptr %call.ret.root.7581.163
  %call.ret.root.ptr.7582.164 = bitcast ptr %call.ret.root.7581.163 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7582.164, ptr %dequeue_from_ret.7580.162)
  %gc.frame.lifo.map.ptr.7583.165 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7584.166 = bitcast ptr %call.ret.root.7581.163 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7583.165, ptr %gc.frame.lifo.slots.ptr.7584.166)
  %call.ret.current.7585.167 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7582.164)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7582.164, ptr null)
  %gc.frame.lifo.leave.ptr.7586.168 = bitcast ptr %call.ret.root.7581.163 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7586.168)
  br i1 %thread.owned.41.phi, label %thread.owned.release.7588, label %thread.owned.cont.7589

while.latch.7559:
  br label %while.cond.7557

while.end.7560:
  br label %if.end.7556

thread.owned.release.7588:
  %thread.release.gc.slot.7590.170 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %thread.release.gc.slot.7590.170, ptr null)
  br label %thread.owned.cont.7589

thread.owned.cont.7589:
  %thread.owned.resolve.7591.171 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.7585.167)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %thread.owned.resolve.7591.171)
  store ptr %thread.owned.resolve.7591.171, ptr %thread.addr.40
  %thread.gc.slot.7592.172 = bitcast ptr %thread.addr.40 to ptr
  %thread.7593.173 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7592.172)
  %unsafe.ptr_is_null.i.7594.174 = ptrtoint ptr %thread.7593.173 to i64
  %unsafe.ptr.null.7595.175 = icmp eq i64 %unsafe.ptr_is_null.i.7594.174, 0
  %b2i64.7596.176 = zext i1 %unsafe.ptr.null.7595.175 to i64
  %icmp.7597.177 = icmp eq i64 %b2i64.7596.176, 0
  br i1 %icmp.7597.177, label %if.then.7598, label %if.else.7599

if.then.7598:
  %thread.gc.slot.7601.178 = bitcast ptr %thread.addr.40 to ptr
  %thread.7602.179 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %thread.gc.slot.7601.178)
  br i1 1, label %ret.local.ready.7605, label %ret.local.borrowed.7604

if.else.7599:
  br label %if.end.7600

if.end.7600:
  %add.7616.191 = add i64 %index.addr.142.phi, 1
  br label %while.latch.7559

ret.local.borrowed.7604:
  %ret.local.retain.7606.181 = call ptr (ptr) @pcc_gc_retain(ptr %thread.7602.179)
  br label %ret.local.ready.7605

ret.local.ready.7605:
  %ret.local.value.7607.182 = phi ptr [%thread.7602.179, %if.then.7598], [%ret.local.retain.7606.181, %ret.local.borrowed.7604]
  %ret.tmp.root.7608.183 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7608.183
  %ret.tmp.root.ptr.7609.184 = bitcast ptr %ret.tmp.root.7608.183 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7609.184, ptr %ret.local.value.7607.182)
  %gc.frame.lifo.map.ptr.7610.185 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7611.186 = bitcast ptr %ret.tmp.root.7608.183 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7610.185, ptr %gc.frame.lifo.slots.ptr.7611.186)
  %gc.frame.leave.ptr.7612.187 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7612.187)
  %ret.tmp.current.7613.188 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7609.184)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7609.184, ptr null)
  %gc.frame.lifo.leave.ptr.7614.189 = bitcast ptr %ret.tmp.root.7608.183 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7614.189)
  ret ptr %ret.tmp.current.7613.188

thread.owned.release.7631:
  %thread.release.gc.slot.7633.206 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %thread.release.gc.slot.7633.206, ptr null)
  br label %thread.owned.cont.7632

thread.owned.cont.7632:
  %gc.frame.leave.ptr.7634.207 = bitcast ptr %thread.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7634.207)
  %ret.tmp.current.7635.208 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7627.202)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7627.202, ptr null)
  %gc.frame.lifo.leave.ptr.7636.209 = bitcast ptr %ret.tmp.root.7626.201 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7636.209)
  ret ptr %ret.tmp.current.7635.208
}
define external ptr @user_py_virtual_thread_runtime__timer_alloc() "no-builtins" {
entry:
  %unsafe.global.load.ptr.7637.1 = load ptr, ptr @pcc_vthread_timer_free_py
  %unsafe.ptr_is_null.i.7639.4 = ptrtoint ptr %unsafe.global.load.ptr.7637.1 to i64
  %unsafe.ptr.null.7640.5 = icmp eq i64 %unsafe.ptr_is_null.i.7639.4, 0
  %b2i64.7641.6 = zext i1 %unsafe.ptr.null.7640.5 to i64
  %icmp.7642.7 = icmp eq i64 %b2i64.7641.6, 0
  br i1 %icmp.7642.7, label %if.then.7643, label %if.else.7644

if.then.7643:
  %unsafe.addr.7647.9 = getelementptr i8, ptr %unsafe.global.load.ptr.7637.1, i64 16
  %unsafe.addr.cast.7648.10 = bitcast ptr %unsafe.addr.7647.9 to ptr
  %unsafe.load.ptr.7649.11 = load ptr, ptr %unsafe.addr.cast.7648.10, align 1
  store ptr %unsafe.load.ptr.7649.11, ptr @pcc_vthread_timer_free_py
  %none.7650.12 = load ptr, ptr @py_None
  %unsafe.global.addr.7651.13 = bitcast ptr @pcc_vthread_timer_cached_py to ptr
  %counter_add_ret.7652.14 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.7651.13, i64 -1)
  %unsafe.global.addr.7653.15 = bitcast ptr @pcc_vthread_timer_reuse_py to ptr
  %counter_add_ret.7654.16 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.7653.15, i64 1)
  br label %if.end.7645

if.else.7644:
  %unsafe.malloc.7655.17 = call ptr (i64) @malloc(i64 32)
  %unsafe.ptr_is_null.i.7657.19 = ptrtoint ptr %unsafe.malloc.7655.17 to i64
  %unsafe.ptr.null.7658.20 = icmp eq i64 %unsafe.ptr_is_null.i.7657.19, 0
  %b2i64.7659.21 = zext i1 %unsafe.ptr.null.7658.20 to i64
  %icmp.7660.22 = icmp eq i64 %b2i64.7659.21, 0
  br i1 %icmp.7660.22, label %if.then.7661, label %if.else.7662

if.end.7645:
  %node.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.7637.1, %if.then.7643 ], [ %unsafe.malloc.7655.17, %if.end.7663 ]
  %unsafe.ptr_is_null.i.7667.26 = ptrtoint ptr %node.addr.2.phi to i64
  %unsafe.ptr.null.7668.27 = icmp eq i64 %unsafe.ptr_is_null.i.7667.26, 0
  %b2i64.7669.28 = zext i1 %unsafe.ptr.null.7668.27 to i64
  %icmp.7670.29 = icmp eq i64 %b2i64.7669.28, 0
  br i1 %icmp.7670.29, label %if.then.7671, label %if.else.7672

if.then.7661:
  %unsafe.global.addr.7664.23 = bitcast ptr @pcc_vthread_timer_alloc_py to ptr
  %counter_add_ret.7665.24 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.7664.23, i64 1)
  br label %if.end.7663

if.else.7662:
  br label %if.end.7663

if.end.7663:
  br label %if.end.7645

if.then.7671:
  %unsafe.addr.7675.31 = getelementptr i8, ptr %node.addr.2.phi, i64 0
  %unsafe.addr.cast.7676.32 = bitcast ptr %unsafe.addr.7675.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.7676.32, align 1
  %none.7677.33 = load ptr, ptr @py_None
  %unsafe.addr.7679.35 = getelementptr i8, ptr %node.addr.2.phi, i64 8
  %unsafe.addr.cast.7680.36 = bitcast ptr %unsafe.addr.7679.35 to ptr
  store i64 0, ptr %unsafe.addr.cast.7680.36, align 1
  %none.7681.37 = load ptr, ptr @py_None
  %unsafe.addr.7683.39 = getelementptr i8, ptr %node.addr.2.phi, i64 16
  %unsafe.addr.cast.7684.40 = bitcast ptr %unsafe.addr.7683.39 to ptr
  store ptr null, ptr %unsafe.addr.cast.7684.40, align 1
  %none.7685.41 = load ptr, ptr @py_None
  %unsafe.addr.7687.43 = getelementptr i8, ptr %node.addr.2.phi, i64 24
  %unsafe.addr.cast.7688.44 = bitcast ptr %unsafe.addr.7687.43 to ptr
  store ptr null, ptr %unsafe.addr.cast.7688.44, align 1
  %none.7689.45 = load ptr, ptr @py_None
  br label %if.end.7673

if.else.7672:
  br label %if.end.7673

if.end.7673:
  %ret.retain.7691.47 = call ptr (ptr) @pcc_gc_retain(ptr %node.addr.2.phi)
  %ret.tmp.root.7692.48 = alloca ptr
  store ptr null, ptr %ret.tmp.root.7692.48
  %ret.tmp.root.ptr.7693.49 = bitcast ptr %ret.tmp.root.7692.48 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7693.49, ptr %ret.retain.7691.47)
  %gc.frame.lifo.map.ptr.7694.50 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7695.51 = bitcast ptr %ret.tmp.root.7692.48 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7694.50, ptr %gc.frame.lifo.slots.ptr.7695.51)
  %ret.tmp.current.7696.52 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.7693.49)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.7693.49, ptr null)
  %gc.frame.lifo.leave.ptr.7697.53 = bitcast ptr %ret.tmp.root.7692.48 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7697.53)
  ret ptr %ret.tmp.current.7696.52
}
define external void @user_py_virtual_thread_runtime__timer_release(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.7698.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7699.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7698.3, ptr %gc.frame.slots.ptr.7699.4)
  %node.gc.slot.7700.5 = bitcast ptr %node.addr.2 to ptr
  %node.7701.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.7700.5)
  %unsafe.addr.7702.7 = getelementptr i8, ptr %node.7701.6, i64 24
  %unsafe.addr.cast.7703.8 = bitcast ptr %unsafe.addr.7702.7 to ptr
  %unsafe.load.ptr.7704.9 = load ptr, ptr %unsafe.addr.cast.7703.8, align 1
  %unsafe.ptr_is_null.i.7706.12 = ptrtoint ptr %unsafe.load.ptr.7704.9 to i64
  %unsafe.ptr.null.7707.13 = icmp eq i64 %unsafe.ptr_is_null.i.7706.12, 0
  %b2i64.7708.14 = zext i1 %unsafe.ptr.null.7707.13 to i64
  %icmp.7709.15 = icmp eq i64 %b2i64.7708.14, 0
  br i1 %icmp.7709.15, label %if.then.7710, label %if.else.7711

if.then.7710:
  call void (ptr) @pcc_gc_scheduler_root_unregister_handle(ptr %unsafe.load.ptr.7704.9)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 2, i64 2, i64 -1, i64 -1)
  br label %if.end.7712

if.else.7711:
  br label %if.end.7712

if.end.7712:
  %node.gc.slot.7714.17 = bitcast ptr %node.addr.2 to ptr
  %node.7715.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.7714.17)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.7715.18, ptr null)
  %node.gc.slot.7716.19 = bitcast ptr %node.addr.2 to ptr
  %node.7717.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.7716.19)
  %unsafe.addr.7718.21 = getelementptr i8, ptr %node.7717.20, i64 16
  %unsafe.addr.cast.7719.22 = bitcast ptr %unsafe.addr.7718.21 to ptr
  %unsafe.global.load.ptr.7720.23 = load ptr, ptr @pcc_vthread_timer_free_py
  store ptr %unsafe.global.load.ptr.7720.23, ptr %unsafe.addr.cast.7719.22, align 1
  %none.7721.24 = load ptr, ptr @py_None
  %node.gc.slot.7722.25 = bitcast ptr %node.addr.2 to ptr
  %node.7723.26 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.7722.25)
  %unsafe.addr.7724.27 = getelementptr i8, ptr %node.7723.26, i64 24
  %unsafe.addr.cast.7725.28 = bitcast ptr %unsafe.addr.7724.27 to ptr
  store ptr null, ptr %unsafe.addr.cast.7725.28, align 1
  %none.7726.29 = load ptr, ptr @py_None
  %node.gc.slot.7727.30 = bitcast ptr %node.addr.2 to ptr
  %node.7728.31 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.7727.30)
  store ptr %node.7728.31, ptr @pcc_vthread_timer_free_py
  %none.7729.32 = load ptr, ptr @py_None
  %unsafe.global.addr.7730.33 = bitcast ptr @pcc_vthread_timer_cached_py to ptr
  %counter_add_ret.7731.34 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.7730.33, i64 1)
  %gc.frame.leave.ptr.7732.35 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7732.35)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__timer_cancel(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %previous.addr.26 = alloca ptr
  store ptr null, ptr %previous.addr.26
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.7733.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7734.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7733.3, ptr %gc.frame.slots.ptr.7734.4)
  %vthread.gc.slot.7735.5 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7736.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7735.5)
  %unsafe.addr.7737.7 = getelementptr i8, ptr %vthread.7736.6, i64 56
  %unsafe.addr.cast.7738.8 = bitcast ptr %unsafe.addr.7737.7 to ptr
  %unsafe.load.ptr.7739.9 = load ptr, ptr %unsafe.addr.cast.7738.8, align 1
  %unsafe.ptr_is_null.i.7741.12 = ptrtoint ptr %unsafe.load.ptr.7739.9 to i64
  %unsafe.ptr.null.7742.13 = icmp eq i64 %unsafe.ptr_is_null.i.7741.12, 0
  %gc.frame.map.ptr.7827.81 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7828.82 = bitcast ptr %previous.addr.26 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7827.81, ptr %gc.frame.slots.ptr.7828.82)
  br i1 %unsafe.ptr.null.7742.13, label %if.then.7743, label %if.else.7744

if.then.7743:
  %vthread.gc.slot.7746.14 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7747.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7746.14)
  %unsafe.addr.7748.16 = getelementptr i8, ptr %vthread.7747.15, i64 120
  %unsafe.addr.cast.7749.17 = bitcast ptr %unsafe.addr.7748.16 to ptr
  %unsafe.load.i64.7750.18 = load i64, ptr %unsafe.addr.cast.7749.17, align 1
  %icmp.7751.19 = icmp eq i64 %unsafe.load.i64.7750.18, 1
  br i1 %icmp.7751.19, label %if.then.7752, label %if.else.7753

if.else.7744:
  br label %if.end.7745

if.end.7745:
  store ptr null, ptr %previous.addr.26
  %unsafe.global.load.ptr.7761.27 = load ptr, ptr @pcc_vthread_timer_head_py
  br label %while.cond.7762

if.then.7752:
  %vthread.gc.slot.7755.20 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7756.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7755.20)
  %unsafe.addr.7757.22 = getelementptr i8, ptr %vthread.7756.21, i64 120
  %unsafe.addr.cast.7758.23 = bitcast ptr %unsafe.addr.7757.22 to ptr
  store i64 0, ptr %unsafe.addr.cast.7758.23, align 1
  %none.7759.24 = load ptr, ptr @py_None
  br label %if.end.7754

if.else.7753:
  br label %if.end.7754

if.end.7754:
  %gc.frame.leave.ptr.7760.25 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7760.25)
  %gc.frame.leave.ptr.7829.83 = bitcast ptr %previous.addr.26 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7829.83)
  ret i64 0

while.cond.7762:
  %node.addr.28.phi = phi ptr [ %unsafe.global.load.ptr.7761.27, %if.end.7745 ], [ %unsafe.load.ptr.7834.88, %while.latch.7764 ]
  %previous.owned.78.phi = phi i1 [ 0, %if.end.7745 ], [ 0, %while.latch.7764 ]
  %unsafe.ptr_is_null.i.7767.30 = ptrtoint ptr %node.addr.28.phi to i64
  %unsafe.ptr.null.7768.31 = icmp eq i64 %unsafe.ptr_is_null.i.7767.30, 0
  %b2i64.7769.32 = zext i1 %unsafe.ptr.null.7768.31 to i64
  %icmp.7770.33 = icmp eq i64 %b2i64.7769.32, 0
  br i1 %icmp.7770.33, label %while.body.7763, label %while.end.7765

while.body.7763:
  %unsafe.ptr.eq.l.7772.35 = ptrtoint ptr %node.addr.28.phi to i64
  %unsafe.ptr.eq.r.7774.37 = ptrtoint ptr %unsafe.load.ptr.7739.9 to i64
  %unsafe.ptr.eq.7775.38 = icmp eq i64 %unsafe.ptr.eq.l.7772.35, %unsafe.ptr.eq.r.7774.37
  br i1 %unsafe.ptr.eq.7775.38, label %if.then.7776, label %if.else.7777

while.latch.7764:
  br label %while.cond.7762

while.end.7765:
  %vthread.gc.slot.7835.89 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7836.90 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7835.89)
  %unsafe.addr.7837.91 = getelementptr i8, ptr %vthread.7836.90, i64 56
  %unsafe.addr.cast.7838.92 = bitcast ptr %unsafe.addr.7837.91 to ptr
  store ptr null, ptr %unsafe.addr.cast.7838.92, align 1
  %none.7839.93 = load ptr, ptr @py_None
  %vthread.gc.slot.7840.94 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7841.95 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7840.94)
  %unsafe.addr.7842.96 = getelementptr i8, ptr %vthread.7841.95, i64 120
  %unsafe.addr.cast.7843.97 = bitcast ptr %unsafe.addr.7842.96 to ptr
  %unsafe.load.i64.7844.98 = load i64, ptr %unsafe.addr.cast.7843.97, align 1
  %icmp.7845.99 = icmp eq i64 %unsafe.load.i64.7844.98, 1
  br i1 %icmp.7845.99, label %if.then.7846, label %if.else.7847

if.then.7776:
  %unsafe.addr.7780.40 = getelementptr i8, ptr %node.addr.28.phi, i64 16
  %unsafe.addr.cast.7781.41 = bitcast ptr %unsafe.addr.7780.40 to ptr
  %unsafe.load.ptr.7782.42 = load ptr, ptr %unsafe.addr.cast.7781.41, align 1
  %previous.7783.44 = load ptr, ptr %previous.addr.26
  %unsafe.ptr_is_null.i.7784.45 = ptrtoint ptr %previous.7783.44 to i64
  %unsafe.ptr.null.7785.46 = icmp eq i64 %unsafe.ptr_is_null.i.7784.45, 0
  br i1 %unsafe.ptr.null.7785.46, label %if.then.7786, label %if.else.7787

if.else.7777:
  br label %if.end.7778

if.end.7778:
  br i1 %previous.owned.78.phi, label %previous.owned.release.7824, label %previous.owned.cont.7825

if.then.7786:
  store ptr %unsafe.load.ptr.7782.42, ptr @pcc_vthread_timer_head_py
  %none.7790.48 = load ptr, ptr @py_None
  br label %if.end.7788

if.else.7787:
  %previous.7791.49 = load ptr, ptr %previous.addr.26
  %unsafe.addr.7792.50 = getelementptr i8, ptr %previous.7791.49, i64 16
  %unsafe.addr.cast.7793.51 = bitcast ptr %unsafe.addr.7792.50 to ptr
  store ptr %unsafe.load.ptr.7782.42, ptr %unsafe.addr.cast.7793.51, align 1
  %none.7795.53 = load ptr, ptr @py_None
  br label %if.end.7788

if.end.7788:
  %vthread.gc.slot.7796.54 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7797.55 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7796.54)
  %unsafe.addr.7798.56 = getelementptr i8, ptr %vthread.7797.55, i64 56
  %unsafe.addr.cast.7799.57 = bitcast ptr %unsafe.addr.7798.56 to ptr
  store ptr null, ptr %unsafe.addr.cast.7799.57, align 1
  %none.7800.58 = load ptr, ptr @py_None
  %vthread.gc.slot.7801.59 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7802.60 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7801.59)
  %unsafe.addr.7803.61 = getelementptr i8, ptr %vthread.7802.60, i64 120
  %unsafe.addr.cast.7804.62 = bitcast ptr %unsafe.addr.7803.61 to ptr
  %unsafe.load.i64.7805.63 = load i64, ptr %unsafe.addr.cast.7804.62, align 1
  %icmp.7806.64 = icmp eq i64 %unsafe.load.i64.7805.63, 1
  br i1 %icmp.7806.64, label %if.then.7807, label %if.else.7808

if.then.7807:
  %vthread.gc.slot.7810.65 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7811.66 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7810.65)
  %unsafe.addr.7812.67 = getelementptr i8, ptr %vthread.7811.66, i64 120
  %unsafe.addr.cast.7813.68 = bitcast ptr %unsafe.addr.7812.67 to ptr
  store i64 0, ptr %unsafe.addr.cast.7813.68, align 1
  %none.7814.69 = load ptr, ptr @py_None
  br label %if.end.7809

if.else.7808:
  br label %if.end.7809

if.end.7809:
  call void (ptr) @user_py_virtual_thread_runtime__timer_release(ptr %node.addr.28.phi)
  %vthread.gc.slot.7816.71 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7817.72 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7816.71)
  %unsafe.addr.7818.73 = getelementptr i8, ptr %vthread.7817.72, i64 32
  %unsafe.addr.cast.7819.74 = bitcast ptr %unsafe.addr.7818.73 to ptr
  %unsafe.load.i64.7820.75 = load i64, ptr %unsafe.addr.cast.7819.74, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 12, i64 2, i64 0, i64 %unsafe.load.i64.7820.75)
  %gc.frame.leave.ptr.7821.76 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7821.76)
  %gc.frame.leave.ptr.7830.84 = bitcast ptr %previous.addr.26 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7830.84)
  ret i64 1

previous.owned.release.7824:
  %previous.release.gc.slot.7826.80 = bitcast ptr %previous.addr.26 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %previous.release.gc.slot.7826.80, ptr null)
  br label %previous.owned.cont.7825

previous.owned.cont.7825:
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.addr.28.phi)
  store ptr %node.addr.28.phi, ptr %previous.addr.26
  %unsafe.addr.7832.86 = getelementptr i8, ptr %node.addr.28.phi, i64 16
  %unsafe.addr.cast.7833.87 = bitcast ptr %unsafe.addr.7832.86 to ptr
  %unsafe.load.ptr.7834.88 = load ptr, ptr %unsafe.addr.cast.7833.87, align 1
  br label %while.latch.7764

if.then.7846:
  %vthread.gc.slot.7849.100 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.7850.101 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7849.100)
  %unsafe.addr.7851.102 = getelementptr i8, ptr %vthread.7850.101, i64 120
  %unsafe.addr.cast.7852.103 = bitcast ptr %unsafe.addr.7851.102 to ptr
  store i64 0, ptr %unsafe.addr.cast.7852.103, align 1
  %none.7853.104 = load ptr, ptr @py_None
  br label %if.end.7848

if.else.7847:
  br label %if.end.7848

if.end.7848:
  %gc.frame.leave.ptr.7854.105 = bitcast ptr %previous.addr.26 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7854.105)
  %gc.frame.leave.ptr.7855.106 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7855.106)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__timer_add(ptr %vthread, i64 %deadline) "no-builtins" {
entry:
  %vthread.addr.3 = alloca ptr
  %call.ret.root.7888.31 = alloca ptr
  %node.addr.37 = alloca ptr
  store ptr null, ptr %node.addr.37
  %handle.addr.56 = alloca ptr
  store ptr null, ptr %handle.addr.56
  %previous.addr.93 = alloca ptr
  store ptr null, ptr %previous.addr.93
  store ptr %vthread, ptr %vthread.addr.3
  %gc.frame.map.ptr.7856.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7857.5 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7856.4, ptr %gc.frame.slots.ptr.7857.5)
  %unsafe.global.load.ptr.7858.7 = load ptr, ptr @pcc_vthread_timer_head_py
  %unsafe.ptr_is_null.i.7860.10 = ptrtoint ptr %unsafe.global.load.ptr.7858.7 to i64
  %unsafe.ptr.null.7861.11 = icmp eq i64 %unsafe.ptr_is_null.i.7860.10, 0
  %b2i64.7862.12 = zext i1 %unsafe.ptr.null.7861.11 to i64
  %icmp.7863.13 = icmp ne i64 %b2i64.7862.12, 0
  %unsafe.ptr_is_null.i.7865.16 = ptrtoint ptr %unsafe.global.load.ptr.7858.7 to i64
  %unsafe.ptr.null.7866.17 = icmp eq i64 %unsafe.ptr_is_null.i.7865.16, 0
  %b2i64.7867.18 = zext i1 %unsafe.ptr.null.7866.17 to i64
  %icmp.7868.19 = icmp eq i64 %b2i64.7867.18, 0
  %gc.frame.map.ptr.7899.42 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.7900.43 = bitcast ptr %node.addr.37 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7899.42, ptr %gc.frame.slots.ptr.7900.43)
  %gc.frame.map.ptr.7918.57 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7919.58 = bitcast ptr %handle.addr.56 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7918.57, ptr %gc.frame.slots.ptr.7919.58)
  %gc.frame.map.ptr.7981.110 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.7982.111 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.7981.110, ptr %gc.frame.slots.ptr.7982.111)
  br i1 %icmp.7868.19, label %cond.right.7869, label %if.else.7877

cond.right.7869:
  %unsafe.addr.7872.22 = getelementptr i8, ptr %unsafe.global.load.ptr.7858.7, i64 8
  %unsafe.addr.cast.7873.23 = bitcast ptr %unsafe.addr.7872.22 to ptr
  %unsafe.load.i64.7874.24 = load i64, ptr %unsafe.addr.cast.7873.23, align 1
  %icmp.7875.25 = icmp slt i64 %deadline, %unsafe.load.i64.7874.24
  br i1 %icmp.7875.25, label %if.then.7876, label %if.else.7877

if.then.7876:
  br label %if.end.7878

if.else.7877:
  br label %if.end.7878

if.end.7878:
  %advances_head.addr.14.phi = phi i1 [ 1, %if.then.7876 ], [ %icmp.7863.13, %if.else.7877 ]
  br i1 %advances_head.addr.14.phi, label %cond.right.7880, label %if.else.7884

cond.right.7880:
  %io_interrupt_locked_ret.7881.27 = call i64 () @user_py_virtual_thread_runtime__io_interrupt_locked()
  %icmp.7882.28 = icmp ne i64 %io_interrupt_locked_ret.7881.27, 0
  br i1 %icmp.7882.28, label %if.then.7883, label %if.else.7884

if.then.7883:
  %gc.frame.leave.ptr.7886.29 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7886.29)
  %gc.frame.leave.ptr.7901.44 = bitcast ptr %node.addr.37 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7901.44)
  %gc.frame.leave.ptr.7920.59 = bitcast ptr %handle.addr.56 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7920.59)
  %gc.frame.leave.ptr.7983.112 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7983.112)
  ret i64 -1

if.else.7884:
  br label %if.end.7885

if.end.7885:
  %timer_alloc_ret.7887.30 = call ptr () @user_py_virtual_thread_runtime__timer_alloc()
  store ptr null, ptr %call.ret.root.7888.31
  %call.ret.root.ptr.7889.32 = bitcast ptr %call.ret.root.7888.31 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7889.32, ptr %timer_alloc_ret.7887.30)
  %gc.frame.lifo.map.ptr.7890.33 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.7891.34 = bitcast ptr %call.ret.root.7888.31 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.7890.33, ptr %gc.frame.lifo.slots.ptr.7891.34)
  %call.ret.current.7892.35 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.7889.32)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.7889.32, ptr null)
  %gc.frame.lifo.leave.ptr.7893.36 = bitcast ptr %call.ret.root.7888.31 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.7893.36)
  br i1 0, label %node.owned.release.7895, label %node.owned.cont.7896

node.owned.release.7895:
  %node.release.gc.slot.7897.40 = bitcast ptr %node.addr.37 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.7897.40, ptr null)
  br label %node.owned.cont.7896

node.owned.cont.7896:
  %node.owned.resolve.7898.41 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.7892.35)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.7898.41)
  store ptr %node.owned.resolve.7898.41, ptr %node.addr.37
  %node.gc.slot.7902.45 = bitcast ptr %node.addr.37 to ptr
  %node.7903.46 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7902.45)
  %unsafe.ptr_is_null.i.7904.47 = ptrtoint ptr %node.7903.46 to i64
  %unsafe.ptr.null.7905.48 = icmp eq i64 %unsafe.ptr_is_null.i.7904.47, 0
  br i1 %unsafe.ptr.null.7905.48, label %if.then.7906, label %if.else.7907

if.then.7906:
  br i1 1, label %node.owned.release.7910, label %node.owned.cont.7911

if.else.7907:
  br label %if.end.7908

if.end.7908:
  %node.gc.slot.7915.53 = bitcast ptr %node.addr.37 to ptr
  %node.7916.54 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7915.53)
  %extern.pcc_gc_scheduler_root_register_handle.ret.7917.55 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %node.7916.54)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.7917.55, ptr %handle.addr.56
  %handle.gc.slot.7922.61 = bitcast ptr %handle.addr.56 to ptr
  %handle.7923.62 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.7922.61)
  %unsafe.ptr_is_null.i.7924.63 = ptrtoint ptr %handle.7923.62 to i64
  %unsafe.ptr.null.7925.64 = icmp eq i64 %unsafe.ptr_is_null.i.7924.63, 0
  br i1 %unsafe.ptr.null.7925.64, label %if.then.7926, label %if.else.7927

node.owned.release.7910:
  %node.release.gc.slot.7912.50 = bitcast ptr %node.addr.37 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.7912.50, ptr null)
  br label %node.owned.cont.7911

node.owned.cont.7911:
  %gc.frame.leave.ptr.7913.51 = bitcast ptr %node.addr.37 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7913.51)
  %gc.frame.leave.ptr.7914.52 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7914.52)
  %gc.frame.leave.ptr.7921.60 = bitcast ptr %handle.addr.56 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7921.60)
  %gc.frame.leave.ptr.7984.113 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7984.113)
  ret i64 -1

if.then.7926:
  %node.gc.slot.7929.65 = bitcast ptr %node.addr.37 to ptr
  %node.7930.66 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7929.65)
  call void (ptr) @free(ptr %node.7930.66)
  %none.7931.67 = load ptr, ptr @py_None
  br i1 1, label %node.owned.release.7933, label %node.owned.cont.7934

if.else.7927:
  br label %if.end.7928

if.end.7928:
  %node.gc.slot.7939.73 = bitcast ptr %node.addr.37 to ptr
  %node.7940.74 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7939.73)
  %unsafe.addr.7941.75 = getelementptr i8, ptr %node.7940.74, i64 24
  %unsafe.addr.cast.7942.76 = bitcast ptr %unsafe.addr.7941.75 to ptr
  %handle.gc.slot.7943.77 = bitcast ptr %handle.addr.56 to ptr
  %handle.7944.78 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.7943.77)
  store ptr %handle.7944.78, ptr %unsafe.addr.cast.7942.76, align 1
  %none.7945.79 = load ptr, ptr @py_None
  %node.gc.slot.7946.80 = bitcast ptr %node.addr.37 to ptr
  %node.7947.81 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7946.80)
  %unsafe.addr.7948.82 = getelementptr i8, ptr %node.7947.81, i64 8
  %unsafe.addr.cast.7949.83 = bitcast ptr %unsafe.addr.7948.82 to ptr
  store i64 %deadline, ptr %unsafe.addr.cast.7949.83, align 1
  %none.7951.85 = load ptr, ptr @py_None
  %node.gc.slot.7952.86 = bitcast ptr %node.addr.37 to ptr
  %node.7953.87 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7952.86)
  %vthread.gc.slot.7954.88 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.7955.89 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7954.88)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.7953.87, ptr %vthread.7955.89)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 1, i64 2, i64 1, i64 -1)
  %vthread.gc.slot.7956.90 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.7957.91 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.7956.90)
  %timer_cancel_ret.7958.92 = call i64 (ptr) @user_py_virtual_thread_runtime__timer_cancel(ptr %vthread.7957.91)
  store ptr null, ptr %previous.addr.93
  %unsafe.global.load.ptr.7959.94 = load ptr, ptr @pcc_vthread_timer_head_py
  br label %while.cond.7960

node.owned.release.7933:
  %node.release.gc.slot.7935.69 = bitcast ptr %node.addr.37 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.7935.69, ptr null)
  br label %node.owned.cont.7934

node.owned.cont.7934:
  %gc.frame.leave.ptr.7936.70 = bitcast ptr %handle.addr.56 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7936.70)
  %gc.frame.leave.ptr.7937.71 = bitcast ptr %node.addr.37 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7937.71)
  %gc.frame.leave.ptr.7938.72 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7938.72)
  %gc.frame.leave.ptr.7985.114 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.7985.114)
  ret i64 -1

while.cond.7960:
  %current.addr.8.phi = phi ptr [ %unsafe.global.load.ptr.7959.94, %if.end.7928 ], [ %unsafe.load.ptr.7989.118, %while.latch.7962 ]
  %previous.owned.107.phi = phi i1 [ 0, %if.end.7928 ], [ 0, %while.latch.7962 ]
  %unsafe.ptr_is_null.i.7965.96 = ptrtoint ptr %current.addr.8.phi to i64
  %unsafe.ptr.null.7966.97 = icmp eq i64 %unsafe.ptr_is_null.i.7965.96, 0
  %b2i64.7967.98 = zext i1 %unsafe.ptr.null.7966.97 to i64
  %icmp.7968.99 = icmp eq i64 %b2i64.7967.98, 0
  br i1 %icmp.7968.99, label %cond.right.7969, label %while.end.7963

while.body.7961:
  br i1 %previous.owned.107.phi, label %previous.owned.release.7978, label %previous.owned.cont.7979

while.latch.7962:
  br label %while.cond.7960

while.end.7963:
  %node.gc.slot.7990.119 = bitcast ptr %node.addr.37 to ptr
  %node.7991.120 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.7990.119)
  %unsafe.addr.7992.121 = getelementptr i8, ptr %node.7991.120, i64 16
  %unsafe.addr.cast.7993.122 = bitcast ptr %unsafe.addr.7992.121 to ptr
  store ptr %current.addr.8.phi, ptr %unsafe.addr.cast.7993.122, align 1
  %none.7995.124 = load ptr, ptr @py_None
  %previous.gc.slot.7996.125 = bitcast ptr %previous.addr.93 to ptr
  %previous.7997.126 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %previous.gc.slot.7996.125)
  %unsafe.ptr_is_null.i.7998.127 = ptrtoint ptr %previous.7997.126 to i64
  %unsafe.ptr.null.7999.128 = icmp eq i64 %unsafe.ptr_is_null.i.7998.127, 0
  br i1 %unsafe.ptr.null.7999.128, label %if.then.8000, label %if.else.8001

cond.right.7969:
  %unsafe.addr.7971.101 = getelementptr i8, ptr %current.addr.8.phi, i64 8
  %unsafe.addr.cast.7972.102 = bitcast ptr %unsafe.addr.7971.101 to ptr
  %unsafe.load.i64.7973.103 = load i64, ptr %unsafe.addr.cast.7972.102, align 1
  %icmp.7975.105 = icmp sle i64 %unsafe.load.i64.7973.103, %deadline
  br i1 %icmp.7975.105, label %while.body.7961, label %while.end.7963

previous.owned.release.7978:
  %previous.release.gc.slot.7980.109 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %previous.release.gc.slot.7980.109, ptr null)
  br label %previous.owned.cont.7979

previous.owned.cont.7979:
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %current.addr.8.phi)
  store ptr %current.addr.8.phi, ptr %previous.addr.93
  %unsafe.addr.7987.116 = getelementptr i8, ptr %current.addr.8.phi, i64 16
  %unsafe.addr.cast.7988.117 = bitcast ptr %unsafe.addr.7987.116 to ptr
  %unsafe.load.ptr.7989.118 = load ptr, ptr %unsafe.addr.cast.7988.117, align 1
  br label %while.latch.7962

if.then.8000:
  %node.gc.slot.8003.129 = bitcast ptr %node.addr.37 to ptr
  %node.8004.130 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.8003.129)
  store ptr %node.8004.130, ptr @pcc_vthread_timer_head_py
  %none.8005.131 = load ptr, ptr @py_None
  br label %if.end.8002

if.else.8001:
  %previous.gc.slot.8006.132 = bitcast ptr %previous.addr.93 to ptr
  %previous.8007.133 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %previous.gc.slot.8006.132)
  %unsafe.addr.8008.134 = getelementptr i8, ptr %previous.8007.133, i64 16
  %unsafe.addr.cast.8009.135 = bitcast ptr %unsafe.addr.8008.134 to ptr
  %node.gc.slot.8010.136 = bitcast ptr %node.addr.37 to ptr
  %node.8011.137 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.8010.136)
  store ptr %node.8011.137, ptr %unsafe.addr.cast.8009.135, align 1
  %none.8012.138 = load ptr, ptr @py_None
  br label %if.end.8002

if.end.8002:
  %vthread.gc.slot.8013.139 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.8014.140 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8013.139)
  %unsafe.addr.8015.141 = getelementptr i8, ptr %vthread.8014.140, i64 56
  %unsafe.addr.cast.8016.142 = bitcast ptr %unsafe.addr.8015.141 to ptr
  %node.gc.slot.8017.143 = bitcast ptr %node.addr.37 to ptr
  %node.8018.144 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.8017.143)
  store ptr %node.8018.144, ptr %unsafe.addr.cast.8016.142, align 1
  %none.8019.145 = load ptr, ptr @py_None
  %vthread.gc.slot.8020.146 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.8021.147 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8020.146)
  %unsafe.addr.8022.148 = getelementptr i8, ptr %vthread.8021.147, i64 120
  %unsafe.addr.cast.8023.149 = bitcast ptr %unsafe.addr.8022.148 to ptr
  store i64 1, ptr %unsafe.addr.cast.8023.149, align 1
  %none.8024.150 = load ptr, ptr @py_None
  %vthread.gc.slot.8025.151 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.8026.152 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8025.151)
  %unsafe.addr.8027.153 = getelementptr i8, ptr %vthread.8026.152, i64 32
  %unsafe.addr.cast.8028.154 = bitcast ptr %unsafe.addr.8027.153 to ptr
  store i64 3, ptr %unsafe.addr.cast.8028.154, align 1
  %none.8029.155 = load ptr, ptr @py_None
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 8, i64 2, i64 0, i64 3)
  br i1 1, label %node.owned.release.8031, label %node.owned.cont.8032

node.owned.release.8031:
  %node.release.gc.slot.8033.157 = bitcast ptr %node.addr.37 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.8033.157, ptr null)
  br label %node.owned.cont.8032

node.owned.cont.8032:
  %gc.frame.leave.ptr.8034.158 = bitcast ptr %previous.addr.93 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8034.158)
  %gc.frame.leave.ptr.8035.159 = bitcast ptr %handle.addr.56 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8035.159)
  %gc.frame.leave.ptr.8036.160 = bitcast ptr %node.addr.37 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8036.160)
  %gc.frame.leave.ptr.8037.161 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8037.161)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__scheduler_wait_deadline_locked(i64 %now, i64 %timeout_ms) "no-builtins" {
entry:
  %icmp.8039.7 = icmp sge i64 %timeout_ms, 0
  br i1 %icmp.8039.7, label %if.then.8040, label %if.else.8041

if.then.8040:
  %add.8045.10 = add i64 %now, %timeout_ms
  br label %if.end.8042

if.else.8041:
  br label %if.end.8042

if.end.8042:
  %deadline.addr.5.phi.2 = phi i64 [ %add.8045.10, %if.then.8040 ], [ -1, %if.else.8041 ]
  %unsafe.global.load.ptr.8046.11 = load ptr, ptr @pcc_vthread_timer_head_py
  %unsafe.ptr_is_null.i.8048.14 = ptrtoint ptr %unsafe.global.load.ptr.8046.11 to i64
  %unsafe.ptr.null.8049.15 = icmp eq i64 %unsafe.ptr_is_null.i.8048.14, 0
  %b2i64.8050.16 = zext i1 %unsafe.ptr.null.8049.15 to i64
  %icmp.8051.17 = icmp eq i64 %b2i64.8050.16, 0
  br i1 %icmp.8051.17, label %if.then.8052, label %if.else.8053

if.then.8052:
  %unsafe.addr.8056.19 = getelementptr i8, ptr %unsafe.global.load.ptr.8046.11, i64 8
  %unsafe.addr.cast.8057.20 = bitcast ptr %unsafe.addr.8056.19 to ptr
  %unsafe.load.i64.8058.21 = load i64, ptr %unsafe.addr.cast.8057.20, align 1
  %icmp.8060.24 = icmp slt i64 %deadline.addr.5.phi.2, 0
  br i1 %icmp.8060.24, label %if.then.8065, label %cond.right.8061

if.else.8053:
  br label %if.end.8054

if.end.8054:
  %deadline.addr.5.phi.1 = phi i64 [ %deadline.addr.5.phi.2, %if.else.8053 ], [ %deadline.addr.5.phi, %if.end.8067 ]
  ret i64 %deadline.addr.5.phi.1

cond.right.8061:
  %icmp.8064.27 = icmp slt i64 %unsafe.load.i64.8058.21, %deadline.addr.5.phi.2
  br i1 %icmp.8064.27, label %if.then.8065, label %if.else.8066

if.then.8065:
  br label %if.end.8067

if.else.8066:
  br label %if.end.8067

if.end.8067:
  %deadline.addr.5.phi = phi i64 [ %unsafe.load.i64.8058.21, %if.then.8065 ], [ %deadline.addr.5.phi.2, %if.else.8066 ]
  br label %if.end.8054
}
define external ptr @user_py_virtual_thread_runtime__io_alloc() "no-builtins" {
entry:
  %unsafe.global.load.ptr.8070.1 = load ptr, ptr @pcc_vthread_io_free_py
  %unsafe.ptr_is_null.i.8072.4 = ptrtoint ptr %unsafe.global.load.ptr.8070.1 to i64
  %unsafe.ptr.null.8073.5 = icmp eq i64 %unsafe.ptr_is_null.i.8072.4, 0
  %b2i64.8074.6 = zext i1 %unsafe.ptr.null.8073.5 to i64
  %icmp.8075.7 = icmp eq i64 %b2i64.8074.6, 0
  br i1 %icmp.8075.7, label %if.then.8076, label %if.else.8077

if.then.8076:
  %unsafe.addr.8080.9 = getelementptr i8, ptr %unsafe.global.load.ptr.8070.1, i64 32
  %unsafe.addr.cast.8081.10 = bitcast ptr %unsafe.addr.8080.9 to ptr
  %unsafe.load.ptr.8082.11 = load ptr, ptr %unsafe.addr.cast.8081.10, align 1
  store ptr %unsafe.load.ptr.8082.11, ptr @pcc_vthread_io_free_py
  %none.8083.12 = load ptr, ptr @py_None
  %unsafe.global.addr.8084.13 = bitcast ptr @pcc_vthread_io_cached_py to ptr
  %counter_add_ret.8085.14 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.8084.13, i64 -1)
  %unsafe.global.addr.8086.15 = bitcast ptr @pcc_vthread_io_reuse_py to ptr
  %counter_add_ret.8087.16 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.8086.15, i64 1)
  br label %if.end.8078

if.else.8077:
  %unsafe.malloc.8088.17 = call ptr (i64) @malloc(i64 48)
  %unsafe.ptr_is_null.i.8090.19 = ptrtoint ptr %unsafe.malloc.8088.17 to i64
  %unsafe.ptr.null.8091.20 = icmp eq i64 %unsafe.ptr_is_null.i.8090.19, 0
  %b2i64.8092.21 = zext i1 %unsafe.ptr.null.8091.20 to i64
  %icmp.8093.22 = icmp eq i64 %b2i64.8092.21, 0
  br i1 %icmp.8093.22, label %if.then.8094, label %if.else.8095

if.end.8078:
  %node.addr.2.phi = phi ptr [ %unsafe.global.load.ptr.8070.1, %if.then.8076 ], [ %unsafe.malloc.8088.17, %if.end.8096 ]
  %unsafe.ptr_is_null.i.8100.26 = ptrtoint ptr %node.addr.2.phi to i64
  %unsafe.ptr.null.8101.27 = icmp eq i64 %unsafe.ptr_is_null.i.8100.26, 0
  %b2i64.8102.28 = zext i1 %unsafe.ptr.null.8101.27 to i64
  %icmp.8103.29 = icmp eq i64 %b2i64.8102.28, 0
  br i1 %icmp.8103.29, label %if.then.8104, label %if.else.8105

if.then.8094:
  %unsafe.global.addr.8097.23 = bitcast ptr @pcc_vthread_io_alloc_py to ptr
  %counter_add_ret.8098.24 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.8097.23, i64 1)
  br label %if.end.8096

if.else.8095:
  br label %if.end.8096

if.end.8096:
  br label %if.end.8078

if.then.8104:
  %unsafe.addr.8108.31 = getelementptr i8, ptr %node.addr.2.phi, i64 0
  %unsafe.addr.cast.8109.32 = bitcast ptr %unsafe.addr.8108.31 to ptr
  store ptr null, ptr %unsafe.addr.cast.8109.32, align 1
  %none.8110.33 = load ptr, ptr @py_None
  %unsafe.addr.8112.35 = getelementptr i8, ptr %node.addr.2.phi, i64 8
  %unsafe.addr.cast.8113.36 = bitcast ptr %unsafe.addr.8112.35 to ptr
  store i64 -1, ptr %unsafe.addr.cast.8113.36, align 1
  %none.8114.37 = load ptr, ptr @py_None
  %unsafe.addr.8116.39 = getelementptr i8, ptr %node.addr.2.phi, i64 16
  %unsafe.addr.cast.8117.40 = bitcast ptr %unsafe.addr.8116.39 to ptr
  store i64 0, ptr %unsafe.addr.cast.8117.40, align 1
  %none.8118.41 = load ptr, ptr @py_None
  %unsafe.addr.8120.43 = getelementptr i8, ptr %node.addr.2.phi, i64 24
  %unsafe.addr.cast.8121.44 = bitcast ptr %unsafe.addr.8120.43 to ptr
  store i64 -1, ptr %unsafe.addr.cast.8121.44, align 1
  %none.8122.45 = load ptr, ptr @py_None
  %unsafe.addr.8124.47 = getelementptr i8, ptr %node.addr.2.phi, i64 32
  %unsafe.addr.cast.8125.48 = bitcast ptr %unsafe.addr.8124.47 to ptr
  store ptr null, ptr %unsafe.addr.cast.8125.48, align 1
  %none.8126.49 = load ptr, ptr @py_None
  %unsafe.addr.8128.51 = getelementptr i8, ptr %node.addr.2.phi, i64 40
  %unsafe.addr.cast.8129.52 = bitcast ptr %unsafe.addr.8128.51 to ptr
  store ptr null, ptr %unsafe.addr.cast.8129.52, align 1
  %none.8130.53 = load ptr, ptr @py_None
  br label %if.end.8106

if.else.8105:
  br label %if.end.8106

if.end.8106:
  %ret.retain.8132.55 = call ptr (ptr) @pcc_gc_retain(ptr %node.addr.2.phi)
  %ret.tmp.root.8133.56 = alloca ptr
  store ptr null, ptr %ret.tmp.root.8133.56
  %ret.tmp.root.ptr.8134.57 = bitcast ptr %ret.tmp.root.8133.56 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.8134.57, ptr %ret.retain.8132.55)
  %gc.frame.lifo.map.ptr.8135.58 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.8136.59 = bitcast ptr %ret.tmp.root.8133.56 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.8135.58, ptr %gc.frame.lifo.slots.ptr.8136.59)
  %ret.tmp.current.8137.60 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.8134.57)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.8134.57, ptr null)
  %gc.frame.lifo.leave.ptr.8138.61 = bitcast ptr %ret.tmp.root.8133.56 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.8138.61)
  ret ptr %ret.tmp.current.8137.60
}
define external void @user_py_virtual_thread_runtime__io_release(ptr %node) "no-builtins" {
entry:
  %node.addr.2 = alloca ptr
  store ptr %node, ptr %node.addr.2
  %gc.frame.map.ptr.8139.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8140.4 = bitcast ptr %node.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8139.3, ptr %gc.frame.slots.ptr.8140.4)
  %node.gc.slot.8141.5 = bitcast ptr %node.addr.2 to ptr
  %node.8142.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.8141.5)
  %unsafe.addr.8143.7 = getelementptr i8, ptr %node.8142.6, i64 40
  %unsafe.addr.cast.8144.8 = bitcast ptr %unsafe.addr.8143.7 to ptr
  %unsafe.load.ptr.8145.9 = load ptr, ptr %unsafe.addr.cast.8144.8, align 1
  %unsafe.ptr_is_null.i.8147.12 = ptrtoint ptr %unsafe.load.ptr.8145.9 to i64
  %unsafe.ptr.null.8148.13 = icmp eq i64 %unsafe.ptr_is_null.i.8147.12, 0
  %b2i64.8149.14 = zext i1 %unsafe.ptr.null.8148.13 to i64
  %icmp.8150.15 = icmp eq i64 %b2i64.8149.14, 0
  br i1 %icmp.8150.15, label %if.then.8151, label %if.else.8152

if.then.8151:
  call void (ptr) @pcc_gc_scheduler_root_unregister_handle(ptr %unsafe.load.ptr.8145.9)
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 2, i64 3, i64 -1, i64 -1)
  br label %if.end.8153

if.else.8152:
  br label %if.end.8153

if.end.8153:
  %node.gc.slot.8155.17 = bitcast ptr %node.addr.2 to ptr
  %node.8156.18 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.8155.17)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.8156.18, ptr null)
  %node.gc.slot.8157.19 = bitcast ptr %node.addr.2 to ptr
  %node.8158.20 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.8157.19)
  %unsafe.addr.8159.21 = getelementptr i8, ptr %node.8158.20, i64 32
  %unsafe.addr.cast.8160.22 = bitcast ptr %unsafe.addr.8159.21 to ptr
  %unsafe.global.load.ptr.8161.23 = load ptr, ptr @pcc_vthread_io_free_py
  store ptr %unsafe.global.load.ptr.8161.23, ptr %unsafe.addr.cast.8160.22, align 1
  %none.8162.24 = load ptr, ptr @py_None
  %node.gc.slot.8163.25 = bitcast ptr %node.addr.2 to ptr
  %node.8164.26 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.8163.25)
  %unsafe.addr.8165.27 = getelementptr i8, ptr %node.8164.26, i64 40
  %unsafe.addr.cast.8166.28 = bitcast ptr %unsafe.addr.8165.27 to ptr
  store ptr null, ptr %unsafe.addr.cast.8166.28, align 1
  %none.8167.29 = load ptr, ptr @py_None
  %node.gc.slot.8168.30 = bitcast ptr %node.addr.2 to ptr
  %node.8169.31 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %node.gc.slot.8168.30)
  store ptr %node.8169.31, ptr @pcc_vthread_io_free_py
  %none.8170.32 = load ptr, ptr @py_None
  %unsafe.global.addr.8171.33 = bitcast ptr @pcc_vthread_io_cached_py to ptr
  %counter_add_ret.8172.34 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.8171.33, i64 1)
  %gc.frame.leave.ptr.8173.35 = bitcast ptr %node.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8173.35)
  ret void
}
define external i64 @user_py_virtual_thread_runtime__waitset_dispose_locked() "no-builtins" {
entry:
  %unsafe.global.addr.8174.1 = bitcast ptr @pcc_vthread_wait_active_py to ptr
  %unsafe.addr.8175.2 = getelementptr i8, ptr %unsafe.global.addr.8174.1, i64 0
  %unsafe.addr.cast.8176.3 = bitcast ptr %unsafe.addr.8175.2 to ptr
  %unsafe.load.i32.8177.4 = load i32, ptr %unsafe.addr.cast.8176.3, align 1
  %unsafe.i32.to.i64.8178.5 = sext i32 %unsafe.load.i32.8177.4 to i64
  %icmp.8179.6 = icmp ne i64 %unsafe.i32.to.i64.8178.5, 0
  br i1 %icmp.8179.6, label %if.then.8180, label %if.else.8181

if.then.8180:
  ret i64 -1

if.else.8181:
  br label %if.end.8182

if.end.8182:
  %unsafe.global.addr.8183.7 = bitcast ptr @pcc_vthread_waitset_ready_py to ptr
  %unsafe.addr.8184.8 = getelementptr i8, ptr %unsafe.global.addr.8183.7, i64 0
  %unsafe.addr.cast.8185.9 = bitcast ptr %unsafe.addr.8184.8 to ptr
  %unsafe.load.i32.8186.10 = load i32, ptr %unsafe.addr.cast.8185.9, align 1
  %unsafe.i32.to.i64.8187.11 = sext i32 %unsafe.load.i32.8186.10 to i64
  %icmp.8188.12 = icmp ne i64 %unsafe.i32.to.i64.8187.11, 0
  br i1 %icmp.8188.12, label %if.then.8189, label %if.else.8190

if.then.8189:
  %unsafe.global.addr.8192.13 = bitcast ptr @pcc_vthread_waitset_py to ptr
  call void (ptr) @pcc_io_waitset_dispose(ptr %unsafe.global.addr.8192.13)
  br label %if.end.8191

if.else.8190:
  br label %if.end.8191

if.end.8191:
  %unsafe.global.addr.8193.14 = bitcast ptr @pcc_vthread_waitset_ready_py to ptr
  %unsafe.addr.8194.15 = getelementptr i8, ptr %unsafe.global.addr.8193.14, i64 0
  %unsafe.addr.cast.8195.16 = bitcast ptr %unsafe.addr.8194.15 to ptr
  %unsafe.i64.to.i32.8196.17 = trunc i64 0 to i32
  store i32 %unsafe.i64.to.i32.8196.17, ptr %unsafe.addr.cast.8195.16, align 1
  %none.8197.18 = load ptr, ptr @py_None
  %unsafe.global.addr.8198.19 = bitcast ptr @pcc_vthread_waitset_backend_py to ptr
  %unsafe.addr.8199.20 = getelementptr i8, ptr %unsafe.global.addr.8198.19, i64 0
  %unsafe.addr.cast.8200.21 = bitcast ptr %unsafe.addr.8199.20 to ptr
  %unsafe.i64.to.i32.8201.22 = trunc i64 0 to i32
  store i32 %unsafe.i64.to.i32.8201.22, ptr %unsafe.addr.cast.8200.21, align 1
  %none.8202.23 = load ptr, ptr @py_None
  %unsafe.global.addr.8203.24 = bitcast ptr @pcc_vthread_wait_active_py to ptr
  %unsafe.addr.8204.25 = getelementptr i8, ptr %unsafe.global.addr.8203.24, i64 0
  %unsafe.addr.cast.8205.26 = bitcast ptr %unsafe.addr.8204.25 to ptr
  %unsafe.i64.to.i32.8206.27 = trunc i64 0 to i32
  store i32 %unsafe.i64.to.i32.8206.27, ptr %unsafe.addr.cast.8205.26, align 1
  %none.8207.28 = load ptr, ptr @py_None
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__waitset_init() "no-builtins" {
entry:
  %ov.flag.81 = alloca i32
  %ov.flag.64 = alloca i32
  %ov.flag.47 = alloca i32
  %ov.flag.34 = alloca i32
  %requested.addr.9 = alloca ptr
  store ptr null, ptr %requested.addr.9
  %unsafe.global.addr.8208.1 = bitcast ptr @pcc_vthread_waitset_ready_py to ptr
  %unsafe.addr.8209.2 = getelementptr i8, ptr %unsafe.global.addr.8208.1, i64 0
  %unsafe.addr.cast.8210.3 = bitcast ptr %unsafe.addr.8209.2 to ptr
  %unsafe.load.i32.8211.4 = load i32, ptr %unsafe.addr.cast.8210.3, align 1
  %unsafe.i32.to.i64.8212.5 = sext i32 %unsafe.load.i32.8211.4 to i64
  %icmp.8213.6 = icmp ne i64 %unsafe.i32.to.i64.8212.5, 0
  %gc.frame.map.ptr.8219.10 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8220.11 = bitcast ptr %requested.addr.9 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8219.10, ptr %gc.frame.slots.ptr.8220.11)
  br i1 %icmp.8213.6, label %if.then.8214, label %if.else.8215

if.then.8214:
  %gc.frame.leave.ptr.8221.12 = bitcast ptr %requested.addr.9 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8221.12)
  ret i64 0

if.else.8215:
  br label %if.end.8216

if.end.8216:
  %.7 = getelementptr inbounds [23 x i8], ptr @unsafe.cstr.8217, i32 0, i32 0
  %extern.pcc_platform_getenv.ret.8218.8 = call ptr (ptr) @pcc_platform_getenv(ptr %.7)
  store ptr %extern.pcc_platform_getenv.ret.8218.8, ptr %requested.addr.9
  %requested.gc.slot.8222.13 = bitcast ptr %requested.addr.9 to ptr
  %requested.8223.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %requested.gc.slot.8222.13)
  %.15 = getelementptr inbounds [5 x i8], ptr @unsafe.cstr.8224, i32 0, i32 0
  %cstr_equals_ret.8225.16 = call i64 (ptr, ptr) @user_py_virtual_thread_runtime__cstr_equals(ptr %requested.8223.14, ptr %.15)
  %requested.gc.slot.8226.18 = bitcast ptr %requested.addr.9 to ptr
  %requested.8227.19 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %requested.gc.slot.8226.18)
  %.20 = getelementptr inbounds [7 x i8], ptr @unsafe.cstr.8228, i32 0, i32 0
  %cstr_equals_ret.8229.21 = call i64 (ptr, ptr) @user_py_virtual_thread_runtime__cstr_equals(ptr %requested.8227.19, ptr %.20)
  %requested.gc.slot.8230.23 = bitcast ptr %requested.addr.9 to ptr
  %requested.8231.24 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %requested.gc.slot.8230.23)
  %.25 = getelementptr inbounds [6 x i8], ptr @unsafe.cstr.8232, i32 0, i32 0
  %cstr_equals_ret.8233.26 = call i64 (ptr, ptr) @user_py_virtual_thread_runtime__cstr_equals(ptr %requested.8231.24, ptr %.25)
  %icmp.8235.30 = icmp ne i64 %cstr_equals_ret.8229.21, 0
  br i1 %icmp.8235.30, label %cond.right.8236, label %if.else.8241

cond.right.8236:
  %extern.pcc_io_waitset_kqueue_available.ret.8237.31 = call i32 () @pcc_io_waitset_kqueue_available()
  %m.int_tagged.32 = inttoptr i64 1 to ptr
  %sext.8238.33 = sext i32 %extern.pcc_io_waitset_kqueue_available.ret.8237.31 to i64
  %m.int.bits.35 = ptrtoint ptr %m.int_tagged.32 to i64
  %m.int.low.36 = and i64 %m.int.bits.35, 1
  %m.int.tagged.37 = icmp eq i64 %m.int.low.36, 1
  br i1 %m.int.tagged.37, label %m.int.unbox.fast.5, label %m.int.unbox.slow.5

m.int.unbox.fast.5:
  %m.int.untag.38 = ashr i64 %m.int.bits.35, 1
  br label %m.int.unbox.join.5

m.int.unbox.slow.5:
  %m.int_unbox.slow.39 = call i64 (ptr, ptr) @py_int_to_i64_lane(ptr %m.int_tagged.32, ptr %ov.flag.34)
  br label %m.int.unbox.join.5

m.int.unbox.join.5:
  %m.int_unbox.40 = phi i64 [%m.int.untag.38, %m.int.unbox.fast.5], [%m.int_unbox.slow.39, %m.int.unbox.slow.5]
  %dyn.scalar.icmp.8239.41 = icmp ne i64 %sext.8238.33, %m.int_unbox.40
  br i1 %dyn.scalar.icmp.8239.41, label %if.then.8240, label %if.else.8241

if.then.8240:
  br label %if.end.8242

if.else.8241:
  %icmp.8244.43 = icmp ne i64 %cstr_equals_ret.8233.26, 0
  br i1 %icmp.8244.43, label %cond.right.8245, label %if.else.8250

if.end.8242:
  %backend.addr.28.phi.4 = phi i64 [ 1, %if.then.8240 ], [ %backend.addr.28.phi.3, %if.end.8251 ]
  %unsafe.global.addr.8282.89 = bitcast ptr @pcc_vthread_waitset_py to ptr
  %extern.pcc_io_waitset_init.ret.8285.93 = call i64 (ptr, i64) @pcc_io_waitset_init(ptr %unsafe.global.addr.8282.89, i64 %backend.addr.28.phi.4)
  %icmp.8286.94 = icmp ne i64 %extern.pcc_io_waitset_init.ret.8285.93, 0
  br i1 %icmp.8286.94, label %if.then.8287, label %if.else.8288

cond.right.8245:
  %extern.pcc_io_waitset_epoll_available.ret.8246.44 = call i32 () @pcc_io_waitset_epoll_available()
  %m.int_tagged.45 = inttoptr i64 1 to ptr
  %sext.8247.46 = sext i32 %extern.pcc_io_waitset_epoll_available.ret.8246.44 to i64
  %m.int.bits.48 = ptrtoint ptr %m.int_tagged.45 to i64
  %m.int.low.49 = and i64 %m.int.bits.48, 1
  %m.int.tagged.50 = icmp eq i64 %m.int.low.49, 1
  br i1 %m.int.tagged.50, label %m.int.unbox.fast.12, label %m.int.unbox.slow.12

m.int.unbox.fast.12:
  %m.int.untag.51 = ashr i64 %m.int.bits.48, 1
  br label %m.int.unbox.join.12

m.int.unbox.slow.12:
  %m.int_unbox.slow.52 = call i64 (ptr, ptr) @py_int_to_i64_lane(ptr %m.int_tagged.45, ptr %ov.flag.47)
  br label %m.int.unbox.join.12

m.int.unbox.join.12:
  %m.int_unbox.53 = phi i64 [%m.int.untag.51, %m.int.unbox.fast.12], [%m.int_unbox.slow.52, %m.int.unbox.slow.12]
  %dyn.scalar.icmp.8248.54 = icmp ne i64 %sext.8247.46, %m.int_unbox.53
  br i1 %dyn.scalar.icmp.8248.54, label %if.then.8249, label %if.else.8250

if.then.8249:
  br label %if.end.8251

if.else.8250:
  %icmp.8253.56 = icmp eq i64 %cstr_equals_ret.8225.16, 0
  br i1 %icmp.8253.56, label %cond.right.8254, label %if.else.8265

if.end.8251:
  %backend.addr.28.phi.3 = phi i64 [ 2, %if.then.8249 ], [ %backend.addr.28.phi.2, %if.end.8266 ]
  br label %if.end.8242

cond.right.8254:
  %icmp.8256.58 = icmp eq i64 %cstr_equals_ret.8229.21, 0
  br i1 %icmp.8256.58, label %cond.right.8257, label %if.else.8265

cond.right.8257:
  %icmp.8259.60 = icmp eq i64 %cstr_equals_ret.8233.26, 0
  br i1 %icmp.8259.60, label %cond.right.8260, label %if.else.8265

cond.right.8260:
  %extern.pcc_io_waitset_kqueue_available.ret.8261.61 = call i32 () @pcc_io_waitset_kqueue_available()
  %m.int_tagged.62 = inttoptr i64 1 to ptr
  %sext.8262.63 = sext i32 %extern.pcc_io_waitset_kqueue_available.ret.8261.61 to i64
  %m.int.bits.65 = ptrtoint ptr %m.int_tagged.62 to i64
  %m.int.low.66 = and i64 %m.int.bits.65, 1
  %m.int.tagged.67 = icmp eq i64 %m.int.low.66, 1
  br i1 %m.int.tagged.67, label %m.int.unbox.fast.21, label %m.int.unbox.slow.21

m.int.unbox.fast.21:
  %m.int.untag.68 = ashr i64 %m.int.bits.65, 1
  br label %m.int.unbox.join.21

m.int.unbox.slow.21:
  %m.int_unbox.slow.69 = call i64 (ptr, ptr) @py_int_to_i64_lane(ptr %m.int_tagged.62, ptr %ov.flag.64)
  br label %m.int.unbox.join.21

m.int.unbox.join.21:
  %m.int_unbox.70 = phi i64 [%m.int.untag.68, %m.int.unbox.fast.21], [%m.int_unbox.slow.69, %m.int.unbox.slow.21]
  %dyn.scalar.icmp.8263.71 = icmp ne i64 %sext.8262.63, %m.int_unbox.70
  br i1 %dyn.scalar.icmp.8263.71, label %if.then.8264, label %if.else.8265

if.then.8264:
  br label %if.end.8266

if.else.8265:
  %icmp.8268.73 = icmp eq i64 %cstr_equals_ret.8225.16, 0
  br i1 %icmp.8268.73, label %cond.right.8269, label %if.else.8280

if.end.8266:
  %backend.addr.28.phi.2 = phi i64 [ 1, %if.then.8264 ], [ %backend.addr.28.phi.1, %if.end.8281 ]
  br label %if.end.8251

cond.right.8269:
  %icmp.8271.75 = icmp eq i64 %cstr_equals_ret.8229.21, 0
  br i1 %icmp.8271.75, label %cond.right.8272, label %if.else.8280

cond.right.8272:
  %icmp.8274.77 = icmp eq i64 %cstr_equals_ret.8233.26, 0
  br i1 %icmp.8274.77, label %cond.right.8275, label %if.else.8280

cond.right.8275:
  %extern.pcc_io_waitset_epoll_available.ret.8276.78 = call i32 () @pcc_io_waitset_epoll_available()
  %m.int_tagged.79 = inttoptr i64 1 to ptr
  %sext.8277.80 = sext i32 %extern.pcc_io_waitset_epoll_available.ret.8276.78 to i64
  %m.int.bits.82 = ptrtoint ptr %m.int_tagged.79 to i64
  %m.int.low.83 = and i64 %m.int.bits.82, 1
  %m.int.tagged.84 = icmp eq i64 %m.int.low.83, 1
  br i1 %m.int.tagged.84, label %m.int.unbox.fast.30, label %m.int.unbox.slow.30

m.int.unbox.fast.30:
  %m.int.untag.85 = ashr i64 %m.int.bits.82, 1
  br label %m.int.unbox.join.30

m.int.unbox.slow.30:
  %m.int_unbox.slow.86 = call i64 (ptr, ptr) @py_int_to_i64_lane(ptr %m.int_tagged.79, ptr %ov.flag.81)
  br label %m.int.unbox.join.30

m.int.unbox.join.30:
  %m.int_unbox.87 = phi i64 [%m.int.untag.85, %m.int.unbox.fast.30], [%m.int_unbox.slow.86, %m.int.unbox.slow.30]
  %dyn.scalar.icmp.8278.88 = icmp ne i64 %sext.8277.80, %m.int_unbox.87
  br i1 %dyn.scalar.icmp.8278.88, label %if.then.8279, label %if.else.8280

if.then.8279:
  br label %if.end.8281

if.else.8280:
  br label %if.end.8281

if.end.8281:
  %backend.addr.28.phi.1 = phi i64 [ 2, %if.then.8279 ], [ 0, %if.else.8280 ]
  br label %if.end.8266

if.then.8287:
  %extern.pcc_io_waitset_init.ret.8291.96 = call i64 (ptr, i64) @pcc_io_waitset_init(ptr %unsafe.global.addr.8282.89, i64 0)
  %icmp.8292.97 = icmp ne i64 %extern.pcc_io_waitset_init.ret.8291.96, 0
  br i1 %icmp.8292.97, label %if.then.8293, label %if.else.8294

if.else.8288:
  br label %if.end.8289

if.end.8289:
  %backend.addr.28.phi = phi i64 [ %backend.addr.28.phi.4, %if.else.8288 ], [ 0, %if.end.8295 ]
  %unsafe.global.addr.8297.99 = bitcast ptr @pcc_vthread_waitset_backend_py to ptr
  %unsafe.addr.8298.100 = getelementptr i8, ptr %unsafe.global.addr.8297.99, i64 0
  %unsafe.addr.cast.8299.101 = bitcast ptr %unsafe.addr.8298.100 to ptr
  %unsafe.i64.to.i32.8301.103 = trunc i64 %backend.addr.28.phi to i32
  store i32 %unsafe.i64.to.i32.8301.103, ptr %unsafe.addr.cast.8299.101, align 1
  %none.8302.104 = load ptr, ptr @py_None
  %unsafe.global.addr.8303.105 = bitcast ptr @pcc_vthread_wait_active_py to ptr
  %unsafe.addr.8304.106 = getelementptr i8, ptr %unsafe.global.addr.8303.105, i64 0
  %unsafe.addr.cast.8305.107 = bitcast ptr %unsafe.addr.8304.106 to ptr
  %unsafe.i64.to.i32.8306.108 = trunc i64 0 to i32
  store i32 %unsafe.i64.to.i32.8306.108, ptr %unsafe.addr.cast.8305.107, align 1
  %none.8307.109 = load ptr, ptr @py_None
  %unsafe.global.addr.8308.110 = bitcast ptr @pcc_vthread_waitset_ready_py to ptr
  %unsafe.addr.8309.111 = getelementptr i8, ptr %unsafe.global.addr.8308.110, i64 0
  %unsafe.addr.cast.8310.112 = bitcast ptr %unsafe.addr.8309.111 to ptr
  %unsafe.i64.to.i32.8311.113 = trunc i64 1 to i32
  store i32 %unsafe.i64.to.i32.8311.113, ptr %unsafe.addr.cast.8310.112, align 1
  %none.8312.114 = load ptr, ptr @py_None
  %unsafe.global.load.ptr.8313.115 = load ptr, ptr @pcc_vthread_io_head_py
  br label %while.cond.8314

if.then.8293:
  %gc.frame.leave.ptr.8296.98 = bitcast ptr %requested.addr.9 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8296.98)
  ret i64 -1

if.else.8294:
  br label %if.end.8295

if.end.8295:
  br label %if.end.8289

while.cond.8314:
  %node.addr.116.phi = phi ptr [ %unsafe.global.load.ptr.8313.115, %if.end.8289 ], [ %unsafe.load.ptr.8337.133, %while.latch.8316 ]
  %unsafe.ptr_is_null.i.8319.118 = ptrtoint ptr %node.addr.116.phi to i64
  %unsafe.ptr.null.8320.119 = icmp eq i64 %unsafe.ptr_is_null.i.8319.118, 0
  %b2i64.8321.120 = zext i1 %unsafe.ptr.null.8320.119 to i64
  %icmp.8322.121 = icmp eq i64 %b2i64.8321.120, 0
  br i1 %icmp.8322.121, label %while.body.8315, label %while.end.8317

while.body.8315:
  %unsafe.addr.8324.123 = getelementptr i8, ptr %node.addr.116.phi, i64 8
  %unsafe.addr.cast.8325.124 = bitcast ptr %unsafe.addr.8324.123 to ptr
  %unsafe.load.i64.8326.125 = load i64, ptr %unsafe.addr.cast.8325.124, align 1
  %io_refresh_registered_ret.8327.126 = call i64 (i64) @user_py_virtual_thread_runtime__io_refresh_registered(i64 %unsafe.load.i64.8326.125)
  %icmp.8328.127 = icmp ne i64 %io_refresh_registered_ret.8327.126, 0
  br i1 %icmp.8328.127, label %if.then.8329, label %if.else.8330

while.latch.8316:
  br label %while.cond.8314

while.end.8317:
  %gc.frame.leave.ptr.8338.134 = bitcast ptr %requested.addr.9 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8338.134)
  ret i64 0

if.then.8329:
  %waitset_dispose_locked_ret.8332.128 = call i64 () @user_py_virtual_thread_runtime__waitset_dispose_locked()
  %gc.frame.leave.ptr.8333.129 = bitcast ptr %requested.addr.9 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8333.129)
  ret i64 -1

if.else.8330:
  br label %if.end.8331

if.end.8331:
  %unsafe.addr.8335.131 = getelementptr i8, ptr %node.addr.116.phi, i64 32
  %unsafe.addr.cast.8336.132 = bitcast ptr %unsafe.addr.8335.131 to ptr
  %unsafe.load.ptr.8337.133 = load ptr, ptr %unsafe.addr.cast.8336.132, align 1
  br label %while.latch.8316
}
define external i64 @user_py_virtual_thread_runtime__cstr_equals(ptr %left, ptr %right) "no-builtins" {
entry:
  %left.addr.3 = alloca ptr
  %right.addr.6 = alloca ptr
  store ptr %left, ptr %left.addr.3
  %gc.frame.map.ptr.8339.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8340.5 = bitcast ptr %left.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8339.4, ptr %gc.frame.slots.ptr.8340.5)
  store ptr %right, ptr %right.addr.6
  %gc.frame.map.ptr.8341.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8342.8 = bitcast ptr %right.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8341.7, ptr %gc.frame.slots.ptr.8342.8)
  %left.gc.slot.8343.9 = bitcast ptr %left.addr.3 to ptr
  %left.8344.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %left.gc.slot.8343.9)
  %unsafe.ptr_is_null.i.8345.11 = ptrtoint ptr %left.8344.10 to i64
  %unsafe.ptr.null.8346.12 = icmp eq i64 %unsafe.ptr_is_null.i.8345.11, 0
  br i1 %unsafe.ptr.null.8346.12, label %if.then.8352, label %cond.right.8347

cond.right.8347:
  %right.gc.slot.8348.13 = bitcast ptr %right.addr.6 to ptr
  %right.8349.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %right.gc.slot.8348.13)
  %unsafe.ptr_is_null.i.8350.15 = ptrtoint ptr %right.8349.14 to i64
  %unsafe.ptr.null.8351.16 = icmp eq i64 %unsafe.ptr_is_null.i.8350.15, 0
  br i1 %unsafe.ptr.null.8351.16, label %if.then.8352, label %if.else.8353

if.then.8352:
  %gc.frame.leave.ptr.8355.17 = bitcast ptr %right.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8355.17)
  %gc.frame.leave.ptr.8356.18 = bitcast ptr %left.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8356.18)
  ret i64 0

if.else.8353:
  br label %if.end.8354

if.end.8354:
  br label %while.cond.8357

while.cond.8357:
  %index.addr.19.phi = phi i64 [ 0, %if.end.8354 ], [ %add.8391.46, %while.latch.8359 ]
  %icmp.8362.21 = icmp slt i64 %index.addr.19.phi, 16
  br i1 %icmp.8362.21, label %while.body.8358, label %while.end.8360

while.body.8358:
  %left.gc.slot.8363.22 = bitcast ptr %left.addr.3 to ptr
  %left.8364.23 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %left.gc.slot.8363.22)
  %unsafe.addr.8366.25 = getelementptr i8, ptr %left.8364.23, i64 %index.addr.19.phi
  %unsafe.load.i8.8367.26 = load i8, ptr %unsafe.addr.8366.25, align 1
  %unsafe.i8.to.i64.8368.27 = sext i8 %unsafe.load.i8.8367.26 to i64
  %right.gc.slot.8369.29 = bitcast ptr %right.addr.6 to ptr
  %right.8370.30 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %right.gc.slot.8369.29)
  %unsafe.addr.8372.32 = getelementptr i8, ptr %right.8370.30, i64 %index.addr.19.phi
  %unsafe.load.i8.8373.33 = load i8, ptr %unsafe.addr.8372.32, align 1
  %unsafe.i8.to.i64.8374.34 = sext i8 %unsafe.load.i8.8373.33 to i64
  %icmp.8377.38 = icmp ne i64 %unsafe.i8.to.i64.8368.27, %unsafe.i8.to.i64.8374.34
  br i1 %icmp.8377.38, label %if.then.8378, label %if.else.8379

while.latch.8359:
  br label %while.cond.8357

while.end.8360:
  %gc.frame.leave.ptr.8392.47 = bitcast ptr %right.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8392.47)
  %gc.frame.leave.ptr.8393.48 = bitcast ptr %left.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8393.48)
  ret i64 0

if.then.8378:
  %gc.frame.leave.ptr.8381.39 = bitcast ptr %right.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8381.39)
  %gc.frame.leave.ptr.8382.40 = bitcast ptr %left.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8382.40)
  ret i64 0

if.else.8379:
  br label %if.end.8380

if.end.8380:
  %icmp.8384.42 = icmp eq i64 %unsafe.i8.to.i64.8368.27, 0
  br i1 %icmp.8384.42, label %if.then.8385, label %if.else.8386

if.then.8385:
  %gc.frame.leave.ptr.8388.43 = bitcast ptr %right.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8388.43)
  %gc.frame.leave.ptr.8389.44 = bitcast ptr %left.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8389.44)
  ret i64 1

if.else.8386:
  br label %if.end.8387

if.end.8387:
  %add.8391.46 = add i64 %index.addr.19.phi, 1
  br label %while.latch.8359
}
define external i64 @user_py_virtual_thread_runtime__io_interrupt_locked() "no-builtins" {
entry:
  %unsafe.global.addr.8394.1 = bitcast ptr @pcc_vthread_wait_active_py to ptr
  %unsafe.addr.8395.2 = getelementptr i8, ptr %unsafe.global.addr.8394.1, i64 0
  %unsafe.addr.cast.8396.3 = bitcast ptr %unsafe.addr.8395.2 to ptr
  %unsafe.load.i32.8397.4 = load i32, ptr %unsafe.addr.cast.8396.3, align 1
  %unsafe.i32.to.i64.8398.5 = sext i32 %unsafe.load.i32.8397.4 to i64
  %icmp.8399.6 = icmp eq i64 %unsafe.i32.to.i64.8398.5, 0
  br i1 %icmp.8399.6, label %if.then.8400, label %if.else.8401

if.then.8400:
  ret i64 0

if.else.8401:
  br label %if.end.8402

if.end.8402:
  %unsafe.global.addr.8403.7 = bitcast ptr @pcc_vthread_waitset_ready_py to ptr
  %unsafe.addr.8404.8 = getelementptr i8, ptr %unsafe.global.addr.8403.7, i64 0
  %unsafe.addr.cast.8405.9 = bitcast ptr %unsafe.addr.8404.8 to ptr
  %unsafe.load.i32.8406.10 = load i32, ptr %unsafe.addr.cast.8405.9, align 1
  %unsafe.i32.to.i64.8407.11 = sext i32 %unsafe.load.i32.8406.10 to i64
  %icmp.8408.12 = icmp eq i64 %unsafe.i32.to.i64.8407.11, 0
  br i1 %icmp.8408.12, label %if.then.8409, label %if.else.8410

if.then.8409:
  ret i64 0

if.else.8410:
  br label %if.end.8411

if.end.8411:
  %unsafe.global.addr.8412.13 = bitcast ptr @pcc_vthread_waitset_py to ptr
  %extern.pcc_io_waitset_interrupt.ret.8413.14 = call i64 (ptr) @pcc_io_waitset_interrupt(ptr %unsafe.global.addr.8412.13)
  ret i64 %extern.pcc_io_waitset_interrupt.ret.8413.14
}
define external i64 @user_py_virtual_thread_runtime__io_refresh_registered(i64 %fd) "no-builtins" {
entry:
  %unsafe.global.load.ptr.8414.5 = load ptr, ptr @pcc_vthread_io_head_py
  br label %while.cond.8415

while.cond.8415:
  %deadline.addr.4.phi.2 = phi i64 [ -1, %entry ], [ %deadline.addr.4.phi.1, %while.latch.8417 ]
  %interest.addr.3.phi.1 = phi i64 [ 0, %entry ], [ %interest.addr.3.phi, %while.latch.8417 ]
  %node.addr.6.phi = phi ptr [ %unsafe.global.load.ptr.8414.5, %entry ], [ %unsafe.load.ptr.8465.44, %while.latch.8417 ]
  %unsafe.ptr_is_null.i.8420.8 = ptrtoint ptr %node.addr.6.phi to i64
  %unsafe.ptr.null.8421.9 = icmp eq i64 %unsafe.ptr_is_null.i.8420.8, 0
  %b2i64.8422.10 = zext i1 %unsafe.ptr.null.8421.9 to i64
  %icmp.8423.11 = icmp eq i64 %b2i64.8422.10, 0
  br i1 %icmp.8423.11, label %while.body.8416, label %while.end.8418

while.body.8416:
  %unsafe.addr.8425.13 = getelementptr i8, ptr %node.addr.6.phi, i64 8
  %unsafe.addr.cast.8426.14 = bitcast ptr %unsafe.addr.8425.13 to ptr
  %unsafe.load.i64.8427.15 = load i64, ptr %unsafe.addr.cast.8426.14, align 1
  %icmp.8429.17 = icmp eq i64 %unsafe.load.i64.8427.15, %fd
  br i1 %icmp.8429.17, label %if.then.8430, label %if.else.8431

while.latch.8417:
  br label %while.cond.8415

while.end.8418:
  %unsafe.global.addr.8466.45 = bitcast ptr @pcc_vthread_waitset_py to ptr
  %extern.pcc_io_waitset_remove.ret.8469.49 = call i64 (ptr, i64) @pcc_io_waitset_remove(ptr %unsafe.global.addr.8466.45, i64 %fd)
  %icmp.8471.52 = icmp eq i64 %interest.addr.3.phi.1, 0
  br i1 %icmp.8471.52, label %if.then.8472, label %if.else.8473

if.then.8430:
  %unsafe.addr.8434.19 = getelementptr i8, ptr %node.addr.6.phi, i64 16
  %unsafe.addr.cast.8435.20 = bitcast ptr %unsafe.addr.8434.19 to ptr
  %unsafe.load.i64.8436.21 = load i64, ptr %unsafe.addr.cast.8435.20, align 1
  %icmp.8438.24 = icmp eq i64 %unsafe.load.i64.8436.21, 0
  br i1 %icmp.8438.24, label %if.then.8439, label %if.else.8440

if.else.8431:
  br label %if.end.8432

if.end.8432:
  %deadline.addr.4.phi.1 = phi i64 [ %deadline.addr.4.phi.2, %if.else.8431 ], [ %deadline.addr.4.phi, %if.end.8460 ]
  %interest.addr.3.phi = phi i64 [ %interest.addr.3.phi.1, %if.else.8431 ], [ %or.8444.27, %if.end.8460 ]
  %unsafe.addr.8463.42 = getelementptr i8, ptr %node.addr.6.phi, i64 32
  %unsafe.addr.cast.8464.43 = bitcast ptr %unsafe.addr.8463.42 to ptr
  %unsafe.load.ptr.8465.44 = load ptr, ptr %unsafe.addr.cast.8464.43, align 1
  br label %while.latch.8417

if.then.8439:
  br label %if.end.8441

if.else.8440:
  br label %if.end.8441

if.end.8441:
  %events.addr.22.phi = phi i64 [ 1, %if.then.8439 ], [ %unsafe.load.i64.8436.21, %if.else.8440 ]
  %or.8444.27 = or i64 %interest.addr.3.phi.1, %events.addr.22.phi
  %unsafe.addr.8446.29 = getelementptr i8, ptr %node.addr.6.phi, i64 24
  %unsafe.addr.cast.8447.30 = bitcast ptr %unsafe.addr.8446.29 to ptr
  %unsafe.load.i64.8448.31 = load i64, ptr %unsafe.addr.cast.8447.30, align 1
  %icmp.8450.34 = icmp sge i64 %unsafe.load.i64.8448.31, 0
  br i1 %icmp.8450.34, label %cond.right.8451, label %if.else.8459

cond.right.8451:
  %icmp.8453.36 = icmp slt i64 %deadline.addr.4.phi.2, 0
  br i1 %icmp.8453.36, label %if.then.8458, label %cond.right.8454

cond.right.8454:
  %icmp.8457.39 = icmp slt i64 %unsafe.load.i64.8448.31, %deadline.addr.4.phi.2
  br i1 %icmp.8457.39, label %if.then.8458, label %if.else.8459

if.then.8458:
  br label %if.end.8460

if.else.8459:
  br label %if.end.8460

if.end.8460:
  %deadline.addr.4.phi = phi i64 [ %unsafe.load.i64.8448.31, %if.then.8458 ], [ %deadline.addr.4.phi.2, %if.else.8459 ]
  br label %if.end.8432

if.then.8472:
  br label %if.end.8474

if.else.8473:
  %extern.pcc_io_waitset_add.ret.8479.57 = call i64 (ptr, i64, i64, i64, i64) @pcc_io_waitset_add(ptr %unsafe.global.addr.8466.45, i64 %fd, i64 %interest.addr.3.phi.1, i64 %deadline.addr.4.phi.2, i64 0)
  br label %if.end.8474

if.end.8474:
  %result.addr.50.phi.1 = phi i64 [ 0, %if.then.8472 ], [ %extern.pcc_io_waitset_add.ret.8479.57, %if.else.8473 ]
  %io_interrupt_locked_ret.8480.58 = call i64 () @user_py_virtual_thread_runtime__io_interrupt_locked()
  %icmp.8481.59 = icmp ne i64 %io_interrupt_locked_ret.8480.58, 0
  br i1 %icmp.8481.59, label %if.then.8482, label %if.else.8483

if.then.8482:
  br label %if.end.8484

if.else.8483:
  br label %if.end.8484

if.end.8484:
  %result.addr.50.phi = phi i64 [ -1, %if.then.8482 ], [ %result.addr.50.phi.1, %if.else.8483 ]
  ret i64 %result.addr.50.phi
}
define external i64 @user_py_virtual_thread_runtime__io_refresh(i64 %fd) "no-builtins" {
entry:
  %waitset_init_ret.8486.3 = call i64 () @user_py_virtual_thread_runtime__waitset_init()
  %icmp.8487.4 = icmp ne i64 %waitset_init_ret.8486.3, 0
  br i1 %icmp.8487.4, label %if.then.8488, label %if.else.8489

if.then.8488:
  ret i64 -1

if.else.8489:
  br label %if.end.8490

if.end.8490:
  %io_refresh_registered_ret.8492.6 = call i64 (i64) @user_py_virtual_thread_runtime__io_refresh_registered(i64 %fd)
  ret i64 %io_refresh_registered_ret.8492.6
}
define external i64 @user_py_virtual_thread_runtime__io_cancel(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  %previous.addr.35 = alloca ptr
  store ptr null, ptr %previous.addr.35
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.8493.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8494.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8493.3, ptr %gc.frame.slots.ptr.8494.4)
  %vthread.gc.slot.8495.5 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8496.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8495.5)
  %unsafe.addr.8497.7 = getelementptr i8, ptr %vthread.8496.6, i64 64
  %unsafe.addr.cast.8498.8 = bitcast ptr %unsafe.addr.8497.7 to ptr
  %unsafe.load.ptr.8499.9 = load ptr, ptr %unsafe.addr.cast.8498.8, align 1
  %unsafe.ptr_is_null.i.8501.12 = ptrtoint ptr %unsafe.load.ptr.8499.9 to i64
  %unsafe.ptr.null.8502.13 = icmp eq i64 %unsafe.ptr_is_null.i.8501.12, 0
  %gc.frame.map.ptr.8609.101 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.8610.102 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.8609.101, ptr %gc.frame.slots.ptr.8610.102)
  br i1 %unsafe.ptr.null.8502.13, label %if.then.8503, label %if.else.8504

if.then.8503:
  %vthread.gc.slot.8506.14 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8507.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8506.14)
  %unsafe.addr.8508.16 = getelementptr i8, ptr %vthread.8507.15, i64 120
  %unsafe.addr.cast.8509.17 = bitcast ptr %unsafe.addr.8508.16 to ptr
  %unsafe.load.i64.8510.18 = load i64, ptr %unsafe.addr.cast.8509.17, align 1
  %icmp.8512.21 = icmp eq i64 %unsafe.load.i64.8510.18, 2
  br i1 %icmp.8512.21, label %if.then.8516, label %cond.right.8513

if.else.8504:
  br label %if.end.8505

if.end.8505:
  %unsafe.addr.8526.31 = getelementptr i8, ptr %unsafe.load.ptr.8499.9, i64 8
  %unsafe.addr.cast.8527.32 = bitcast ptr %unsafe.addr.8526.31 to ptr
  %unsafe.load.i64.8528.33 = load i64, ptr %unsafe.addr.cast.8527.32, align 1
  store ptr null, ptr %previous.addr.35
  %unsafe.global.load.ptr.8529.36 = load ptr, ptr @pcc_vthread_io_head_py
  br label %while.cond.8530

cond.right.8513:
  %icmp.8515.23 = icmp eq i64 %unsafe.load.i64.8510.18, 3
  br i1 %icmp.8515.23, label %if.then.8516, label %if.else.8517

if.then.8516:
  %vthread.gc.slot.8519.24 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8520.25 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8519.24)
  %unsafe.addr.8521.26 = getelementptr i8, ptr %vthread.8520.25, i64 120
  %unsafe.addr.cast.8522.27 = bitcast ptr %unsafe.addr.8521.26 to ptr
  store i64 0, ptr %unsafe.addr.cast.8522.27, align 1
  %none.8523.28 = load ptr, ptr @py_None
  br label %if.end.8518

if.else.8517:
  br label %if.end.8518

if.end.8518:
  %gc.frame.leave.ptr.8524.29 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8524.29)
  %gc.frame.leave.ptr.8611.103 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8611.103)
  ret i64 0

while.cond.8530:
  %node.addr.37.phi = phi ptr [ %unsafe.global.load.ptr.8529.36, %if.end.8505 ], [ %unsafe.load.ptr.8617.109, %while.latch.8532 ]
  %previous.owned.98.phi = phi i1 [ 0, %if.end.8505 ], [ 0, %while.latch.8532 ]
  %unsafe.ptr_is_null.i.8535.39 = ptrtoint ptr %node.addr.37.phi to i64
  %unsafe.ptr.null.8536.40 = icmp eq i64 %unsafe.ptr_is_null.i.8535.39, 0
  %b2i64.8537.41 = zext i1 %unsafe.ptr.null.8536.40 to i64
  %icmp.8538.42 = icmp eq i64 %b2i64.8537.41, 0
  br i1 %icmp.8538.42, label %while.body.8531, label %while.end.8533

while.body.8531:
  %unsafe.ptr.eq.l.8540.44 = ptrtoint ptr %node.addr.37.phi to i64
  %unsafe.ptr.eq.r.8542.46 = ptrtoint ptr %unsafe.load.ptr.8499.9 to i64
  %unsafe.ptr.eq.8543.47 = icmp eq i64 %unsafe.ptr.eq.l.8540.44, %unsafe.ptr.eq.r.8542.46
  br i1 %unsafe.ptr.eq.8543.47, label %if.then.8544, label %if.else.8545

while.latch.8532:
  br label %while.cond.8530

while.end.8533:
  %vthread.gc.slot.8618.110 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8619.111 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8618.110)
  %unsafe.addr.8620.112 = getelementptr i8, ptr %vthread.8619.111, i64 64
  %unsafe.addr.cast.8621.113 = bitcast ptr %unsafe.addr.8620.112 to ptr
  store ptr null, ptr %unsafe.addr.cast.8621.113, align 1
  %none.8622.114 = load ptr, ptr @py_None
  %vthread.gc.slot.8623.115 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8624.116 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8623.115)
  %unsafe.addr.8625.117 = getelementptr i8, ptr %vthread.8624.116, i64 120
  %unsafe.addr.cast.8626.118 = bitcast ptr %unsafe.addr.8625.117 to ptr
  %unsafe.load.i64.8627.119 = load i64, ptr %unsafe.addr.cast.8626.118, align 1
  %icmp.8629.121 = icmp eq i64 %unsafe.load.i64.8627.119, 2
  br i1 %icmp.8629.121, label %if.then.8633, label %cond.right.8630

if.then.8544:
  %unsafe.addr.8548.49 = getelementptr i8, ptr %node.addr.37.phi, i64 32
  %unsafe.addr.cast.8549.50 = bitcast ptr %unsafe.addr.8548.49 to ptr
  %unsafe.load.ptr.8550.51 = load ptr, ptr %unsafe.addr.cast.8549.50, align 1
  %previous.8551.53 = load ptr, ptr %previous.addr.35
  %unsafe.ptr_is_null.i.8552.54 = ptrtoint ptr %previous.8551.53 to i64
  %unsafe.ptr.null.8553.55 = icmp eq i64 %unsafe.ptr_is_null.i.8552.54, 0
  br i1 %unsafe.ptr.null.8553.55, label %if.then.8554, label %if.else.8555

if.else.8545:
  br label %if.end.8546

if.end.8546:
  br i1 %previous.owned.98.phi, label %previous.owned.release.8606, label %previous.owned.cont.8607

if.then.8554:
  store ptr %unsafe.load.ptr.8550.51, ptr @pcc_vthread_io_head_py
  %none.8558.57 = load ptr, ptr @py_None
  br label %if.end.8556

if.else.8555:
  %previous.8559.58 = load ptr, ptr %previous.addr.35
  %unsafe.addr.8560.59 = getelementptr i8, ptr %previous.8559.58, i64 32
  %unsafe.addr.cast.8561.60 = bitcast ptr %unsafe.addr.8560.59 to ptr
  store ptr %unsafe.load.ptr.8550.51, ptr %unsafe.addr.cast.8561.60, align 1
  %none.8563.62 = load ptr, ptr @py_None
  br label %if.end.8556

if.end.8556:
  %vthread.gc.slot.8564.63 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8565.64 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8564.63)
  %unsafe.addr.8566.65 = getelementptr i8, ptr %vthread.8565.64, i64 64
  %unsafe.addr.cast.8567.66 = bitcast ptr %unsafe.addr.8566.65 to ptr
  store ptr null, ptr %unsafe.addr.cast.8567.66, align 1
  %none.8568.67 = load ptr, ptr @py_None
  %vthread.gc.slot.8569.68 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8570.69 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8569.68)
  %unsafe.addr.8571.70 = getelementptr i8, ptr %vthread.8570.69, i64 120
  %unsafe.addr.cast.8572.71 = bitcast ptr %unsafe.addr.8571.70 to ptr
  %unsafe.load.i64.8573.72 = load i64, ptr %unsafe.addr.cast.8572.71, align 1
  %icmp.8575.74 = icmp eq i64 %unsafe.load.i64.8573.72, 2
  br i1 %icmp.8575.74, label %if.then.8579, label %cond.right.8576

cond.right.8576:
  %icmp.8578.76 = icmp eq i64 %unsafe.load.i64.8573.72, 3
  br i1 %icmp.8578.76, label %if.then.8579, label %if.else.8580

if.then.8579:
  %vthread.gc.slot.8582.77 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8583.78 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8582.77)
  %unsafe.addr.8584.79 = getelementptr i8, ptr %vthread.8583.78, i64 120
  %unsafe.addr.cast.8585.80 = bitcast ptr %unsafe.addr.8584.79 to ptr
  store i64 0, ptr %unsafe.addr.cast.8585.80, align 1
  %none.8586.81 = load ptr, ptr @py_None
  br label %if.end.8581

if.else.8580:
  br label %if.end.8581

if.end.8581:
  %unsafe.global.addr.8587.82 = bitcast ptr @pcc_vthread_io_count_py to ptr
  %counter_add_ret.8588.83 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.8587.82, i64 -1)
  call void (ptr) @user_py_virtual_thread_runtime__io_release(ptr %node.addr.37.phi)
  %io_refresh_ret.8591.86 = call i64 (i64) @user_py_virtual_thread_runtime__io_refresh(i64 %unsafe.load.i64.8528.33)
  %vthread.gc.slot.8592.88 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8593.89 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8592.88)
  %unsafe.addr.8594.90 = getelementptr i8, ptr %vthread.8593.89, i64 32
  %unsafe.addr.cast.8595.91 = bitcast ptr %unsafe.addr.8594.90 to ptr
  %unsafe.load.i64.8596.92 = load i64, ptr %unsafe.addr.cast.8595.91, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 13, i64 3, i64 0, i64 %unsafe.load.i64.8596.92)
  %icmp.8598.94 = icmp ne i64 %io_refresh_ret.8591.86, 0
  br i1 %icmp.8598.94, label %if.then.8599, label %if.else.8600

if.then.8599:
  %gc.frame.leave.ptr.8602.95 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8602.95)
  %gc.frame.leave.ptr.8612.104 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8612.104)
  ret i64 -1

if.else.8600:
  br label %if.end.8601

if.end.8601:
  %gc.frame.leave.ptr.8603.96 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8603.96)
  %gc.frame.leave.ptr.8613.105 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8613.105)
  ret i64 1

previous.owned.release.8606:
  %previous.release.gc.slot.8608.100 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %previous.release.gc.slot.8608.100, ptr null)
  br label %previous.owned.cont.8607

previous.owned.cont.8607:
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.addr.37.phi)
  store ptr %node.addr.37.phi, ptr %previous.addr.35
  %unsafe.addr.8615.107 = getelementptr i8, ptr %node.addr.37.phi, i64 32
  %unsafe.addr.cast.8616.108 = bitcast ptr %unsafe.addr.8615.107 to ptr
  %unsafe.load.ptr.8617.109 = load ptr, ptr %unsafe.addr.cast.8616.108, align 1
  br label %while.latch.8532

cond.right.8630:
  %icmp.8632.123 = icmp eq i64 %unsafe.load.i64.8627.119, 3
  br i1 %icmp.8632.123, label %if.then.8633, label %if.else.8634

if.then.8633:
  %vthread.gc.slot.8636.124 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.8637.125 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.8636.124)
  %unsafe.addr.8638.126 = getelementptr i8, ptr %vthread.8637.125, i64 120
  %unsafe.addr.cast.8639.127 = bitcast ptr %unsafe.addr.8638.126 to ptr
  store i64 0, ptr %unsafe.addr.cast.8639.127, align 1
  %none.8640.128 = load ptr, ptr @py_None
  br label %if.end.8635

if.else.8634:
  br label %if.end.8635

if.end.8635:
  %gc.frame.leave.ptr.8641.129 = bitcast ptr %previous.addr.35 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8641.129)
  %gc.frame.leave.ptr.8642.130 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.8642.130)
  ret i64 0
}
define external ptr @user_py_virtual_thread_runtime__io_resource_find(i64 %fd) "no-builtins" {
entry:
  %unsafe.global.load.ptr.8643.3 = load ptr, ptr @pcc_vthread_io_resource_head_py
  br label %while.cond.8644

while.cond.8644:
  %node.addr.4.phi = phi ptr [ %unsafe.global.load.ptr.8643.3, %entry ], [ %unsafe.load.ptr.8673.27, %while.latch.8646 ]
  %unsafe.ptr_is_null.i.8649.6 = ptrtoint ptr %node.addr.4.phi to i64
  %unsafe.ptr.null.8650.7 = icmp eq i64 %unsafe.ptr_is_null.i.8649.6, 0
  %b2i64.8651.8 = zext i1 %unsafe.ptr.null.8650.7 to i64
  %icmp.8652.9 = icmp eq i64 %b2i64.8651.8, 0
  br i1 %icmp.8652.9, label %while.body.8645, label %while.end.8647

while.body.8645:
  %unsafe.addr.8654.11 = getelementptr i8, ptr %node.addr.4.phi, i64 0
  %unsafe.addr.cast.8655.12 = bitcast ptr %unsafe.addr.8654.11 to ptr
  %unsafe.load.i64.8656.13 = load i64, ptr %unsafe.addr.cast.8655.12, align 1
  %icmp.8658.15 = icmp eq i64 %unsafe.load.i64.8656.13, %fd
  br i1 %icmp.8658.15, label %if.then.8659, label %if.else.8660

while.latch.8646:
  br label %while.cond.8644

while.end.8647:
  ret ptr null

if.then.8659:
  %ret.retain.8663.17 = call ptr (ptr) @pcc_gc_retain(ptr %node.addr.4.phi)
  %ret.tmp.root.8664.18 = alloca ptr
  store ptr null, ptr %ret.tmp.root.8664.18
  %ret.tmp.root.ptr.8665.19 = bitcast ptr %ret.tmp.root.8664.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.8665.19, ptr %ret.retain.8663.17)
  %gc.frame.lifo.map.ptr.8666.20 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.8667.21 = bitcast ptr %ret.tmp.root.8664.18 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.8666.20, ptr %gc.frame.lifo.slots.ptr.8667.21)
  %ret.tmp.current.8668.22 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %ret.tmp.root.ptr.8665.19)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %ret.tmp.root.ptr.8665.19, ptr null)
  %gc.frame.lifo.leave.ptr.8669.23 = bitcast ptr %ret.tmp.root.8664.18 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.8669.23)
  ret ptr %ret.tmp.current.8668.22

if.else.8660:
  br label %if.end.8661

if.end.8661:
  %unsafe.addr.8671.25 = getelementptr i8, ptr %node.addr.4.phi, i64 16
  %unsafe.addr.cast.8672.26 = bitcast ptr %unsafe.addr.8671.25 to ptr
  %unsafe.load.ptr.8673.27 = load ptr, ptr %unsafe.addr.cast.8672.26, align 1
  br label %while.latch.8646
}
define external i64 @user_py_virtual_thread_runtime__io_close_waiters_locked(i64 %fd) "no-builtins" {
strict.nolib.stub:
  %.465 = getelementptr inbounds [86 x i8], ptr @.strict.nolib.msg.27, i32 0, i32 0
  %strict.nolib.exc.9269.466 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.465)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.9269.466)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.9269.466)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__io_add(ptr %vthread, i64 %fd, i64 %events, i64 %deadline) "no-builtins" {
entry:
  %vthread.addr.5 = alloca ptr
  %call.ret.root.9273.12 = alloca ptr
  %node.addr.18 = alloca ptr
  store ptr null, ptr %node.addr.18
  %handle.addr.36 = alloca ptr
  store ptr null, ptr %handle.addr.36
  store ptr %vthread, ptr %vthread.addr.5
  %gc.frame.map.ptr.9270.6 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.9271.7 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.9270.6, ptr %gc.frame.slots.ptr.9271.7)
  %io_alloc_ret.9272.11 = call ptr () @user_py_virtual_thread_runtime__io_alloc()
  store ptr null, ptr %call.ret.root.9273.12
  %call.ret.root.ptr.9274.13 = bitcast ptr %call.ret.root.9273.12 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9274.13, ptr %io_alloc_ret.9272.11)
  %gc.frame.lifo.map.ptr.9275.14 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.9276.15 = bitcast ptr %call.ret.root.9273.12 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.9275.14, ptr %gc.frame.lifo.slots.ptr.9276.15)
  %call.ret.current.9277.16 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.9274.13)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.9274.13, ptr null)
  %gc.frame.lifo.leave.ptr.9278.17 = bitcast ptr %call.ret.root.9273.12 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.9278.17)
  %gc.frame.map.ptr.9284.23 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.slots.ptr.9285.24 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.9284.23, ptr %gc.frame.slots.ptr.9285.24)
  %gc.frame.map.ptr.9302.37 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.9303.38 = bitcast ptr %handle.addr.36 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.9302.37, ptr %gc.frame.slots.ptr.9303.38)
  br i1 0, label %node.owned.release.9280, label %node.owned.cont.9281

node.owned.release.9280:
  %node.release.gc.slot.9282.21 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.9282.21, ptr null)
  br label %node.owned.cont.9281

node.owned.cont.9281:
  %node.owned.resolve.9283.22 = call ptr (ptr) @pcc_gc_resolve_owned_ptr(ptr %call.ret.current.9277.16)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %node.owned.resolve.9283.22)
  store ptr %node.owned.resolve.9283.22, ptr %node.addr.18
  %node.gc.slot.9286.25 = bitcast ptr %node.addr.18 to ptr
  %node.9287.26 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9286.25)
  %unsafe.ptr_is_null.i.9288.27 = ptrtoint ptr %node.9287.26 to i64
  %unsafe.ptr.null.9289.28 = icmp eq i64 %unsafe.ptr_is_null.i.9288.27, 0
  br i1 %unsafe.ptr.null.9289.28, label %if.then.9290, label %if.else.9291

if.then.9290:
  br i1 1, label %node.owned.release.9294, label %node.owned.cont.9295

if.else.9291:
  br label %if.end.9292

if.end.9292:
  %node.gc.slot.9299.33 = bitcast ptr %node.addr.18 to ptr
  %node.9300.34 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9299.33)
  %extern.pcc_gc_scheduler_root_register_handle.ret.9301.35 = call ptr (ptr) @pcc_gc_scheduler_root_register_handle(ptr %node.9300.34)
  store ptr %extern.pcc_gc_scheduler_root_register_handle.ret.9301.35, ptr %handle.addr.36
  %handle.gc.slot.9305.40 = bitcast ptr %handle.addr.36 to ptr
  %handle.9306.41 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.9305.40)
  %unsafe.ptr_is_null.i.9307.42 = ptrtoint ptr %handle.9306.41 to i64
  %unsafe.ptr.null.9308.43 = icmp eq i64 %unsafe.ptr_is_null.i.9307.42, 0
  br i1 %unsafe.ptr.null.9308.43, label %if.then.9309, label %if.else.9310

node.owned.release.9294:
  %node.release.gc.slot.9296.30 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.9296.30, ptr null)
  br label %node.owned.cont.9295

node.owned.cont.9295:
  %gc.frame.leave.ptr.9297.31 = bitcast ptr %node.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9297.31)
  %gc.frame.leave.ptr.9298.32 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9298.32)
  %gc.frame.leave.ptr.9304.39 = bitcast ptr %handle.addr.36 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9304.39)
  ret i64 -1

if.then.9309:
  %node.gc.slot.9312.44 = bitcast ptr %node.addr.18 to ptr
  %node.9313.45 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9312.44)
  call void (ptr) @free(ptr %node.9313.45)
  %none.9314.46 = load ptr, ptr @py_None
  br i1 1, label %node.owned.release.9316, label %node.owned.cont.9317

if.else.9310:
  br label %if.end.9311

if.end.9311:
  %node.gc.slot.9322.52 = bitcast ptr %node.addr.18 to ptr
  %node.9323.53 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9322.52)
  %unsafe.addr.9324.54 = getelementptr i8, ptr %node.9323.53, i64 40
  %unsafe.addr.cast.9325.55 = bitcast ptr %unsafe.addr.9324.54 to ptr
  %handle.gc.slot.9326.56 = bitcast ptr %handle.addr.36 to ptr
  %handle.9327.57 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %handle.gc.slot.9326.56)
  store ptr %handle.9327.57, ptr %unsafe.addr.cast.9325.55, align 1
  %none.9328.58 = load ptr, ptr @py_None
  %node.gc.slot.9329.59 = bitcast ptr %node.addr.18 to ptr
  %node.9330.60 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9329.59)
  %vthread.gc.slot.9331.61 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9332.62 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9331.61)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.9330.60, ptr %vthread.9332.62)
  %node.gc.slot.9333.63 = bitcast ptr %node.addr.18 to ptr
  %node.9334.64 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9333.63)
  %unsafe.addr.9335.65 = getelementptr i8, ptr %node.9334.64, i64 8
  %unsafe.addr.cast.9336.66 = bitcast ptr %unsafe.addr.9335.65 to ptr
  store i64 %fd, ptr %unsafe.addr.cast.9336.66, align 1
  %none.9338.68 = load ptr, ptr @py_None
  %node.gc.slot.9339.69 = bitcast ptr %node.addr.18 to ptr
  %node.9340.70 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9339.69)
  %unsafe.addr.9341.71 = getelementptr i8, ptr %node.9340.70, i64 16
  %unsafe.addr.cast.9342.72 = bitcast ptr %unsafe.addr.9341.71 to ptr
  store i64 %events, ptr %unsafe.addr.cast.9342.72, align 1
  %none.9344.74 = load ptr, ptr @py_None
  %node.gc.slot.9345.75 = bitcast ptr %node.addr.18 to ptr
  %node.9346.76 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9345.75)
  %unsafe.addr.9347.77 = getelementptr i8, ptr %node.9346.76, i64 24
  %unsafe.addr.cast.9348.78 = bitcast ptr %unsafe.addr.9347.77 to ptr
  store i64 %deadline, ptr %unsafe.addr.cast.9348.78, align 1
  %none.9350.80 = load ptr, ptr @py_None
  %node.gc.slot.9351.81 = bitcast ptr %node.addr.18 to ptr
  %node.9352.82 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9351.81)
  %unsafe.addr.9353.83 = getelementptr i8, ptr %node.9352.82, i64 32
  %unsafe.addr.cast.9354.84 = bitcast ptr %unsafe.addr.9353.83 to ptr
  %unsafe.global.load.ptr.9355.85 = load ptr, ptr @pcc_vthread_io_head_py
  store ptr %unsafe.global.load.ptr.9355.85, ptr %unsafe.addr.cast.9354.84, align 1
  %none.9356.86 = load ptr, ptr @py_None
  %node.gc.slot.9357.87 = bitcast ptr %node.addr.18 to ptr
  %node.9358.88 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9357.87)
  store ptr %node.9358.88, ptr @pcc_vthread_io_head_py
  %none.9359.89 = load ptr, ptr @py_None
  %vthread.gc.slot.9360.90 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9361.91 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9360.90)
  %unsafe.addr.9362.92 = getelementptr i8, ptr %vthread.9361.91, i64 64
  %unsafe.addr.cast.9363.93 = bitcast ptr %unsafe.addr.9362.92 to ptr
  %node.gc.slot.9364.94 = bitcast ptr %node.addr.18 to ptr
  %node.9365.95 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %node.gc.slot.9364.94)
  store ptr %node.9365.95, ptr %unsafe.addr.cast.9363.93, align 1
  %none.9366.96 = load ptr, ptr @py_None
  %and.9368.98 = and i64 %events, 4
  %icmp.9369.99 = icmp ne i64 %and.9368.98, 0
  br i1 %icmp.9369.99, label %if.then.9370, label %if.else.9371

node.owned.release.9316:
  %node.release.gc.slot.9318.48 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.9318.48, ptr null)
  br label %node.owned.cont.9317

node.owned.cont.9317:
  %gc.frame.leave.ptr.9319.49 = bitcast ptr %handle.addr.36 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9319.49)
  %gc.frame.leave.ptr.9320.50 = bitcast ptr %node.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9320.50)
  %gc.frame.leave.ptr.9321.51 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9321.51)
  ret i64 -1

if.then.9370:
  %vthread.gc.slot.9373.100 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9374.101 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9373.100)
  %unsafe.addr.9375.102 = getelementptr i8, ptr %vthread.9374.101, i64 120
  %unsafe.addr.cast.9376.103 = bitcast ptr %unsafe.addr.9375.102 to ptr
  store i64 3, ptr %unsafe.addr.cast.9376.103, align 1
  %none.9377.104 = load ptr, ptr @py_None
  br label %if.end.9372

if.else.9371:
  %vthread.gc.slot.9378.105 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9379.106 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9378.105)
  %unsafe.addr.9380.107 = getelementptr i8, ptr %vthread.9379.106, i64 120
  %unsafe.addr.cast.9381.108 = bitcast ptr %unsafe.addr.9380.107 to ptr
  store i64 2, ptr %unsafe.addr.cast.9381.108, align 1
  %none.9382.109 = load ptr, ptr @py_None
  br label %if.end.9372

if.end.9372:
  %unsafe.global.addr.9383.110 = bitcast ptr @pcc_vthread_io_count_py to ptr
  %counter_add_ret.9384.111 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.9383.110, i64 1)
  %io_refresh_ret.9386.113 = call i64 (i64) @user_py_virtual_thread_runtime__io_refresh(i64 %fd)
  %icmp.9387.114 = icmp ne i64 %io_refresh_ret.9386.113, 0
  br i1 %icmp.9387.114, label %if.then.9388, label %if.else.9389

if.then.9388:
  %vthread.gc.slot.9391.115 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9392.116 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9391.115)
  %io_cancel_ret.9393.117 = call i64 (ptr) @user_py_virtual_thread_runtime__io_cancel(ptr %vthread.9392.116)
  br i1 1, label %node.owned.release.9395, label %node.owned.cont.9396

if.else.9389:
  br label %if.end.9390

if.end.9390:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 1, i64 3, i64 1, i64 -1)
  %vthread.gc.slot.9401.123 = bitcast ptr %vthread.addr.5 to ptr
  %vthread.9402.124 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.9401.123)
  %unsafe.addr.9403.125 = getelementptr i8, ptr %vthread.9402.124, i64 32
  %unsafe.addr.cast.9404.126 = bitcast ptr %unsafe.addr.9403.125 to ptr
  %unsafe.load.i64.9405.127 = load i64, ptr %unsafe.addr.cast.9404.126, align 1
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 10, i64 3, i64 0, i64 %unsafe.load.i64.9405.127)
  br i1 1, label %node.owned.release.9407, label %node.owned.cont.9408

node.owned.release.9395:
  %node.release.gc.slot.9397.119 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.9397.119, ptr null)
  br label %node.owned.cont.9396

node.owned.cont.9396:
  %gc.frame.leave.ptr.9398.120 = bitcast ptr %handle.addr.36 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9398.120)
  %gc.frame.leave.ptr.9399.121 = bitcast ptr %node.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9399.121)
  %gc.frame.leave.ptr.9400.122 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9400.122)
  ret i64 -1

node.owned.release.9407:
  %node.release.gc.slot.9409.129 = bitcast ptr %node.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %node.release.gc.slot.9409.129, ptr null)
  br label %node.owned.cont.9408

node.owned.cont.9408:
  %gc.frame.leave.ptr.9410.130 = bitcast ptr %handle.addr.36 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9410.130)
  %gc.frame.leave.ptr.9411.131 = bitcast ptr %node.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9411.131)
  %gc.frame.leave.ptr.9412.132 = bitcast ptr %vthread.addr.5 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.9412.132)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__result_bits(ptr %result, i64 %fd) "no-builtins" {
entry:
  %result.addr.3 = alloca ptr
  store ptr %result, ptr %result.addr.3
  %gc.frame.map.ptr.10725.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.10726.5 = bitcast ptr %result.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.10725.4, ptr %gc.frame.slots.ptr.10726.5)
  %result.gc.slot.10727.7 = bitcast ptr %result.addr.3 to ptr
  %result.10728.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.10727.7)
  %unsafe.addr.10729.9 = getelementptr i8, ptr %result.10728.8, i64 0
  %unsafe.addr.cast.10730.10 = bitcast ptr %unsafe.addr.10729.9 to ptr
  %unsafe.load.ptr.10731.11 = load ptr, ptr %unsafe.addr.cast.10730.10, align 1
  %result.gc.slot.10732.13 = bitcast ptr %result.addr.3 to ptr
  %result.10733.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.10732.13)
  %unsafe.addr.10734.15 = getelementptr i8, ptr %result.10733.14, i64 8
  %unsafe.addr.cast.10735.16 = bitcast ptr %unsafe.addr.10734.15 to ptr
  %unsafe.load.i64.10736.17 = load i64, ptr %unsafe.addr.cast.10735.16, align 1
  br label %while.cond.10737

while.cond.10737:
  %bits.addr.19.phi.1 = phi i64 [ 0, %entry ], [ %bits.addr.19.phi, %while.latch.10739 ]
  %index.addr.20.phi = phi i64 [ 0, %entry ], [ %add.10764.42, %while.latch.10739 ]
  %icmp.10743.23 = icmp slt i64 %index.addr.20.phi, %unsafe.load.i64.10736.17
  br i1 %icmp.10743.23, label %while.body.10738, label %while.end.10740

while.body.10738:
  %mul.10746.26 = mul i64 %index.addr.20.phi, 16
  %unsafe.ptr.add.10747.27 = getelementptr i8, ptr %unsafe.load.ptr.10731.11, i64 %mul.10746.26
  %unsafe.addr.10749.30 = getelementptr i8, ptr %unsafe.ptr.add.10747.27, i64 0
  %unsafe.addr.cast.10750.31 = bitcast ptr %unsafe.addr.10749.30 to ptr
  %unsafe.load.i64.10751.32 = load i64, ptr %unsafe.addr.cast.10750.31, align 1
  %icmp.10753.34 = icmp eq i64 %unsafe.load.i64.10751.32, %fd
  br i1 %icmp.10753.34, label %if.then.10754, label %if.else.10755

while.latch.10739:
  br label %while.cond.10737

while.end.10740:
  %gc.frame.leave.ptr.10766.44 = bitcast ptr %result.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.10766.44)
  ret i64 %bits.addr.19.phi.1

if.then.10754:
  %unsafe.addr.10759.37 = getelementptr i8, ptr %unsafe.ptr.add.10747.27, i64 8
  %unsafe.addr.cast.10760.38 = bitcast ptr %unsafe.addr.10759.37 to ptr
  %unsafe.load.i64.10761.39 = load i64, ptr %unsafe.addr.cast.10760.38, align 1
  %or.10762.40 = or i64 %bits.addr.19.phi.1, %unsafe.load.i64.10761.39
  br label %if.end.10756

if.else.10755:
  br label %if.end.10756

if.end.10756:
  %bits.addr.19.phi = phi i64 [ %or.10762.40, %if.then.10754 ], [ %bits.addr.19.phi.1, %if.else.10755 ]
  %add.10764.42 = add i64 %index.addr.20.phi, 1
  br label %while.latch.10739
}
define external i64 @py_virtual_thread_carrier_queue_count() "no-builtins" {
entry:
  %unsafe.global.addr.11585.1 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.11586.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11585.1)
  ret i64 %counter_ret.11586.2
}
define external i64 @py_virtual_thread_carrier_queue_depth(i64 %index) "no-builtins" {
entry:
  %call.ret.root.11605.16 = alloca ptr
  %scheduler_lock_ret.11587.3 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.11588.4 = icmp ne i64 %scheduler_lock_ret.11587.3, 0
  br i1 %icmp.11588.4, label %if.then.11589, label %if.else.11590

if.then.11589:
  ret i64 -1

if.else.11590:
  br label %if.end.11591

if.end.11591:
  %unsafe.global.addr.11592.5 = bitcast ptr @pcc_vthread_carrier_queue_count_py to ptr
  %counter_ret.11593.6 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11592.5)
  %icmp.11595.9 = icmp slt i64 %index, 0
  br i1 %icmp.11595.9, label %if.then.11600, label %cond.right.11596

cond.right.11596:
  %icmp.11599.12 = icmp sge i64 %index, %counter_ret.11593.6
  br i1 %icmp.11599.12, label %if.then.11600, label %if.else.11601

if.then.11600:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 -1

if.else.11601:
  br label %if.end.11602

if.end.11602:
  %carrier_head_slot_ret.11604.15 = call ptr (i64) @user_py_virtual_thread_runtime__carrier_head_slot(i64 %index)
  store ptr null, ptr %call.ret.root.11605.16
  %call.ret.root.ptr.11606.17 = bitcast ptr %call.ret.root.11605.16 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.11606.17, ptr %carrier_head_slot_ret.11604.15)
  %gc.frame.lifo.map.ptr.11607.18 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.11608.19 = bitcast ptr %call.ret.root.11605.16 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.11607.18, ptr %gc.frame.lifo.slots.ptr.11608.19)
  %call.ret.current.11609.20 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.11606.17)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.11606.17, ptr null)
  %gc.frame.lifo.leave.ptr.11610.21 = bitcast ptr %call.ret.root.11605.16 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.11610.21)
  %unsafe.addr.11611.22 = getelementptr i8, ptr %call.ret.current.11609.20, i64 0
  %unsafe.addr.cast.11612.23 = bitcast ptr %unsafe.addr.11611.22 to ptr
  %unsafe.load.ptr.11613.24 = load ptr, ptr %unsafe.addr.cast.11612.23, align 1
  br label %while.cond.11614

while.cond.11614:
  %depth.addr.13.phi = phi i64 [ 0, %if.end.11602 ], [ %add.11624.32, %while.latch.11616 ]
  %node.addr.25.phi = phi ptr [ %unsafe.load.ptr.11613.24, %if.end.11602 ], [ %unsafe.load.ptr.11628.36, %while.latch.11616 ]
  %unsafe.ptr_is_null.i.11619.27 = ptrtoint ptr %node.addr.25.phi to i64
  %unsafe.ptr.null.11620.28 = icmp eq i64 %unsafe.ptr_is_null.i.11619.27, 0
  %b2i64.11621.29 = zext i1 %unsafe.ptr.null.11620.28 to i64
  %icmp.11622.30 = icmp eq i64 %b2i64.11621.29, 0
  br i1 %icmp.11622.30, label %while.body.11615, label %while.end.11617

while.body.11615:
  %add.11624.32 = add i64 %depth.addr.13.phi, 1
  %unsafe.addr.11626.34 = getelementptr i8, ptr %node.addr.25.phi, i64 8
  %unsafe.addr.cast.11627.35 = bitcast ptr %unsafe.addr.11626.34 to ptr
  %unsafe.load.ptr.11628.36 = load ptr, ptr %unsafe.addr.cast.11627.35, align 1
  br label %while.latch.11616

while.latch.11616:
  br label %while.cond.11614

while.end.11617:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %depth.addr.13.phi
}
define external i64 @py_virtual_thread_carrier_failure_count() "no-builtins" {
entry:
  %unsafe.global.addr.11630.1 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_ret.11631.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.11630.1)
  ret i64 %counter_ret.11631.2
}
define external i64 @user_py_virtual_thread_runtime__run_ready_step() "no-builtins" {
strict.nolib.stub:
  %.265 = getelementptr inbounds [77 x i8], ptr @.strict.nolib.msg.31, i32 0, i32 0
  %strict.nolib.exc.12005.266 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.265)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.12005.266)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.12005.266)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__carrier_pool_claim(ptr %run) "no-builtins" {
entry:
  %run.addr.2 = alloca ptr
  store ptr %run, ptr %run.addr.2
  %gc.frame.map.ptr.12065.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.12066.4 = bitcast ptr %run.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.12065.3, ptr %gc.frame.slots.ptr.12066.4)
  %run.gc.slot.12067.5 = bitcast ptr %run.addr.2 to ptr
  %run.12068.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %run.gc.slot.12067.5)
  %unsafe.addr.12069.7 = getelementptr i8, ptr %run.12068.6, i64 0
  %unsafe.addr.cast.12070.8 = bitcast ptr %unsafe.addr.12069.7 to ptr
  %unsafe.atomic.load.12071.9 = load atomic i64, ptr %unsafe.addr.cast.12070.8 acquire, align 8
  %run.gc.slot.12072.11 = bitcast ptr %run.addr.2 to ptr
  %run.12073.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %run.gc.slot.12072.11)
  %unsafe.addr.12074.13 = getelementptr i8, ptr %run.12073.12, i64 8
  %unsafe.addr.cast.12075.14 = bitcast ptr %unsafe.addr.12074.13 to ptr
  %unsafe.atomic.load.12076.15 = load atomic i64, ptr %unsafe.addr.cast.12075.14 acquire, align 8
  br label %while.cond.12077

while.cond.12077:
  %claimed.addr.16.phi = phi i64 [ %unsafe.atomic.load.12076.15, %entry ], [ %unsafe.atomic.cas.old.12092.28, %while.latch.12079 ]
  %icmp.12083.19 = icmp slt i64 %claimed.addr.16.phi, %unsafe.atomic.load.12071.9
  br i1 %icmp.12083.19, label %while.body.12078, label %while.end.12080

while.body.12078:
  %run.gc.slot.12084.20 = bitcast ptr %run.addr.2 to ptr
  %run.12085.21 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %run.gc.slot.12084.20)
  %unsafe.addr.12086.22 = getelementptr i8, ptr %run.12085.21, i64 8
  %unsafe.addr.cast.12087.23 = bitcast ptr %unsafe.addr.12086.22 to ptr
  %add.12090.26 = add i64 %claimed.addr.16.phi, 1
  %unsafe.atomic.cas.12091.27 = cmpxchg ptr %unsafe.addr.cast.12087.23, i64 %claimed.addr.16.phi, i64 %add.12090.26 acq_rel acquire
  %unsafe.atomic.cas.old.12092.28 = extractvalue { i64, i1 } %unsafe.atomic.cas.12091.27, 0
  %icmp.12095.32 = icmp eq i64 %unsafe.atomic.cas.old.12092.28, %claimed.addr.16.phi
  br i1 %icmp.12095.32, label %if.then.12096, label %if.else.12097

while.latch.12079:
  br label %while.cond.12077

while.end.12080:
  %gc.frame.leave.ptr.12101.35 = bitcast ptr %run.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.12101.35)
  ret i64 0

if.then.12096:
  %gc.frame.leave.ptr.12099.33 = bitcast ptr %run.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.12099.33)
  ret i64 1

if.else.12097:
  br label %if.end.12098

if.end.12098:
  br label %while.latch.12079
}
define external ptr @pcc_vthread_carrier_pool_worker_py(ptr %worker) "no-builtins" {
entry:
  %unsafe.addr.12103.4 = getelementptr i8, ptr %worker, i64 0
  %unsafe.addr.cast.12104.5 = bitcast ptr %unsafe.addr.12103.4 to ptr
  %unsafe.load.ptr.12105.6 = load ptr, ptr %unsafe.addr.cast.12104.5, align 1
  %unsafe.addr.12107.9 = getelementptr i8, ptr %worker, i64 8
  %unsafe.addr.cast.12108.10 = bitcast ptr %unsafe.addr.12107.9 to ptr
  %unsafe.load.i64.12109.11 = load i64, ptr %unsafe.addr.cast.12108.10, align 1
  %unsafe.global.addr.12110.13 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12111.14 = getelementptr i8, ptr %unsafe.global.addr.12110.13, i64 0
  %unsafe.addr.cast.12112.15 = bitcast ptr %unsafe.addr.12111.14 to ptr
  %unsafe.load.i32.12113.16 = load i32, ptr %unsafe.addr.cast.12112.15, align 1
  %unsafe.i32.to.i64.12114.17 = sext i32 %unsafe.load.i32.12113.16 to i64
  %unsafe.global.addr.12115.19 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12116.20 = getelementptr i8, ptr %unsafe.global.addr.12115.19, i64 0
  %unsafe.addr.cast.12117.21 = bitcast ptr %unsafe.addr.12116.20 to ptr
  %unsafe.i64.to.i32.12119.23 = trunc i64 %unsafe.load.i64.12109.11 to i32
  store i32 %unsafe.i64.to.i32.12119.23, ptr %unsafe.addr.cast.12117.21, align 1
  %none.12120.24 = load ptr, ptr @py_None
  %unsafe.global.addr.12121.25 = bitcast ptr @pcc_vthread_carrier_count_py to ptr
  %counter_add_ret.12122.26 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12121.25, i64 1)
  %unsafe.ptr.add.12124.28 = getelementptr i8, ptr %unsafe.load.ptr.12105.6, i64 40
  %counter_add_ret.12125.29 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.ptr.add.12124.28, i64 1)
  br label %while.cond.12126

while.cond.12126:
  %unsafe.addr.12131.31 = getelementptr i8, ptr %unsafe.load.ptr.12105.6, i64 48
  %unsafe.addr.cast.12132.32 = bitcast ptr %unsafe.addr.12131.31 to ptr
  %unsafe.atomic.load.12133.33 = load atomic i64, ptr %unsafe.addr.cast.12132.32 acquire, align 8
  %icmp.12134.34 = icmp eq i64 %unsafe.atomic.load.12133.33, 0
  br i1 %icmp.12134.34, label %while.body.12127, label %while.end.12129

while.body.12127:
  call void () @pcc_thread_safepoint()
  br label %while.latch.12128

while.latch.12128:
  br label %while.cond.12126

while.end.12129:
  br label %while.cond.12135

while.cond.12135:
  %carrier_pool_claim_ret.12140.36 = call i64 (ptr) @user_py_virtual_thread_runtime__carrier_pool_claim(ptr %unsafe.load.ptr.12105.6)
  %icmp.12141.37 = icmp ne i64 %carrier_pool_claim_ret.12140.36, 0
  br i1 %icmp.12141.37, label %while.body.12136, label %while.end.12138

while.body.12136:
  %py_virtual_thread_run_once_ret.12142.38 = call i64 () @py_virtual_thread_run_once()
  %icmp.12144.41 = icmp slt i64 %py_virtual_thread_run_once_ret.12142.38, 0
  br i1 %icmp.12144.41, label %if.then.12145, label %if.else.12146

while.latch.12137:
  br label %while.cond.12135

while.end.12138:
  %unsafe.global.addr.12162.53 = bitcast ptr @pcc_vthread_carrier_count_py to ptr
  %counter_add_ret.12163.54 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12162.53, i64 -1)
  %unsafe.global.addr.12164.55 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12165.56 = getelementptr i8, ptr %unsafe.global.addr.12164.55, i64 0
  %unsafe.addr.cast.12166.57 = bitcast ptr %unsafe.addr.12165.56 to ptr
  %unsafe.i64.to.i32.12168.59 = trunc i64 %unsafe.i32.to.i64.12114.17 to i32
  store i32 %unsafe.i64.to.i32.12168.59, ptr %unsafe.addr.cast.12166.57, align 1
  %none.12169.60 = load ptr, ptr @py_None
  ret ptr null

if.then.12145:
  %unsafe.ptr.add.12149.43 = getelementptr i8, ptr %unsafe.load.ptr.12105.6, i64 24
  %counter_add_ret.12150.44 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.ptr.add.12149.43, i64 1)
  %unsafe.global.addr.12151.45 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12152.46 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12151.45, i64 1)
  br label %while.end.12138

if.else.12146:
  br label %if.end.12147

if.end.12147:
  %icmp.12154.48 = icmp eq i64 %py_virtual_thread_run_once_ret.12142.38, 0
  br i1 %icmp.12154.48, label %if.then.12155, label %if.else.12156

if.then.12155:
  br label %while.end.12138

if.else.12156:
  br label %if.end.12157

if.end.12157:
  %unsafe.ptr.add.12159.50 = getelementptr i8, ptr %unsafe.load.ptr.12105.6, i64 16
  %counter_add_ret.12161.52 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.ptr.add.12159.50, i64 %py_virtual_thread_run_once_ret.12142.38)
  br label %while.latch.12137
}
define external ptr @pcc_vthread_persistent_carrier_worker_py(ptr %arg) "no-builtins" {
entry:
  %call.ret.root.12439.44 = alloca ptr
  %call.ret.root.12446.51 = alloca ptr
  %unsafe.addr.12387.4 = getelementptr i8, ptr %arg, i64 0
  %unsafe.addr.cast.12388.5 = bitcast ptr %unsafe.addr.12387.4 to ptr
  %unsafe.load.i64.12389.6 = load i64, ptr %unsafe.addr.cast.12388.5, align 1
  %unsafe.global.addr.12390.8 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12391.9 = getelementptr i8, ptr %unsafe.global.addr.12390.8, i64 0
  %unsafe.addr.cast.12392.10 = bitcast ptr %unsafe.addr.12391.9 to ptr
  %unsafe.load.i32.12393.11 = load i32, ptr %unsafe.addr.cast.12392.10, align 1
  %unsafe.i32.to.i64.12394.12 = sext i32 %unsafe.load.i32.12393.11 to i64
  %unsafe.global.addr.12395.14 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12396.15 = getelementptr i8, ptr %unsafe.global.addr.12395.14, i64 0
  %unsafe.addr.cast.12397.16 = bitcast ptr %unsafe.addr.12396.15 to ptr
  %unsafe.i64.to.i32.12399.18 = trunc i64 %unsafe.load.i64.12389.6 to i32
  store i32 %unsafe.i64.to.i32.12399.18, ptr %unsafe.addr.cast.12397.16, align 1
  %none.12400.19 = load ptr, ptr @py_None
  %unsafe.global.addr.12401.20 = bitcast ptr @pcc_vthread_carrier_count_py to ptr
  %counter_add_ret.12402.21 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12401.20, i64 1)
  br label %while.cond.12403

while.cond.12403:
  %unsafe.global.addr.12407.22 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  %counter_ret.12408.23 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12407.22)
  %icmp.12409.24 = icmp eq i64 %counter_ret.12408.23, 0
  br i1 %icmp.12409.24, label %while.body.12404, label %while.end.12406

while.body.12404:
  %py_virtual_thread_run_once_ret.12410.25 = call i64 () @py_virtual_thread_run_once()
  %icmp.12412.28 = icmp slt i64 %py_virtual_thread_run_once_ret.12410.25, 0
  br i1 %icmp.12412.28, label %if.then.12413, label %if.else.12414

while.latch.12405:
  br label %while.cond.12403

while.end.12406:
  %unsafe.global.addr.12453.58 = bitcast ptr @pcc_vthread_carrier_count_py to ptr
  %counter_add_ret.12454.59 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12453.58, i64 -1)
  %unsafe.global.addr.12455.60 = bitcast ptr @pcc_current_virtual_thread_carrier_py to ptr
  %unsafe.addr.12456.61 = getelementptr i8, ptr %unsafe.global.addr.12455.60, i64 0
  %unsafe.addr.cast.12457.62 = bitcast ptr %unsafe.addr.12456.61 to ptr
  %unsafe.i64.to.i32.12459.64 = trunc i64 %unsafe.i32.to.i64.12394.12 to i32
  store i32 %unsafe.i64.to.i32.12459.64, ptr %unsafe.addr.cast.12457.62, align 1
  %none.12460.65 = load ptr, ptr @py_None
  ret ptr null

if.then.12413:
  %unsafe.global.addr.12416.29 = bitcast ptr @pcc_vthread_persistent_pool_failures_py to ptr
  %counter_add_ret.12417.30 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12416.29, i64 1)
  %unsafe.global.addr.12418.31 = bitcast ptr @pcc_vthread_carrier_failures_py to ptr
  %counter_add_ret.12419.32 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.12418.31, i64 1)
  br label %while.end.12406

if.else.12414:
  br label %if.end.12415

if.end.12415:
  %icmp.12421.34 = icmp eq i64 %py_virtual_thread_run_once_ret.12410.25, 0
  br i1 %icmp.12421.34, label %cond.right.12422, label %if.else.12426

cond.right.12422:
  %scheduler_lock_ret.12423.35 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.12424.36 = icmp eq i64 %scheduler_lock_ret.12423.35, 0
  br i1 %icmp.12424.36, label %if.then.12425, label %if.else.12426

if.then.12425:
  %unsafe.global.addr.12428.37 = bitcast ptr @pcc_vthread_persistent_pool_stop_py to ptr
  %counter_ret.12429.38 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12428.37)
  %icmp.12430.39 = icmp eq i64 %counter_ret.12429.38, 0
  br i1 %icmp.12430.39, label %cond.right.12431, label %if.else.12436

if.else.12426:
  br label %if.end.12427

if.end.12427:
  br label %while.latch.12405

cond.right.12431:
  %unsafe.global.addr.12432.40 = bitcast ptr @pcc_vthread_ready_count_py to ptr
  %counter_ret.12433.41 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.12432.40)
  %icmp.12434.42 = icmp eq i64 %counter_ret.12433.41, 0
  br i1 %icmp.12434.42, label %if.then.12435, label %if.else.12436

if.then.12435:
  %scheduler_cond_ret.12438.43 = call ptr () @user_py_virtual_thread_runtime__scheduler_cond()
  store ptr null, ptr %call.ret.root.12439.44
  %call.ret.root.ptr.12440.45 = bitcast ptr %call.ret.root.12439.44 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12440.45, ptr %scheduler_cond_ret.12438.43)
  %gc.frame.lifo.map.ptr.12441.46 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12442.47 = bitcast ptr %call.ret.root.12439.44 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12441.46, ptr %gc.frame.lifo.slots.ptr.12442.47)
  %call.ret.current.12443.48 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.12440.45)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12440.45, ptr null)
  %gc.frame.lifo.leave.ptr.12444.49 = bitcast ptr %call.ret.root.12439.44 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12444.49)
  %scheduler_mutex_ret.12445.50 = call ptr () @user_py_virtual_thread_runtime__scheduler_mutex()
  store ptr null, ptr %call.ret.root.12446.51
  %call.ret.root.ptr.12447.52 = bitcast ptr %call.ret.root.12446.51 to ptr
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12447.52, ptr %scheduler_mutex_ret.12445.50)
  %gc.frame.lifo.map.ptr.12448.53 = bitcast ptr @.pcc.gc.frame.map.1 to ptr
  %gc.frame.lifo.slots.ptr.12449.54 = bitcast ptr %call.ret.root.12446.51 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter_lifo(ptr %gc.frame.lifo.map.ptr.12448.53, ptr %gc.frame.lifo.slots.ptr.12449.54)
  %call.ret.current.12450.55 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr null, ptr %call.ret.root.ptr.12447.52)
  call void (ptr, ptr) @pcc_gc_store_root(ptr %call.ret.root.ptr.12447.52, ptr null)
  %gc.frame.lifo.leave.ptr.12451.56 = bitcast ptr %call.ret.root.12446.51 to ptr
  call void (ptr) @pcc_gc_frame_leave_lifo(ptr %gc.frame.lifo.leave.ptr.12451.56)
  %extern.pcc_cond_timedwait_ms.ret.12452.57 = call i64 (ptr, ptr, i64) @pcc_cond_timedwait_ms(ptr %call.ret.current.12443.48, ptr %call.ret.current.12450.55, i64 1)
  br label %if.end.12437

if.else.12436:
  br label %if.end.12437

if.end.12437:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  call void () @pcc_thread_safepoint()
  br label %if.end.12427
}
define external i64 @user_py_virtual_thread_runtime__cancel_publish_locked(ptr %vthread) "no-builtins" {
entry:
  %vthread.addr.2 = alloca ptr
  store ptr %vthread, ptr %vthread.addr.2
  %gc.frame.map.ptr.13265.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13266.4 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13265.3, ptr %gc.frame.slots.ptr.13266.4)
  %vthread.gc.slot.13267.5 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13268.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13267.5)
  %vthread.gc.slot.13269.7 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13270.8 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13269.7)
  %unsafe.ptr.add.13271.9 = getelementptr i8, ptr %vthread.13270.8, i64 24
  %unsafe.global.load.ptr.13272.10 = load ptr, ptr @py_None
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.13268.6, ptr %unsafe.ptr.add.13271.9, ptr %unsafe.global.load.ptr.13272.10)
  %vthread.gc.slot.13273.11 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13274.12 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13273.11)
  %vthread.gc.slot.13275.13 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13276.14 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13275.13)
  %unsafe.ptr.add.13277.15 = getelementptr i8, ptr %vthread.13276.14, i64 72
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.13274.12, ptr %unsafe.ptr.add.13277.15, ptr null)
  %vthread.gc.slot.13278.16 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13279.17 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13278.16)
  %vthread.gc.slot.13280.18 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13281.19 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13280.18)
  %unsafe.ptr.add.13282.20 = getelementptr i8, ptr %vthread.13281.19, i64 112
  call void (ptr, ptr, ptr) @pcc_gc_store_ptr(ptr %vthread.13279.17, ptr %unsafe.ptr.add.13282.20, ptr null)
  %vthread.gc.slot.13283.21 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13284.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13283.21)
  call void (ptr, i64) @user_py_virtual_thread_runtime__channel_task_clear(ptr %vthread.13284.22, i64 1)
  %vthread.gc.slot.13285.23 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13286.24 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13285.23)
  %unsafe.addr.13287.25 = getelementptr i8, ptr %vthread.13286.24, i64 176
  %unsafe.addr.cast.13288.26 = bitcast ptr %unsafe.addr.13287.25 to ptr
  store i64 -1, ptr %unsafe.addr.cast.13288.26, align 1
  %none.13289.27 = load ptr, ptr @py_None
  %vthread.gc.slot.13290.28 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13291.29 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13290.28)
  %unsafe.addr.13292.30 = getelementptr i8, ptr %vthread.13291.29, i64 184
  %unsafe.addr.cast.13293.31 = bitcast ptr %unsafe.addr.13292.30 to ptr
  store i64 -1, ptr %unsafe.addr.cast.13293.31, align 1
  %none.13294.32 = load ptr, ptr @py_None
  %vthread.gc.slot.13295.33 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13296.34 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13295.33)
  %unsafe.addr.13297.35 = getelementptr i8, ptr %vthread.13296.34, i64 104
  %unsafe.addr.cast.13298.36 = bitcast ptr %unsafe.addr.13297.35 to ptr
  store ptr null, ptr %unsafe.addr.cast.13298.36, align 1
  %none.13299.37 = load ptr, ptr @py_None
  %vthread.gc.slot.13300.38 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13301.39 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13300.38)
  %unsafe.addr.13302.40 = getelementptr i8, ptr %vthread.13301.39, i64 80
  %unsafe.addr.cast.13303.41 = bitcast ptr %unsafe.addr.13302.40 to ptr
  store i64 3, ptr %unsafe.addr.cast.13303.41, align 1
  %none.13304.42 = load ptr, ptr @py_None
  %vthread.gc.slot.13305.43 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13306.44 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13305.43)
  %unsafe.addr.13307.45 = getelementptr i8, ptr %vthread.13306.44, i64 32
  %unsafe.addr.cast.13308.46 = bitcast ptr %unsafe.addr.13307.45 to ptr
  store i64 4, ptr %unsafe.addr.cast.13308.46, align 1
  %none.13309.47 = load ptr, ptr @py_None
  %vthread.gc.slot.13310.48 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13311.49 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13310.48)
  %unsafe.addr.13312.50 = getelementptr i8, ptr %vthread.13311.49, i64 40
  %unsafe.addr.cast.13313.51 = bitcast ptr %unsafe.addr.13312.50 to ptr
  store i64 0, ptr %unsafe.addr.cast.13313.51, align 1
  %none.13314.52 = load ptr, ptr @py_None
  %vthread.gc.slot.13315.53 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13316.54 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13315.53)
  %unsafe.addr.13317.55 = getelementptr i8, ptr %vthread.13316.54, i64 120
  %unsafe.addr.cast.13318.56 = bitcast ptr %unsafe.addr.13317.55 to ptr
  store i64 0, ptr %unsafe.addr.cast.13318.56, align 1
  %none.13319.57 = load ptr, ptr @py_None
  %vthread.gc.slot.13320.58 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13321.59 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13320.58)
  %unsafe.addr.13322.60 = getelementptr i8, ptr %vthread.13321.59, i64 128
  %unsafe.addr.cast.13323.61 = bitcast ptr %unsafe.addr.13322.60 to ptr
  store i64 0, ptr %unsafe.addr.cast.13323.61, align 1
  %none.13324.62 = load ptr, ptr @py_None
  %vthread.gc.slot.13325.63 = bitcast ptr %vthread.addr.2 to ptr
  %vthread.13326.64 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13325.63)
  %join_wake_all_ret.13327.65 = call i64 (ptr) @user_py_virtual_thread_runtime__join_wake_all(ptr %vthread.13326.64)
  %icmp.13328.66 = icmp ne i64 %join_wake_all_ret.13327.65, 0
  br i1 %icmp.13328.66, label %if.then.13329, label %if.else.13330

if.then.13329:
  %gc.frame.leave.ptr.13332.67 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13332.67)
  ret i64 -1

if.else.13330:
  br label %if.end.13331

if.end.13331:
  call void (i64, i64, i64, i64) @user_py_virtual_thread_runtime__effect(i64 16, i64 0, i64 0, i64 4)
  %gc.frame.leave.ptr.13333.68 = bitcast ptr %vthread.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13333.68)
  ret i64 0
}
define external i64 @user_py_virtual_thread_runtime__resume_generator_owned(ptr %vthread, ptr %generator) "no-builtins" {
entry:
  %vthread.addr.3 = alloca ptr
  %generator.addr.6 = alloca ptr
  %closed.addr.53 = alloca ptr
  store ptr null, ptr %closed.addr.53
  %yielded.addr.83 = alloca ptr
  store ptr null, ptr %yielded.addr.83
  %current.addr.157 = alloca ptr
  store ptr null, ptr %current.addr.157
  %value.addr.178 = alloca ptr
  store ptr null, ptr %value.addr.178
  store ptr %vthread, ptr %vthread.addr.3
  %gc.frame.map.ptr.13451.4 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13452.5 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13451.4, ptr %gc.frame.slots.ptr.13452.5)
  store ptr %generator, ptr %generator.addr.6
  %gc.frame.map.ptr.13453.7 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13454.8 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13453.7, ptr %gc.frame.slots.ptr.13454.8)
  %generator.gc.slot.13455.9 = bitcast ptr %generator.addr.6 to ptr
  %generator.13456.10 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13455.9)
  %unsafe.ptr_is_null.i.13457.11 = ptrtoint ptr %generator.13456.10 to i64
  %unsafe.ptr.null.13458.12 = icmp eq i64 %unsafe.ptr_is_null.i.13457.11, 0
  %gc.frame.map.ptr.13511.54 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13512.55 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13511.54, ptr %gc.frame.slots.ptr.13512.55)
  %gc.frame.map.ptr.13543.84 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13544.85 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13543.84, ptr %gc.frame.slots.ptr.13544.85)
  %gc.frame.map.ptr.13631.158 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13632.159 = bitcast ptr %current.addr.157 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13631.158, ptr %gc.frame.slots.ptr.13632.159)
  %gc.frame.map.ptr.13654.179 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.13655.180 = bitcast ptr %value.addr.178 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.13654.179, ptr %gc.frame.slots.ptr.13655.180)
  br i1 %unsafe.ptr.null.13458.12, label %if.then.13459, label %if.else.13460

if.then.13459:
  %gc.frame.leave.ptr.13462.13 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13462.13)
  %gc.frame.leave.ptr.13463.14 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13463.14)
  %gc.frame.leave.ptr.13513.56 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13513.56)
  %gc.frame.leave.ptr.13545.86 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13545.86)
  %gc.frame.leave.ptr.13633.160 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13633.160)
  %gc.frame.leave.ptr.13656.181 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13656.181)
  ret i64 -1

if.else.13460:
  br label %if.end.13461

if.end.13461:
  %vthread.gc.slot.13464.15 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13465.16 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13464.15)
  %py_virtual_thread_cancel_requested_ret.13466.17 = call i64 (ptr) @py_virtual_thread_cancel_requested(ptr %vthread.13465.16)
  %icmp.13468.20 = icmp slt i64 %py_virtual_thread_cancel_requested_ret.13466.17, 0
  br i1 %icmp.13468.20, label %if.then.13469, label %if.else.13470

if.then.13469:
  %generator.gc.slot.13472.21 = bitcast ptr %generator.addr.6 to ptr
  %generator.13473.22 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13472.21)
  call void (ptr) @py_decref(ptr %generator.13473.22)
  %gc.frame.leave.ptr.13474.23 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13474.23)
  %gc.frame.leave.ptr.13475.24 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13475.24)
  %gc.frame.leave.ptr.13514.57 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13514.57)
  %gc.frame.leave.ptr.13546.87 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13546.87)
  %gc.frame.leave.ptr.13634.161 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13634.161)
  %gc.frame.leave.ptr.13657.182 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13657.182)
  ret i64 -1

if.else.13470:
  br label %if.end.13471

if.end.13471:
  %icmp.13477.26 = icmp eq i64 %py_virtual_thread_cancel_requested_ret.13466.17, 1
  br i1 %icmp.13477.26, label %if.then.13478, label %if.else.13479

if.then.13478:
  %generator.gc.slot.13481.27 = bitcast ptr %generator.addr.6 to ptr
  %generator.13482.28 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13481.27)
  %extern.py_gen_state.ret.13483.29 = call i64 (ptr) @py_gen_state(ptr %generator.13482.28)
  %icmp.13485.32 = icmp slt i64 %extern.py_gen_state.ret.13483.29, 0
  br i1 %icmp.13485.32, label %if.then.13486, label %if.else.13487

if.else.13479:
  br label %if.end.13480

if.end.13480:
  %generator.gc.slot.13540.80 = bitcast ptr %generator.addr.6 to ptr
  %generator.13541.81 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13540.80)
  %extern.py_gen_next.ret.13542.82 = call ptr (ptr) @py_gen_next(ptr %generator.13541.81)
  store ptr %extern.py_gen_next.ret.13542.82, ptr %yielded.addr.83
  %yielded.gc.slot.13551.92 = bitcast ptr %yielded.addr.83 to ptr
  %yielded.13552.93 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %yielded.gc.slot.13551.92)
  %unsafe.ptr_is_null.i.13553.94 = ptrtoint ptr %yielded.13552.93 to i64
  %unsafe.ptr.null.13554.95 = icmp eq i64 %unsafe.ptr_is_null.i.13553.94, 0
  %b2i64.13555.96 = zext i1 %unsafe.ptr.null.13554.95 to i64
  %icmp.13556.97 = icmp eq i64 %b2i64.13555.96, 0
  br i1 %icmp.13556.97, label %if.then.13557, label %if.else.13558

if.then.13486:
  %generator.gc.slot.13489.33 = bitcast ptr %generator.addr.6 to ptr
  %generator.13490.34 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13489.33)
  call void (ptr) @py_decref(ptr %generator.13490.34)
  %gc.frame.leave.ptr.13491.35 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13491.35)
  %gc.frame.leave.ptr.13492.36 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13492.36)
  %gc.frame.leave.ptr.13515.58 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13515.58)
  %gc.frame.leave.ptr.13547.88 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13547.88)
  %gc.frame.leave.ptr.13635.162 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13635.162)
  %gc.frame.leave.ptr.13658.183 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13658.183)
  ret i64 -1

if.else.13487:
  br label %if.end.13488

if.end.13488:
  %icmp.13494.38 = icmp eq i64 %extern.py_gen_state.ret.13483.29, 0
  br i1 %icmp.13494.38, label %if.then.13495, label %if.else.13496

if.then.13495:
  %generator.gc.slot.13498.39 = bitcast ptr %generator.addr.6 to ptr
  %generator.13499.40 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13498.39)
  call void (ptr) @py_gen_set_done(ptr %generator.13499.40)
  %vthread.gc.slot.13500.41 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13501.42 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13500.41)
  %py_virtual_thread_cancel_complete_ret.13502.43 = call i64 (ptr) @py_virtual_thread_cancel_complete(ptr %vthread.13501.42)
  %generator.gc.slot.13503.45 = bitcast ptr %generator.addr.6 to ptr
  %generator.13504.46 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13503.45)
  call void (ptr) @py_decref(ptr %generator.13504.46)
  %gc.frame.leave.ptr.13506.48 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13506.48)
  %gc.frame.leave.ptr.13507.49 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13507.49)
  %gc.frame.leave.ptr.13516.59 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13516.59)
  %gc.frame.leave.ptr.13548.89 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13548.89)
  %gc.frame.leave.ptr.13636.163 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13636.163)
  %gc.frame.leave.ptr.13659.184 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13659.184)
  ret i64 %py_virtual_thread_cancel_complete_ret.13502.43

if.else.13496:
  br label %if.end.13497

if.end.13497:
  %generator.gc.slot.13508.50 = bitcast ptr %generator.addr.6 to ptr
  %generator.13509.51 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13508.50)
  %extern.py_gen_close.ret.13510.52 = call ptr (ptr) @py_gen_close(ptr %generator.13509.51)
  store ptr %extern.py_gen_close.ret.13510.52, ptr %closed.addr.53
  %closed.gc.slot.13517.60 = bitcast ptr %closed.addr.53 to ptr
  %closed.13518.61 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %closed.gc.slot.13517.60)
  %unsafe.ptr_is_null.i.13519.62 = ptrtoint ptr %closed.13518.61 to i64
  %unsafe.ptr.null.13520.63 = icmp eq i64 %unsafe.ptr_is_null.i.13519.62, 0
  br i1 %unsafe.ptr.null.13520.63, label %if.then.13521, label %if.else.13522

if.then.13521:
  %generator.gc.slot.13524.64 = bitcast ptr %generator.addr.6 to ptr
  %generator.13525.65 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13524.64)
  call void (ptr) @py_decref(ptr %generator.13525.65)
  %gc.frame.leave.ptr.13526.66 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13526.66)
  %gc.frame.leave.ptr.13527.67 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13527.67)
  %gc.frame.leave.ptr.13528.68 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13528.68)
  %gc.frame.leave.ptr.13549.90 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13549.90)
  %gc.frame.leave.ptr.13637.164 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13637.164)
  %gc.frame.leave.ptr.13660.185 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13660.185)
  ret i64 -1

if.else.13522:
  br label %if.end.13523

if.end.13523:
  %closed.gc.slot.13529.69 = bitcast ptr %closed.addr.53 to ptr
  %closed.13530.70 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %closed.gc.slot.13529.69)
  call void (ptr) @py_decref(ptr %closed.13530.70)
  %vthread.gc.slot.13531.71 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13532.72 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13531.71)
  %py_virtual_thread_cancel_complete_ret.13533.73 = call i64 (ptr) @py_virtual_thread_cancel_complete(ptr %vthread.13532.72)
  %generator.gc.slot.13534.74 = bitcast ptr %generator.addr.6 to ptr
  %generator.13535.75 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13534.74)
  call void (ptr) @py_decref(ptr %generator.13535.75)
  %gc.frame.leave.ptr.13537.77 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13537.77)
  %gc.frame.leave.ptr.13538.78 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13538.78)
  %gc.frame.leave.ptr.13539.79 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13539.79)
  %gc.frame.leave.ptr.13550.91 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13550.91)
  %gc.frame.leave.ptr.13638.165 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13638.165)
  %gc.frame.leave.ptr.13661.186 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13661.186)
  ret i64 %py_virtual_thread_cancel_complete_ret.13533.73

if.then.13557:
  %yielded.gc.slot.13560.98 = bitcast ptr %yielded.addr.83 to ptr
  %yielded.13561.99 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %yielded.gc.slot.13560.98)
  call void (ptr) @py_decref(ptr %yielded.13561.99)
  %vthread.gc.slot.13562.100 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13563.101 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13562.100)
  %py_virtual_thread_state_ret.13564.102 = call i64 (ptr) @py_virtual_thread_state(ptr %vthread.13563.101)
  %vthread.gc.slot.13565.104 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13566.105 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13565.104)
  %py_virtual_thread_cancel_requested_ret.13567.106 = call i64 (ptr) @py_virtual_thread_cancel_requested(ptr %vthread.13566.105)
  %icmp.13569.108 = icmp slt i64 %py_virtual_thread_state_ret.13564.102, 0
  br i1 %icmp.13569.108, label %if.then.13573, label %cond.right.13570

if.else.13558:
  br label %if.end.13559

if.end.13559:
  %extern.py_current_exception.ret.13630.156 = call ptr () @py_current_exception()
  store ptr %extern.py_current_exception.ret.13630.156, ptr %current.addr.157
  %current.gc.slot.13643.170 = bitcast ptr %current.addr.157 to ptr
  %current.13644.171 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %current.gc.slot.13643.170)
  %extern.py_exc_builtin_class.ret.13645.172 = call ptr (i64) @py_exc_builtin_class(i64 8)
  %extern.py_exc_matches.ret.13646.173 = call i64 (ptr, ptr) @py_exc_matches(ptr %current.13644.171, ptr %extern.py_exc_builtin_class.ret.13645.172)
  %icmp.13647.174 = icmp ne i64 %extern.py_exc_matches.ret.13646.173, 0
  br i1 %icmp.13647.174, label %if.then.13648, label %if.else.13649

cond.right.13570:
  %icmp.13572.110 = icmp slt i64 %py_virtual_thread_cancel_requested_ret.13567.106, 0
  br i1 %icmp.13572.110, label %if.then.13573, label %if.else.13574

if.then.13573:
  %generator.gc.slot.13576.111 = bitcast ptr %generator.addr.6 to ptr
  %generator.13577.112 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13576.111)
  call void (ptr) @py_decref(ptr %generator.13577.112)
  %gc.frame.leave.ptr.13578.113 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13578.113)
  %gc.frame.leave.ptr.13579.114 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13579.114)
  %gc.frame.leave.ptr.13580.115 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13580.115)
  %gc.frame.leave.ptr.13581.116 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13581.116)
  %gc.frame.leave.ptr.13639.166 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13639.166)
  %gc.frame.leave.ptr.13662.187 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13662.187)
  ret i64 -1

if.else.13574:
  br label %if.end.13575

if.end.13575:
  %icmp.13583.118 = icmp eq i64 %py_virtual_thread_cancel_requested_ret.13567.106, 1
  br i1 %icmp.13583.118, label %if.then.13584, label %if.else.13585

if.then.13584:
  %generator.gc.slot.13587.119 = bitcast ptr %generator.addr.6 to ptr
  %generator.13588.120 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13587.119)
  %extern.py_gen_close.ret.13589.121 = call ptr (ptr) @py_gen_close(ptr %generator.13588.120)
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %extern.py_gen_close.ret.13589.121)
  store ptr %extern.py_gen_close.ret.13589.121, ptr %closed.addr.53
  %closed.gc.slot.13590.122 = bitcast ptr %closed.addr.53 to ptr
  %closed.13591.123 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %closed.gc.slot.13590.122)
  %unsafe.ptr_is_null.i.13592.124 = ptrtoint ptr %closed.13591.123 to i64
  %unsafe.ptr.null.13593.125 = icmp eq i64 %unsafe.ptr_is_null.i.13592.124, 0
  br i1 %unsafe.ptr.null.13593.125, label %if.then.13594, label %if.else.13595

if.else.13585:
  br label %if.end.13586

if.end.13586:
  %icmp.13616.145 = icmp eq i64 %py_virtual_thread_state_ret.13564.102, 2
  br i1 %icmp.13616.145, label %if.then.13617, label %if.else.13618

if.then.13594:
  %generator.gc.slot.13597.126 = bitcast ptr %generator.addr.6 to ptr
  %generator.13598.127 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13597.126)
  call void (ptr) @py_decref(ptr %generator.13598.127)
  %gc.frame.leave.ptr.13599.128 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13599.128)
  %gc.frame.leave.ptr.13600.129 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13600.129)
  %gc.frame.leave.ptr.13601.130 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13601.130)
  %gc.frame.leave.ptr.13602.131 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13602.131)
  %gc.frame.leave.ptr.13640.167 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13640.167)
  %gc.frame.leave.ptr.13663.188 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13663.188)
  ret i64 -1

if.else.13595:
  br label %if.end.13596

if.end.13596:
  %closed.gc.slot.13603.132 = bitcast ptr %closed.addr.53 to ptr
  %closed.13604.133 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %closed.gc.slot.13603.132)
  call void (ptr) @py_decref(ptr %closed.13604.133)
  %vthread.gc.slot.13605.134 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13606.135 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13605.134)
  %py_virtual_thread_cancel_complete_ret.13607.136 = call i64 (ptr) @py_virtual_thread_cancel_complete(ptr %vthread.13606.135)
  %generator.gc.slot.13608.137 = bitcast ptr %generator.addr.6 to ptr
  %generator.13609.138 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13608.137)
  call void (ptr) @py_decref(ptr %generator.13609.138)
  %gc.frame.leave.ptr.13611.140 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13611.140)
  %gc.frame.leave.ptr.13612.141 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13612.141)
  %gc.frame.leave.ptr.13613.142 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13613.142)
  %gc.frame.leave.ptr.13614.143 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13614.143)
  %gc.frame.leave.ptr.13641.168 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13641.168)
  %gc.frame.leave.ptr.13664.189 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13664.189)
  ret i64 %py_virtual_thread_cancel_complete_ret.13607.136

if.then.13617:
  %vthread.gc.slot.13620.146 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13621.147 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13620.146)
  %py_virtual_thread_unpark_ret.13622.148 = call i64 (ptr) @py_virtual_thread_unpark(ptr %vthread.13621.147)
  br label %if.end.13619

if.else.13618:
  br label %if.end.13619

if.end.13619:
  %result.addr.44.phi = phi i64 [ %py_virtual_thread_unpark_ret.13622.148, %if.then.13617 ], [ 0, %if.else.13618 ]
  %generator.gc.slot.13623.149 = bitcast ptr %generator.addr.6 to ptr
  %generator.13624.150 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13623.149)
  call void (ptr) @py_decref(ptr %generator.13624.150)
  %gc.frame.leave.ptr.13626.152 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13626.152)
  %gc.frame.leave.ptr.13627.153 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13627.153)
  %gc.frame.leave.ptr.13628.154 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13628.154)
  %gc.frame.leave.ptr.13629.155 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13629.155)
  %gc.frame.leave.ptr.13642.169 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13642.169)
  %gc.frame.leave.ptr.13665.190 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13665.190)
  ret i64 %result.addr.44.phi

if.then.13648:
  %current.gc.slot.13651.175 = bitcast ptr %current.addr.157 to ptr
  %current.13652.176 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %current.gc.slot.13651.175)
  %extern.py_exc_get_message.ret.13653.177 = call ptr (ptr) @py_exc_get_message(ptr %current.13652.176)
  store ptr %extern.py_exc_get_message.ret.13653.177, ptr %value.addr.178
  %value.gc.slot.13666.191 = bitcast ptr %value.addr.178 to ptr
  %value.13667.192 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %value.gc.slot.13666.191)
  %unsafe.ptr_is_null.i.13668.193 = ptrtoint ptr %value.13667.192 to i64
  %unsafe.ptr.null.13669.194 = icmp eq i64 %unsafe.ptr_is_null.i.13668.193, 0
  br i1 %unsafe.ptr.null.13669.194, label %if.then.13670, label %if.else.13671

if.else.13649:
  br label %if.end.13650

if.end.13650:
  %generator.gc.slot.13689.211 = bitcast ptr %generator.addr.6 to ptr
  %generator.13690.212 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13689.211)
  call void (ptr) @py_decref(ptr %generator.13690.212)
  %gc.frame.leave.ptr.13691.213 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13691.213)
  %gc.frame.leave.ptr.13692.214 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13692.214)
  %gc.frame.leave.ptr.13693.215 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13693.215)
  %gc.frame.leave.ptr.13694.216 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13694.216)
  %gc.frame.leave.ptr.13695.217 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13695.217)
  %gc.frame.leave.ptr.13696.218 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13696.218)
  ret i64 -1

if.then.13670:
  %unsafe.global.load.ptr.13673.195 = load ptr, ptr @py_None
  call void (ptr, ptr) @pcc_gc_note_write_barrier(ptr null, ptr %unsafe.global.load.ptr.13673.195)
  store ptr %unsafe.global.load.ptr.13673.195, ptr %value.addr.178
  br label %if.end.13672

if.else.13671:
  br label %if.end.13672

if.end.13672:
  %value.13674.196 = load ptr, ptr %value.addr.178
  call void (ptr) @py_incref(ptr %value.13674.196)
  call void () @py_clear_exception()
  %vthread.gc.slot.13675.197 = bitcast ptr %vthread.addr.3 to ptr
  %vthread.13676.198 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %vthread.gc.slot.13675.197)
  %value.13677.199 = load ptr, ptr %value.addr.178
  %py_virtual_thread_complete_ret.13678.200 = call i64 (ptr, ptr) @py_virtual_thread_complete(ptr %vthread.13676.198, ptr %value.13677.199)
  %value.13679.201 = load ptr, ptr %value.addr.178
  call void (ptr) @py_decref(ptr %value.13679.201)
  %generator.gc.slot.13680.202 = bitcast ptr %generator.addr.6 to ptr
  %generator.13681.203 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %generator.gc.slot.13680.202)
  call void (ptr) @py_decref(ptr %generator.13681.203)
  %gc.frame.leave.ptr.13683.205 = bitcast ptr %value.addr.178 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13683.205)
  %gc.frame.leave.ptr.13684.206 = bitcast ptr %current.addr.157 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13684.206)
  %gc.frame.leave.ptr.13685.207 = bitcast ptr %yielded.addr.83 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13685.207)
  %gc.frame.leave.ptr.13686.208 = bitcast ptr %closed.addr.53 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13686.208)
  %gc.frame.leave.ptr.13687.209 = bitcast ptr %generator.addr.6 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13687.209)
  %gc.frame.leave.ptr.13688.210 = bitcast ptr %vthread.addr.3 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.13688.210)
  ret i64 %py_virtual_thread_complete_ret.13678.200
}
define external i64 @user_py_virtual_thread_runtime__pin_reason_hash(ptr %reason) "no-builtins" {
entry:
  %reason.addr.2 = alloca ptr
  store ptr %reason, ptr %reason.addr.2
  %gc.frame.map.ptr.14714.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.14715.4 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14714.3, ptr %gc.frame.slots.ptr.14715.4)
  %reason.gc.slot.14716.5 = bitcast ptr %reason.addr.2 to ptr
  %reason.14717.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %reason.gc.slot.14716.5)
  %unsafe.ptr_is_null.i.14718.7 = ptrtoint ptr %reason.14717.6 to i64
  %unsafe.ptr.null.14719.8 = icmp eq i64 %unsafe.ptr_is_null.i.14718.7, 0
  br i1 %unsafe.ptr.null.14719.8, label %if.then.14720, label %if.else.14721

if.then.14720:
  %gc.frame.leave.ptr.14723.9 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14723.9)
  ret i64 1

if.else.14721:
  br label %if.end.14722

if.end.14722:
  br label %while.cond.14724

while.cond.14724:
  %index.addr.11.phi = phi i64 [ 0, %if.end.14722 ], [ %add.14754.33, %while.latch.14726 ]
  %value.addr.10.phi = phi i64 [ 5381, %if.end.14722 ], [ %and.14752.31, %while.latch.14726 ]
  %icmp.14729.13 = icmp slt i64 %index.addr.11.phi, 63
  br i1 %icmp.14729.13, label %while.body.14725, label %while.end.14727

while.body.14725:
  %reason.gc.slot.14730.14 = bitcast ptr %reason.addr.2 to ptr
  %reason.14731.15 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %reason.gc.slot.14730.14)
  %unsafe.addr.14733.17 = getelementptr i8, ptr %reason.14731.15, i64 %index.addr.11.phi
  %unsafe.load.i8.14734.18 = load i8, ptr %unsafe.addr.14733.17, align 1
  %unsafe.i8.to.i64.14735.19 = sext i8 %unsafe.load.i8.14734.18 to i64
  %icmp.14737.22 = icmp eq i64 %unsafe.i8.to.i64.14735.19, 0
  br i1 %icmp.14737.22, label %if.then.14738, label %if.else.14739

while.latch.14726:
  br label %while.cond.14724

while.end.14727:
  %icmp.14756.35 = icmp eq i64 %value.addr.10.phi, 0
  br i1 %icmp.14756.35, label %if.then.14757, label %if.else.14758

if.then.14738:
  br label %while.end.14727

if.else.14739:
  br label %if.end.14740

if.end.14740:
  %icmp.14742.24 = icmp slt i64 %unsafe.i8.to.i64.14735.19, 0
  br i1 %icmp.14742.24, label %if.then.14743, label %if.else.14744

if.then.14743:
  %add.14747.26 = add i64 %unsafe.i8.to.i64.14735.19, 256
  br label %if.end.14745

if.else.14744:
  br label %if.end.14745

if.end.14745:
  %byte.addr.20.phi = phi i64 [ %add.14747.26, %if.then.14743 ], [ %unsafe.i8.to.i64.14735.19, %if.else.14744 ]
  %mul.14749.28 = mul i64 %value.addr.10.phi, 33
  %xor.14751.30 = xor i64 %mul.14749.28, %byte.addr.20.phi
  %and.14752.31 = and i64 %xor.14751.30, 2147483647
  %add.14754.33 = add i64 %index.addr.11.phi, 1
  br label %while.latch.14726

if.then.14757:
  %gc.frame.leave.ptr.14760.36 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14760.36)
  ret i64 1

if.else.14758:
  br label %if.end.14759

if.end.14759:
  %gc.frame.leave.ptr.14762.38 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14762.38)
  ret i64 %value.addr.10.phi
}
define external void @user_py_virtual_thread_runtime__pin_reason_note(ptr %reason) "no-builtins" {
entry:
  %reason.addr.2 = alloca ptr
  store ptr %reason, ptr %reason.addr.2
  %gc.frame.map.ptr.14763.3 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.14764.4 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.14763.3, ptr %gc.frame.slots.ptr.14764.4)
  %reason.gc.slot.14765.5 = bitcast ptr %reason.addr.2 to ptr
  %reason.14766.6 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %reason.gc.slot.14765.5)
  %pin_reason_hash_ret.14767.7 = call i64 (ptr) @user_py_virtual_thread_runtime__pin_reason_hash(ptr %reason.14766.6)
  %unsafe.global.addr.14768.9 = bitcast ptr @pcc_vthread_pin_reason_hashes_py to ptr
  %unsafe.global.addr.14769.11 = bitcast ptr @pcc_vthread_pin_reason_events_py to ptr
  br label %while.cond.14770

while.cond.14770:
  %offset.addr.13.phi = phi i64 [ 0, %entry ], [ %add.14840.74, %while.latch.14772 ]
  %icmp.14775.15 = icmp slt i64 %offset.addr.13.phi, 32
  br i1 %icmp.14775.15, label %while.body.14771, label %while.end.14773

while.body.14771:
  %add.14778.18 = add i64 %pin_reason_hash_ret.14767.7, %offset.addr.13.phi
  %mod_bz.14779.19 = icmp eq i64 32, 0
  br i1 %mod_bz.14779.19, label %div.zero.14781, label %div.ok.14780

while.latch.14772:
  br label %while.cond.14770

while.end.14773:
  %unsafe.global.addr.14841.75 = bitcast ptr @pcc_vthread_pin_reason_dropped_py to ptr
  %counter_add_ret.14842.76 = call i64 (ptr, i64) @user_py_virtual_thread_runtime__counter_add(ptr %unsafe.global.addr.14841.75, i64 1)
  %gc.frame.leave.ptr.14843.77 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14843.77)
  ret void

div.ok.14780:
  %r.14786.24 = srem i64 %add.14778.18, 32
  %r_nz.14787.25 = icmp ne i64 %r.14786.24, 0
  %r_neg.14788.26 = icmp slt i64 %r.14786.24, 0
  %b_neg.14789.27 = icmp slt i64 32, 0
  %sign_diff.14790.28 = xor i1 %r_neg.14788.26, %b_neg.14789.27
  %need_fix.14791.29 = and i1 %r_nz.14787.25, %sign_diff.14790.28
  %r_fix.14792.30 = add i64 %r.14786.24, 32
  %mod.14793.31 = select i1 %need_fix.14791.29, i64 %r_fix.14792.30, i64 %r.14786.24
  %mul.14796.35 = mul i64 %mod.14793.31, 8
  %unsafe.addr.14797.36 = getelementptr i8, ptr %unsafe.global.addr.14768.9, i64 %mul.14796.35
  %unsafe.addr.cast.14798.37 = bitcast ptr %unsafe.addr.14797.36 to ptr
  %unsafe.load.i64.14799.38 = load i64, ptr %unsafe.addr.cast.14798.37, align 1
  %icmp.14801.41 = icmp eq i64 %unsafe.load.i64.14799.38, 0
  br i1 %icmp.14801.41, label %if.then.14802, label %if.else.14803

div.zero.14781:
  %.20 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.14782.21 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.20)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.14782.21)
  %raise.frame.exc.14783.22 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  br label %err.finish

err.finish:
  %gc.frame.leave.ptr.14784.23 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14784.23)
  ret void

raise.cont.14785:
  unreachable

if.then.14802:
  %mul.14807.44 = mul i64 %mod.14793.31, 8
  %unsafe.addr.14808.45 = getelementptr i8, ptr %unsafe.global.addr.14768.9, i64 %mul.14807.44
  %unsafe.addr.cast.14809.46 = bitcast ptr %unsafe.addr.14808.45 to ptr
  store i64 %pin_reason_hash_ret.14767.7, ptr %unsafe.addr.cast.14809.46, align 1
  %none.14811.48 = load ptr, ptr @py_None
  %mul.14814.51 = mul i64 %mod.14793.31, 8
  %unsafe.addr.14815.52 = getelementptr i8, ptr %unsafe.global.addr.14769.11, i64 %mul.14814.51
  %unsafe.addr.cast.14816.53 = bitcast ptr %unsafe.addr.14815.52 to ptr
  store i64 1, ptr %unsafe.addr.cast.14816.53, align 1
  %none.14817.54 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.14818.55 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14818.55)
  ret void

if.else.14803:
  br label %if.end.14804

if.end.14804:
  %icmp.14821.58 = icmp eq i64 %unsafe.load.i64.14799.38, %pin_reason_hash_ret.14767.7
  br i1 %icmp.14821.58, label %if.then.14822, label %if.else.14823

if.then.14822:
  %mul.14827.61 = mul i64 %mod.14793.31, 8
  %unsafe.addr.14828.62 = getelementptr i8, ptr %unsafe.global.addr.14769.11, i64 %mul.14827.61
  %unsafe.addr.cast.14829.63 = bitcast ptr %unsafe.addr.14828.62 to ptr
  %mul.14832.66 = mul i64 %mod.14793.31, 8
  %unsafe.addr.14833.67 = getelementptr i8, ptr %unsafe.global.addr.14769.11, i64 %mul.14832.66
  %unsafe.addr.cast.14834.68 = bitcast ptr %unsafe.addr.14833.67 to ptr
  %unsafe.load.i64.14835.69 = load i64, ptr %unsafe.addr.cast.14834.68, align 1
  %add.14836.70 = add i64 %unsafe.load.i64.14835.69, 1
  store i64 %add.14836.70, ptr %unsafe.addr.cast.14829.63, align 1
  %none.14837.71 = load ptr, ptr @py_None
  %gc.frame.leave.ptr.14838.72 = bitcast ptr %reason.addr.2 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.14838.72)
  ret void

if.else.14823:
  br label %if.end.14824

if.end.14824:
  %add.14840.74 = add i64 %offset.addr.13.phi, 1
  br label %while.latch.14772
}
define external i64 @py_virtual_thread_pin_reason_event_count(ptr %reason) "no-builtins" {
entry:
  %pin_reason_hash_ret.14845.4 = call i64 (ptr) @user_py_virtual_thread_runtime__pin_reason_hash(ptr %reason)
  %scheduler_lock_ret.14846.6 = call i64 () @user_py_virtual_thread_runtime__scheduler_lock()
  %icmp.14847.7 = icmp ne i64 %scheduler_lock_ret.14846.6, 0
  br i1 %icmp.14847.7, label %if.then.14848, label %if.else.14849

if.then.14848:
  ret i64 -1

if.else.14849:
  br label %if.end.14850

if.end.14850:
  %unsafe.global.addr.14851.8 = bitcast ptr @pcc_vthread_pin_reason_hashes_py to ptr
  %unsafe.global.addr.14852.10 = bitcast ptr @pcc_vthread_pin_reason_events_py to ptr
  br label %while.cond.14853

while.cond.14853:
  %offset.addr.12.phi = phi i64 [ 0, %if.end.14850 ], [ %add.14901.52, %while.latch.14855 ]
  %icmp.14858.14 = icmp slt i64 %offset.addr.12.phi, 32
  br i1 %icmp.14858.14, label %while.body.14854, label %while.end.14856

while.body.14854:
  %add.14861.17 = add i64 %pin_reason_hash_ret.14845.4, %offset.addr.12.phi
  %mod_bz.14862.18 = icmp eq i64 32, 0
  br i1 %mod_bz.14862.18, label %div.zero.14864, label %div.ok.14863

while.latch.14855:
  br label %while.cond.14853

while.end.14856:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 0

div.ok.14863:
  %r.14868.22 = srem i64 %add.14861.17, 32
  %r_nz.14869.23 = icmp ne i64 %r.14868.22, 0
  %r_neg.14870.24 = icmp slt i64 %r.14868.22, 0
  %b_neg.14871.25 = icmp slt i64 32, 0
  %sign_diff.14872.26 = xor i1 %r_neg.14870.24, %b_neg.14871.25
  %need_fix.14873.27 = and i1 %r_nz.14869.23, %sign_diff.14872.26
  %r_fix.14874.28 = add i64 %r.14868.22, 32
  %mod.14875.29 = select i1 %need_fix.14873.27, i64 %r_fix.14874.28, i64 %r.14868.22
  %mul.14878.33 = mul i64 %mod.14875.29, 8
  %unsafe.addr.14879.34 = getelementptr i8, ptr %unsafe.global.addr.14851.8, i64 %mul.14878.33
  %unsafe.addr.cast.14880.35 = bitcast ptr %unsafe.addr.14879.34 to ptr
  %unsafe.load.i64.14881.36 = load i64, ptr %unsafe.addr.cast.14880.35, align 1
  %icmp.14883.39 = icmp eq i64 %unsafe.load.i64.14881.36, 0
  br i1 %icmp.14883.39, label %if.then.14884, label %if.else.14885

div.zero.14864:
  %.19 = getelementptr inbounds [17 x i8], ptr @.exc.msg.2, i32 0, i32 0
  %exc.ZeroDivisionError.14865.20 = call ptr (i64, ptr) @py_exc_new(i64 9, ptr %.19)
  call void (ptr) @py_raise(ptr %exc.ZeroDivisionError.14865.20)
  %raise.frame.exc.14866.21 = call ptr () @py_current_exception()
  br label %err.exit

err.exit:
  br label %err.finish

err.finish:
  ret i64 0

raise.cont.14867:
  unreachable

if.then.14884:
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 0

if.else.14885:
  br label %if.end.14886

if.end.14886:
  %icmp.14889.42 = icmp eq i64 %unsafe.load.i64.14881.36, %pin_reason_hash_ret.14845.4
  br i1 %icmp.14889.42, label %if.then.14890, label %if.else.14891

if.then.14890:
  %mul.14895.45 = mul i64 %mod.14875.29, 8
  %unsafe.addr.14896.46 = getelementptr i8, ptr %unsafe.global.addr.14852.10, i64 %mul.14895.45
  %unsafe.addr.cast.14897.47 = bitcast ptr %unsafe.addr.14896.46 to ptr
  %unsafe.load.i64.14898.48 = load i64, ptr %unsafe.addr.cast.14897.47, align 1
  call void () @user_py_virtual_thread_runtime__scheduler_unlock()
  ret i64 %unsafe.load.i64.14898.48

if.else.14891:
  br label %if.end.14892

if.end.14892:
  %add.14901.52 = add i64 %offset.addr.12.phi, 1
  br label %while.latch.14855
}
define external i64 @py_virtual_thread_pin_reason_dropped_count() "no-builtins" {
entry:
  %unsafe.global.addr.14902.1 = bitcast ptr @pcc_vthread_pin_reason_dropped_py to ptr
  %counter_ret.14903.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.14902.1)
  ret i64 %counter_ret.14903.2
}
define external void @py_dealloc_virtual_thread(ptr %vthread) "no-builtins" {
entry:
  %continuation.addr.10 = alloca ptr
  store ptr null, ptr %continuation.addr.10
  %result.addr.18 = alloca ptr
  store ptr null, ptr %result.addr.18
  %exception.addr.26 = alloca ptr
  store ptr null, ptr %exception.addr.26
  %join_target.addr.34 = alloca ptr
  store ptr null, ptr %join_target.addr.34
  %channel_owner_a.addr.42 = alloca ptr
  store ptr null, ptr %channel_owner_a.addr.42
  %channel_owner_b.addr.50 = alloca ptr
  store ptr null, ptr %channel_owner_b.addr.50
  %channel_value.addr.58 = alloca ptr
  store ptr null, ptr %channel_value.addr.58
  %unsafe.ptr_is_null.i.15039.4 = ptrtoint ptr %vthread to i64
  %unsafe.ptr.null.15040.5 = icmp eq i64 %unsafe.ptr_is_null.i.15039.4, 0
  %gc.frame.map.ptr.15048.11 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15049.12 = bitcast ptr %continuation.addr.10 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15048.11, ptr %gc.frame.slots.ptr.15049.12)
  %gc.frame.map.ptr.15055.19 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15056.20 = bitcast ptr %result.addr.18 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15055.19, ptr %gc.frame.slots.ptr.15056.20)
  %gc.frame.map.ptr.15062.27 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15063.28 = bitcast ptr %exception.addr.26 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15062.27, ptr %gc.frame.slots.ptr.15063.28)
  %gc.frame.map.ptr.15069.35 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15070.36 = bitcast ptr %join_target.addr.34 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15069.35, ptr %gc.frame.slots.ptr.15070.36)
  %gc.frame.map.ptr.15076.43 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15077.44 = bitcast ptr %channel_owner_a.addr.42 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15076.43, ptr %gc.frame.slots.ptr.15077.44)
  %gc.frame.map.ptr.15083.51 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15084.52 = bitcast ptr %channel_owner_b.addr.50 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15083.51, ptr %gc.frame.slots.ptr.15084.52)
  %gc.frame.map.ptr.15090.59 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15091.60 = bitcast ptr %channel_value.addr.58 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15090.59, ptr %gc.frame.slots.ptr.15091.60)
  br i1 %unsafe.ptr.null.15040.5, label %if.then.15041, label %if.else.15042

if.then.15041:
  %gc.frame.leave.ptr.15050.13 = bitcast ptr %continuation.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15050.13)
  %gc.frame.leave.ptr.15057.21 = bitcast ptr %result.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15057.21)
  %gc.frame.leave.ptr.15064.29 = bitcast ptr %exception.addr.26 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15064.29)
  %gc.frame.leave.ptr.15071.37 = bitcast ptr %join_target.addr.34 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15071.37)
  %gc.frame.leave.ptr.15078.45 = bitcast ptr %channel_owner_a.addr.42 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15078.45)
  %gc.frame.leave.ptr.15085.53 = bitcast ptr %channel_owner_b.addr.50 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15085.53)
  %gc.frame.leave.ptr.15092.61 = bitcast ptr %channel_value.addr.58 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15092.61)
  ret void

if.else.15042:
  br label %if.end.15043

if.end.15043:
  %unsafe.ptr.add.15046.8 = getelementptr i8, ptr %vthread, i64 16
  %extern.pcc_gc_load_ptr.ret.15047.9 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15046.8)
  store ptr %extern.pcc_gc_load_ptr.ret.15047.9, ptr %continuation.addr.10
  %unsafe.ptr.add.15053.16 = getelementptr i8, ptr %vthread, i64 24
  %extern.pcc_gc_load_ptr.ret.15054.17 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15053.16)
  store ptr %extern.pcc_gc_load_ptr.ret.15054.17, ptr %result.addr.18
  %unsafe.ptr.add.15060.24 = getelementptr i8, ptr %vthread, i64 72
  %extern.pcc_gc_load_ptr.ret.15061.25 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15060.24)
  store ptr %extern.pcc_gc_load_ptr.ret.15061.25, ptr %exception.addr.26
  %unsafe.ptr.add.15067.32 = getelementptr i8, ptr %vthread, i64 112
  %extern.pcc_gc_load_ptr.ret.15068.33 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15067.32)
  store ptr %extern.pcc_gc_load_ptr.ret.15068.33, ptr %join_target.addr.34
  %unsafe.ptr.add.15074.40 = getelementptr i8, ptr %vthread, i64 136
  %extern.pcc_gc_load_ptr.ret.15075.41 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15074.40)
  store ptr %extern.pcc_gc_load_ptr.ret.15075.41, ptr %channel_owner_a.addr.42
  %unsafe.ptr.add.15081.48 = getelementptr i8, ptr %vthread, i64 144
  %extern.pcc_gc_load_ptr.ret.15082.49 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15081.48)
  store ptr %extern.pcc_gc_load_ptr.ret.15082.49, ptr %channel_owner_b.addr.50
  %unsafe.ptr.add.15088.56 = getelementptr i8, ptr %vthread, i64 168
  %extern.pcc_gc_load_ptr.ret.15089.57 = call ptr (ptr, ptr) @pcc_gc_load_ptr(ptr %vthread, ptr %unsafe.ptr.add.15088.56)
  store ptr %extern.pcc_gc_load_ptr.ret.15089.57, ptr %channel_value.addr.58
  %continuation.gc.slot.15093.62 = bitcast ptr %continuation.addr.10 to ptr
  %continuation.15094.63 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %continuation.gc.slot.15093.62)
  %unsafe.ptr_is_null.i.15095.64 = ptrtoint ptr %continuation.15094.63 to i64
  %unsafe.ptr.null.15096.65 = icmp eq i64 %unsafe.ptr_is_null.i.15095.64, 0
  %b2i64.15097.66 = zext i1 %unsafe.ptr.null.15096.65 to i64
  %icmp.15098.67 = icmp eq i64 %b2i64.15097.66, 0
  br i1 %icmp.15098.67, label %if.then.15099, label %if.else.15100

if.then.15099:
  %continuation.gc.slot.15102.68 = bitcast ptr %continuation.addr.10 to ptr
  %continuation.15103.69 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %continuation.gc.slot.15102.68)
  call void (ptr) @py_decref(ptr %continuation.15103.69)
  br label %if.end.15101

if.else.15100:
  br label %if.end.15101

if.end.15101:
  %result.gc.slot.15104.70 = bitcast ptr %result.addr.18 to ptr
  %result.15105.71 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.15104.70)
  %unsafe.ptr_is_null.i.15106.72 = ptrtoint ptr %result.15105.71 to i64
  %unsafe.ptr.null.15107.73 = icmp eq i64 %unsafe.ptr_is_null.i.15106.72, 0
  %b2i64.15108.74 = zext i1 %unsafe.ptr.null.15107.73 to i64
  %icmp.15109.75 = icmp eq i64 %b2i64.15108.74, 0
  br i1 %icmp.15109.75, label %if.then.15110, label %if.else.15111

if.then.15110:
  %result.gc.slot.15113.76 = bitcast ptr %result.addr.18 to ptr
  %result.15114.77 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.15113.76)
  call void (ptr) @py_decref(ptr %result.15114.77)
  br label %if.end.15112

if.else.15111:
  br label %if.end.15112

if.end.15112:
  %exception.gc.slot.15115.78 = bitcast ptr %exception.addr.26 to ptr
  %exception.15116.79 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %exception.gc.slot.15115.78)
  %unsafe.ptr_is_null.i.15117.80 = ptrtoint ptr %exception.15116.79 to i64
  %unsafe.ptr.null.15118.81 = icmp eq i64 %unsafe.ptr_is_null.i.15117.80, 0
  %b2i64.15119.82 = zext i1 %unsafe.ptr.null.15118.81 to i64
  %icmp.15120.83 = icmp eq i64 %b2i64.15119.82, 0
  br i1 %icmp.15120.83, label %if.then.15121, label %if.else.15122

if.then.15121:
  %exception.gc.slot.15124.84 = bitcast ptr %exception.addr.26 to ptr
  %exception.15125.85 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %exception.gc.slot.15124.84)
  call void (ptr) @py_decref(ptr %exception.15125.85)
  br label %if.end.15123

if.else.15122:
  br label %if.end.15123

if.end.15123:
  %join_target.gc.slot.15126.86 = bitcast ptr %join_target.addr.34 to ptr
  %join_target.15127.87 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %join_target.gc.slot.15126.86)
  %unsafe.ptr_is_null.i.15128.88 = ptrtoint ptr %join_target.15127.87 to i64
  %unsafe.ptr.null.15129.89 = icmp eq i64 %unsafe.ptr_is_null.i.15128.88, 0
  %b2i64.15130.90 = zext i1 %unsafe.ptr.null.15129.89 to i64
  %icmp.15131.91 = icmp eq i64 %b2i64.15130.90, 0
  br i1 %icmp.15131.91, label %if.then.15132, label %if.else.15133

if.then.15132:
  %join_target.gc.slot.15135.92 = bitcast ptr %join_target.addr.34 to ptr
  %join_target.15136.93 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %join_target.gc.slot.15135.92)
  call void (ptr) @py_decref(ptr %join_target.15136.93)
  br label %if.end.15134

if.else.15133:
  br label %if.end.15134

if.end.15134:
  %channel_owner_a.gc.slot.15137.94 = bitcast ptr %channel_owner_a.addr.42 to ptr
  %channel_owner_a.15138.95 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_owner_a.gc.slot.15137.94)
  %unsafe.ptr_is_null.i.15139.96 = ptrtoint ptr %channel_owner_a.15138.95 to i64
  %unsafe.ptr.null.15140.97 = icmp eq i64 %unsafe.ptr_is_null.i.15139.96, 0
  %b2i64.15141.98 = zext i1 %unsafe.ptr.null.15140.97 to i64
  %icmp.15142.99 = icmp eq i64 %b2i64.15141.98, 0
  br i1 %icmp.15142.99, label %if.then.15143, label %if.else.15144

if.then.15143:
  %channel_owner_a.gc.slot.15146.100 = bitcast ptr %channel_owner_a.addr.42 to ptr
  %channel_owner_a.15147.101 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_owner_a.gc.slot.15146.100)
  call void (ptr) @py_decref(ptr %channel_owner_a.15147.101)
  br label %if.end.15145

if.else.15144:
  br label %if.end.15145

if.end.15145:
  %channel_owner_b.gc.slot.15148.102 = bitcast ptr %channel_owner_b.addr.50 to ptr
  %channel_owner_b.15149.103 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_owner_b.gc.slot.15148.102)
  %unsafe.ptr_is_null.i.15150.104 = ptrtoint ptr %channel_owner_b.15149.103 to i64
  %unsafe.ptr.null.15151.105 = icmp eq i64 %unsafe.ptr_is_null.i.15150.104, 0
  %b2i64.15152.106 = zext i1 %unsafe.ptr.null.15151.105 to i64
  %icmp.15153.107 = icmp eq i64 %b2i64.15152.106, 0
  br i1 %icmp.15153.107, label %if.then.15154, label %if.else.15155

if.then.15154:
  %channel_owner_b.gc.slot.15157.108 = bitcast ptr %channel_owner_b.addr.50 to ptr
  %channel_owner_b.15158.109 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_owner_b.gc.slot.15157.108)
  call void (ptr) @py_decref(ptr %channel_owner_b.15158.109)
  br label %if.end.15156

if.else.15155:
  br label %if.end.15156

if.end.15156:
  %channel_value.gc.slot.15159.110 = bitcast ptr %channel_value.addr.58 to ptr
  %channel_value.15160.111 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_value.gc.slot.15159.110)
  %unsafe.ptr_is_null.i.15161.112 = ptrtoint ptr %channel_value.15160.111 to i64
  %unsafe.ptr.null.15162.113 = icmp eq i64 %unsafe.ptr_is_null.i.15161.112, 0
  %b2i64.15163.114 = zext i1 %unsafe.ptr.null.15162.113 to i64
  %icmp.15164.115 = icmp eq i64 %b2i64.15163.114, 0
  br i1 %icmp.15164.115, label %if.then.15165, label %if.else.15166

if.then.15165:
  %channel_value.gc.slot.15168.116 = bitcast ptr %channel_value.addr.58 to ptr
  %channel_value.15169.117 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %channel_value.gc.slot.15168.116)
  call void (ptr) @py_decref(ptr %channel_value.15169.117)
  br label %if.end.15167

if.else.15166:
  br label %if.end.15167

if.end.15167:
  call void (ptr) @pcc_gc_free_object_memory(ptr %vthread)
  %gc.frame.leave.ptr.15171.119 = bitcast ptr %channel_value.addr.58 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15171.119)
  %gc.frame.leave.ptr.15172.120 = bitcast ptr %channel_owner_b.addr.50 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15172.120)
  %gc.frame.leave.ptr.15173.121 = bitcast ptr %channel_owner_a.addr.42 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15173.121)
  %gc.frame.leave.ptr.15174.122 = bitcast ptr %join_target.addr.34 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15174.122)
  %gc.frame.leave.ptr.15175.123 = bitcast ptr %exception.addr.26 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15175.123)
  %gc.frame.leave.ptr.15176.124 = bitcast ptr %result.addr.18 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15176.124)
  %gc.frame.leave.ptr.15177.125 = bitcast ptr %continuation.addr.10 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15177.125)
  ret void
}
define external void @py_dealloc_vthread_channel(ptr %channel) "no-builtins" {
strict.nolib.stub:
  %.212 = getelementptr inbounds [88 x i8], ptr @.strict.nolib.msg.34, i32 0, i32 0
  %strict.nolib.exc.15466.213 = call ptr (i64, ptr) @py_exc_new(i64 11, ptr %.212)
  call void (ptr) @py_raise(ptr %strict.nolib.exc.15466.213)
  call void (ptr) @pcc_gc_release(ptr %strict.nolib.exc.15466.213)
  ret void
}
define external i64 @py_vthread_effect_set_handler(i64 %kind, ptr %fn_ptr, ptr %ctx) "no-builtins" {
entry:
  %icmp.15468.8 = icmp slt i64 %kind, 0
  br i1 %icmp.15468.8, label %if.then.15472, label %cond.right.15469

cond.right.15469:
  %icmp.15471.10 = icmp sge i64 %kind, 64
  br i1 %icmp.15471.10, label %if.then.15472, label %if.else.15473

if.then.15472:
  ret i64 -1

if.else.15473:
  br label %if.end.15474

if.end.15474:
  %unsafe.ptr_is_null.i.15476.12 = ptrtoint ptr %fn_ptr to i64
  %unsafe.ptr.null.15477.13 = icmp eq i64 %unsafe.ptr_is_null.i.15476.12, 0
  br i1 %unsafe.ptr.null.15477.13, label %if.then.15478, label %if.else.15479

if.then.15478:
  ret i64 -1

if.else.15479:
  br label %if.end.15480

if.end.15480:
  %unsafe.global.addr.15481.14 = bitcast ptr @pcc_vthread_effect_handlers to ptr
  %unsafe.global.addr.15482.16 = bitcast ptr @pcc_vthread_effect_handler_ctxs to ptr
  %mul.15485.20 = mul i64 %kind, 8
  %unsafe.addr.15486.21 = getelementptr i8, ptr %unsafe.global.addr.15481.14, i64 %mul.15485.20
  %unsafe.addr.cast.15487.22 = bitcast ptr %unsafe.addr.15486.21 to ptr
  store ptr %fn_ptr, ptr %unsafe.addr.cast.15487.22, align 1
  %none.15489.24 = load ptr, ptr @py_None
  %mul.15492.27 = mul i64 %kind, 8
  %unsafe.addr.15493.28 = getelementptr i8, ptr %unsafe.global.addr.15482.16, i64 %mul.15492.27
  %unsafe.addr.cast.15494.29 = bitcast ptr %unsafe.addr.15493.28 to ptr
  store ptr %ctx, ptr %unsafe.addr.cast.15494.29, align 1
  %none.15496.31 = load ptr, ptr @py_None
  %unsafe.global.addr.15497.32 = bitcast ptr @pcc_vthread_effect_handler_count to ptr
  %add.15499.34 = add i64 %kind, 1
  call void (ptr, i64) @user_py_virtual_thread_runtime__counter_set(ptr %unsafe.global.addr.15497.32, i64 %add.15499.34)
  ret i64 0
}
define external i64 @py_vthread_effect_clear_handler(i64 %kind) "no-builtins" {
entry:
  %icmp.15501.4 = icmp slt i64 %kind, 0
  br i1 %icmp.15501.4, label %if.then.15505, label %cond.right.15502

cond.right.15502:
  %icmp.15504.6 = icmp sge i64 %kind, 64
  br i1 %icmp.15504.6, label %if.then.15505, label %if.else.15506

if.then.15505:
  ret i64 -1

if.else.15506:
  br label %if.end.15507

if.end.15507:
  %unsafe.global.addr.15508.7 = bitcast ptr @pcc_vthread_effect_handlers to ptr
  %mul.15511.11 = mul i64 %kind, 8
  %unsafe.addr.15512.12 = getelementptr i8, ptr %unsafe.global.addr.15508.7, i64 %mul.15511.11
  %unsafe.addr.cast.15513.13 = bitcast ptr %unsafe.addr.15512.12 to ptr
  store ptr null, ptr %unsafe.addr.cast.15513.13, align 1
  %none.15514.14 = load ptr, ptr @py_None
  ret i64 0
}
define external i64 @py_vthread_effect_perform(i64 %kind, i64 %detail) "no-builtins" {
entry:
  %result.addr.40 = alloca ptr
  store ptr null, ptr %result.addr.40
  %icmp.15516.6 = icmp slt i64 %kind, 0
  %gc.frame.map.ptr.15556.42 = bitcast ptr @.pcc.gc.frame.map.borrowed.1 to ptr
  %gc.frame.slots.ptr.15557.43 = bitcast ptr %result.addr.40 to ptr
  call void (ptr, ptr) @pcc_gc_frame_enter(ptr %gc.frame.map.ptr.15556.42, ptr %gc.frame.slots.ptr.15557.43)
  br i1 %icmp.15516.6, label %if.then.15520, label %cond.right.15517

cond.right.15517:
  %icmp.15519.8 = icmp sge i64 %kind, 64
  br i1 %icmp.15519.8, label %if.then.15520, label %if.else.15521

if.then.15520:
  %gc.frame.leave.ptr.15558.44 = bitcast ptr %result.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15558.44)
  ret i64 -1

if.else.15521:
  br label %if.end.15522

if.end.15522:
  %unsafe.global.addr.15523.9 = bitcast ptr @pcc_vthread_effect_handlers to ptr
  %mul.15526.13 = mul i64 %kind, 8
  %unsafe.addr.15527.14 = getelementptr i8, ptr %unsafe.global.addr.15523.9, i64 %mul.15526.13
  %unsafe.addr.cast.15528.15 = bitcast ptr %unsafe.addr.15527.14 to ptr
  %unsafe.load.ptr.15529.16 = load ptr, ptr %unsafe.addr.cast.15528.15, align 1
  %unsafe.ptr_is_null.i.15531.19 = ptrtoint ptr %unsafe.load.ptr.15529.16 to i64
  %unsafe.ptr.null.15532.20 = icmp eq i64 %unsafe.ptr_is_null.i.15531.19, 0
  br i1 %unsafe.ptr.null.15532.20, label %if.then.15533, label %if.else.15534

if.then.15533:
  %gc.frame.leave.ptr.15559.45 = bitcast ptr %result.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15559.45)
  ret i64 -1

if.else.15534:
  br label %if.end.15535

if.end.15535:
  %unsafe.global.addr.15536.21 = bitcast ptr @pcc_vthread_effect_handler_ctxs to ptr
  %mul.15539.25 = mul i64 %kind, 8
  %unsafe.addr.15540.26 = getelementptr i8, ptr %unsafe.global.addr.15536.21, i64 %mul.15539.25
  %unsafe.addr.cast.15541.27 = bitcast ptr %unsafe.addr.15540.26 to ptr
  %unsafe.load.ptr.15542.28 = load ptr, ptr %unsafe.addr.cast.15541.27, align 1
  %unsafe.ptr_is_null.i.15544.31 = ptrtoint ptr %unsafe.load.ptr.15542.28 to i64
  %unsafe.ptr.null.15545.32 = icmp eq i64 %unsafe.ptr_is_null.i.15544.31, 0
  br i1 %unsafe.ptr.null.15545.32, label %if.then.15546, label %if.else.15547

if.then.15546:
  %unsafe.global.load.ptr.15549.33 = load ptr, ptr @py_None
  br label %if.end.15548

if.else.15547:
  br label %if.end.15548

if.end.15548:
  %ctx.addr.29.phi = phi ptr [ %unsafe.global.load.ptr.15549.33, %if.then.15546 ], [ %unsafe.load.ptr.15542.28, %if.else.15547 ]
  %unsafe.call.i64.i64.i64.ptr.fn.15551.35 = bitcast ptr %unsafe.load.ptr.15529.16 to ptr
  %unsafe.call.i64.i64.i64.ptr.15555.39 = call i64 (i64, i64, ptr) %unsafe.call.i64.i64.i64.ptr.fn.15551.35(i64 %kind, i64 %detail, ptr %ctx.addr.29.phi)
  %m.dyn.int_box.41 = call ptr (i64) @py_int_from_i64(i64 %unsafe.call.i64.i64.i64.ptr.15555.39)
  store ptr %m.dyn.int_box.41, ptr %result.addr.40
  %result.gc.slot.15560.46 = bitcast ptr %result.addr.40 to ptr
  %result.15561.47 = call ptr (ptr, ptr) @pcc_gc_load_borrowed_ptr(ptr null, ptr %result.gc.slot.15560.46)
  %m.int_tagged.48 = inttoptr i64 1 to ptr
  %obj.scalar.eq.15562.49 = call i64 (ptr, ptr) @py_obj_eq_value(ptr %result.15561.47, ptr %m.int_tagged.48)
  %obj.scalar.eq.i1.15563.50 = icmp ne i64 %obj.scalar.eq.15562.49, 0
  br i1 %obj.scalar.eq.i1.15563.50, label %if.then.15564, label %if.else.15565

if.then.15564:
  %gc.frame.leave.ptr.15567.51 = bitcast ptr %result.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15567.51)
  ret i64 0

if.else.15565:
  br label %if.end.15566

if.end.15566:
  %gc.frame.leave.ptr.15568.52 = bitcast ptr %result.addr.40 to ptr
  call void (ptr) @pcc_gc_frame_leave(ptr %gc.frame.leave.ptr.15568.52)
  ret i64 1
}
define external i64 @py_vthread_effect_handled_count() "no-builtins" {
entry:
  %unsafe.global.addr.15569.1 = bitcast ptr @pcc_vthread_effect_handler_count to ptr
  %counter_ret.15570.2 = call i64 (ptr) @user_py_virtual_thread_runtime__counter(ptr %unsafe.global.addr.15569.1)
  ret i64 %counter_ret.15570.2
}
define external void @_pcc_py_module_top_py_virtual_thread_runtime() "no-builtins" {
entry:
  %mod.init.seen.15571.1 = load i32, ptr @.pcc.module.init.py_virtual_thread_runtime
  %mod.init.done.15572.2 = icmp ne i32 %mod.init.seen.15571.1, 0
  br i1 %mod.init.done.15572.2, label %done, label %body

body:
  store i32 1, ptr @.pcc.module.init.py_virtual_thread_runtime
  call void () @_pcc_py_static_literals_py_virtual_thread_runtime()
  %.3 = getelementptr inbounds [26 x i8], ptr @.pcc.import.binding.module.py_virtual_thread_runtime, i32 0, i32 0
  %pcc.import.binding.publish.__name.15573.4 = call i64 (ptr, ptr, ptr) @py_module_attr_set(ptr %.3, ptr getelementptr inbounds ([9 x i8], ptr @.pyattr.__name__, i32 0, i32 0), ptr @.pystr.obj.1)
  call void (ptr) @pcc_gc_release(ptr @.pystr.obj.1)
  %.5 = getelementptr inbounds [26 x i8], ptr @.pcc.import.binding.module.py_virtual_thread_runtime, i32 0, i32 0
  %pcc.import.binding.publish.__package.15574.6 = call i64 (ptr, ptr, ptr) @py_module_attr_set(ptr %.5, ptr getelementptr inbounds ([12 x i8], ptr @.pyattr.__package__, i32 0, i32 0), ptr @.pystr.obj.2)
  call void (ptr) @pcc_gc_release(ptr @.pystr.obj.2)
  %.7 = getelementptr inbounds [26 x i8], ptr @.pcc.import.binding.module.py_virtual_thread_runtime, i32 0, i32 0
  %pcc.import.binding.publish.__file.15575.8 = call i64 (ptr, ptr, ptr) @py_module_attr_set(ptr %.7, ptr getelementptr inbounds ([9 x i8], ptr @.pyattr.__file__, i32 0, i32 0), ptr @.pystr.obj.3)
  call void (ptr) @pcc_gc_release(ptr @.pystr.obj.3)
  %.9 = getelementptr inbounds [26 x i8], ptr @.pcc.import.binding.module.py_virtual_thread_runtime, i32 0, i32 0
  %pcc.import.binding.publish.__doc.15576.10 = call i64 (ptr, ptr, ptr) @py_module_attr_set(ptr %.9, ptr getelementptr inbounds ([8 x i8], ptr @.pyattr.__doc__, i32 0, i32 0), ptr @.pystr.obj.4)
  call void (ptr) @pcc_gc_release(ptr @.pystr.obj.4)
  call void (ptr) @pcc_gc_release(ptr @.pystr.obj.4)
  store i1 1, ptr @.modvar.py_virtual_thread_runtime.__pcc_runtime_port__
  store i1 1, ptr @.modvar.py_virtual_thread_runtime.__pcc_runtime_port___initialized
  %m.b2i32.11 = zext i1 1 to i32
  %m.bool_box.12 = call ptr (i32) @py_bool_from_bit(i32 %m.b2i32.11)
  %.13 = getelementptr inbounds [26 x i8], ptr @.pcc.assign.binding.module.35, i32 0, i32 0
  %pcc.assign.binding.publish.__pcc_runtime_port.15577.14 = call i64 (ptr, ptr, ptr) @py_module_attr_set(ptr %.13, ptr getelementptr inbounds ([21 x i8], ptr @.pyattr.__pcc_runtime_port__, i32 0, i32 0), ptr %m.bool_box.12)
  call void (ptr) @pcc_gc_release(ptr %m.bool_box.12)
  %.15 = getelementptr inbounds [50 x i8], ptr @.exc.msg.36, i32 0, i32 0
  %exc.ImportError.15578.16 = call ptr (i64, ptr) @py_exc_new(i64 20, ptr %.15)
  call void (ptr) @py_raise(ptr %exc.ImportError.15578.16)
  %raise.frame.exc.15579.17 = call ptr () @py_current_exception()
  %.18 = getelementptr inbounds [9 x i8], ptr @.tb.func.37, i32 0, i32 0
  %.19 = getelementptr inbounds [80 x i8], ptr @.tb.file.38, i32 0, i32 0
  %.20 = getelementptr inbounds [535 x i8], ptr @.tb.source.39, i32 0, i32 0
  call void (ptr, ptr, ptr, ptr, i32) @py_exc_append_frame_source(ptr %raise.frame.exc.15579.17, ptr %.18, ptr %.19, ptr %.20, i32 20)
  br label %err.exit

done:
  ret void

err.exit:
  br label %err.finish

err.finish:
  ret void

raise.cont.15580:
  unreachable
}
define internal void @_pcc_py_static_literals_py_virtual_thread_runtime() "no-builtins" {
entry:
  %static.literals.seen.1 = load i32, ptr @.pcc.static.literals.init.py_virtual_thread_runtime
  %static.literals.done.2 = icmp ne i32 %static.literals.seen.1, 0
  br i1 %static.literals.done.2, label %done, label %body

body:
  store i32 1, ptr @.pcc.static.literals.init.py_virtual_thread_runtime
  %.3 = bitcast ptr @.pystr.obj.1 to ptr
  %.4 = call i64 (ptr) @pcc_gc_pointer_register(ptr %.3)
  %.5 = bitcast ptr @.pystr.obj.2 to ptr
  %.6 = call i64 (ptr) @pcc_gc_pointer_register(ptr %.5)
  %.7 = bitcast ptr @.pystr.obj.3 to ptr
  %.8 = call i64 (ptr) @pcc_gc_pointer_register(ptr %.7)
  %.9 = bitcast ptr @.pystr.obj.4 to ptr
  %.10 = call i64 (ptr) @pcc_gc_pointer_register(ptr %.9)
  br label %done

done:
  ret void
}
define external void @_pcc_py_module_fini_py_virtual_thread_runtime() "no-builtins" {
entry:
  %mod.fini.seen.15581.1 = load i32, ptr @.pcc.module.fini.py_virtual_thread_runtime
  %mod.fini.done.15582.2 = icmp ne i32 %mod.fini.seen.15581.1, 0
  br i1 %mod.fini.done.15582.2, label %done, label %body

body:
  store i32 1, ptr @.pcc.module.fini.py_virtual_thread_runtime
  %.3 = getelementptr inbounds [26 x i8], ptr @.pcc.assign.binding.module.35, i32 0, i32 0
  br label %done

done:
  ret void
}




































































































































































































































































































































































































































































































