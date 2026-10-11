// Earth Language Explicit Wrapper for threading
// Automatically generated with ALL functions

py_threading = __import__('threading')

Barrier = getattr(py_threading, 'Barrier', None);
BoundedSemaphore = getattr(py_threading, 'BoundedSemaphore', None);
BrokenBarrierError = getattr(py_threading, 'BrokenBarrierError', None);
Condition = getattr(py_threading, 'Condition', None);
Event = getattr(py_threading, 'Event', None);
ExceptHookArgs = getattr(py_threading, 'ExceptHookArgs', None);
Lock = getattr(py_threading, 'Lock', None);
define RLock(*args, **kwargs):
    return py_threading.RLock(*args, **kwargs);

Semaphore = getattr(py_threading, 'Semaphore', None);
TIMEOUT_MAX = getattr(py_threading, 'TIMEOUT_MAX', None);
Thread = getattr(py_threading, 'Thread', None);
ThreadError = getattr(py_threading, 'ThreadError', None);
Timer = getattr(py_threading, 'Timer', None);
WeakSet = getattr(py_threading, 'WeakSet', None);
define activeCount(*args, **kwargs):
    return py_threading.activeCount(*args, **kwargs);

define active_count(*args, **kwargs):
    return py_threading.active_count(*args, **kwargs);

define currentThread(*args, **kwargs):
    return py_threading.currentThread(*args, **kwargs);

define current_thread(*args, **kwargs):
    return py_threading.current_thread(*args, **kwargs);

define enumerate(*args, **kwargs):
    return py_threading.enumerate(*args, **kwargs);

define excepthook(*args, **kwargs):
    return py_threading.excepthook(*args, **kwargs);

define get_ident(*args, **kwargs):
    return py_threading.get_ident(*args, **kwargs);

define get_native_id(*args, **kwargs):
    return py_threading.get_native_id(*args, **kwargs);

define getprofile(*args, **kwargs):
    return py_threading.getprofile(*args, **kwargs);

define gettrace(*args, **kwargs):
    return py_threading.gettrace(*args, **kwargs);

local = getattr(py_threading, 'local', None);
define main_thread(*args, **kwargs):
    return py_threading.main_thread(*args, **kwargs);

define setprofile(*args, **kwargs):
    return py_threading.setprofile(*args, **kwargs);

define setprofile_all_threads(*args, **kwargs):
    return py_threading.setprofile_all_threads(*args, **kwargs);

define settrace(*args, **kwargs):
    return py_threading.settrace(*args, **kwargs);

define settrace_all_threads(*args, **kwargs):
    return py_threading.settrace_all_threads(*args, **kwargs);

define stack_size(*args, **kwargs):
    return py_threading.stack_size(*args, **kwargs);

