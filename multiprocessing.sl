// Earth Language Explicit Wrapper for multiprocessing
// Automatically generated with ALL functions

py_multiprocessing = __import__('multiprocessing')

Array = getattr(py_multiprocessing, 'Array', None);
AuthenticationError = getattr(py_multiprocessing, 'AuthenticationError', None);
Barrier = getattr(py_multiprocessing, 'Barrier', None);
BoundedSemaphore = getattr(py_multiprocessing, 'BoundedSemaphore', None);
BufferTooShort = getattr(py_multiprocessing, 'BufferTooShort', None);
Condition = getattr(py_multiprocessing, 'Condition', None);
Event = getattr(py_multiprocessing, 'Event', None);
JoinableQueue = getattr(py_multiprocessing, 'JoinableQueue', None);
Lock = getattr(py_multiprocessing, 'Lock', None);
Manager = getattr(py_multiprocessing, 'Manager', None);
Pipe = getattr(py_multiprocessing, 'Pipe', None);
Pool = getattr(py_multiprocessing, 'Pool', None);
Process = getattr(py_multiprocessing, 'Process', None);
ProcessError = getattr(py_multiprocessing, 'ProcessError', None);
Queue = getattr(py_multiprocessing, 'Queue', None);
RLock = getattr(py_multiprocessing, 'RLock', None);
RawArray = getattr(py_multiprocessing, 'RawArray', None);
RawValue = getattr(py_multiprocessing, 'RawValue', None);
SUBDEBUG = getattr(py_multiprocessing, 'SUBDEBUG', None);
SUBWARNING = getattr(py_multiprocessing, 'SUBWARNING', None);
Semaphore = getattr(py_multiprocessing, 'Semaphore', None);
SimpleQueue = getattr(py_multiprocessing, 'SimpleQueue', None);
TimeoutError = getattr(py_multiprocessing, 'TimeoutError', None);
Value = getattr(py_multiprocessing, 'Value', None);
define active_children(*args, **kwargs):
    return py_multiprocessing.active_children(*args, **kwargs);

allow_connection_pickling = getattr(py_multiprocessing, 'allow_connection_pickling', None);
context = getattr(py_multiprocessing, 'context', None);
cpu_count = getattr(py_multiprocessing, 'cpu_count', None);
define current_process(*args, **kwargs):
    return py_multiprocessing.current_process(*args, **kwargs);

freeze_support = getattr(py_multiprocessing, 'freeze_support', None);
get_all_start_methods = getattr(py_multiprocessing, 'get_all_start_methods', None);
get_context = getattr(py_multiprocessing, 'get_context', None);
get_logger = getattr(py_multiprocessing, 'get_logger', None);
get_start_method = getattr(py_multiprocessing, 'get_start_method', None);
log_to_stderr = getattr(py_multiprocessing, 'log_to_stderr', None);
define parent_process(*args, **kwargs):
    return py_multiprocessing.parent_process(*args, **kwargs);

process = getattr(py_multiprocessing, 'process', None);
reducer = getattr(py_multiprocessing, 'reducer', None);
reduction = getattr(py_multiprocessing, 'reduction', None);
set_executable = getattr(py_multiprocessing, 'set_executable', None);
set_forkserver_preload = getattr(py_multiprocessing, 'set_forkserver_preload', None);
set_start_method = getattr(py_multiprocessing, 'set_start_method', None);
sys = getattr(py_multiprocessing, 'sys', None);
