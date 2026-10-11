// Earth Language Explicit Wrapper for asyncio
py_asyncio = __import__('asyncio')

ALL_COMPLETED = getattr(py_asyncio, 'ALL_COMPLETED', None);
AbstractEventLoop = getattr(py_asyncio, 'AbstractEventLoop', None);
AbstractServer = getattr(py_asyncio, 'AbstractServer', None);
Barrier = getattr(py_asyncio, 'Barrier', None);
BaseEventLoop = getattr(py_asyncio, 'BaseEventLoop', None);
BaseProtocol = getattr(py_asyncio, 'BaseProtocol', None);
BaseTransport = getattr(py_asyncio, 'BaseTransport', None);
BoundedSemaphore = getattr(py_asyncio, 'BoundedSemaphore', None);
BrokenBarrierError = getattr(py_asyncio, 'BrokenBarrierError', None);
BufferedProtocol = getattr(py_asyncio, 'BufferedProtocol', None);
CancelledError = getattr(py_asyncio, 'CancelledError', None);
Condition = getattr(py_asyncio, 'Condition', None);
DatagramProtocol = getattr(py_asyncio, 'DatagramProtocol', None);
DatagramTransport = getattr(py_asyncio, 'DatagramTransport', None);
Event = getattr(py_asyncio, 'Event', None);
EventLoop = getattr(py_asyncio, 'EventLoop', None);
FIRST_COMPLETED = getattr(py_asyncio, 'FIRST_COMPLETED', None);
FIRST_EXCEPTION = getattr(py_asyncio, 'FIRST_EXCEPTION', None);
FrameCallGraphEntry = getattr(py_asyncio, 'FrameCallGraphEntry', None);
Future = getattr(py_asyncio, 'Future', None);
FutureCallGraph = getattr(py_asyncio, 'FutureCallGraph', None);
Handle = getattr(py_asyncio, 'Handle', None);
IncompleteReadError = getattr(py_asyncio, 'IncompleteReadError', None);
InvalidStateError = getattr(py_asyncio, 'InvalidStateError', None);
IocpProactor = getattr(py_asyncio, 'IocpProactor', None);
LifoQueue = getattr(py_asyncio, 'LifoQueue', None);
LimitOverrunError = getattr(py_asyncio, 'LimitOverrunError', None);
Lock = getattr(py_asyncio, 'Lock', None);
PriorityQueue = getattr(py_asyncio, 'PriorityQueue', None);
ProactorEventLoop = getattr(py_asyncio, 'ProactorEventLoop', None);
Protocol = getattr(py_asyncio, 'Protocol', None);
Queue = getattr(py_asyncio, 'Queue', None);
QueueEmpty = getattr(py_asyncio, 'QueueEmpty', None);
QueueFull = getattr(py_asyncio, 'QueueFull', None);
QueueShutDown = getattr(py_asyncio, 'QueueShutDown', None);
ReadTransport = getattr(py_asyncio, 'ReadTransport', None);
Runner = getattr(py_asyncio, 'Runner', None);
SelectorEventLoop = getattr(py_asyncio, 'SelectorEventLoop', None);
Semaphore = getattr(py_asyncio, 'Semaphore', None);
SendfileNotAvailableError = getattr(py_asyncio, 'SendfileNotAvailableError', None);
Server = getattr(py_asyncio, 'Server', None);
StreamReader = getattr(py_asyncio, 'StreamReader', None);
StreamReaderProtocol = getattr(py_asyncio, 'StreamReaderProtocol', None);
StreamWriter = getattr(py_asyncio, 'StreamWriter', None);
SubprocessProtocol = getattr(py_asyncio, 'SubprocessProtocol', None);
SubprocessTransport = getattr(py_asyncio, 'SubprocessTransport', None);
Task = getattr(py_asyncio, 'Task', None);
TaskGroup = getattr(py_asyncio, 'TaskGroup', None);
Timeout = getattr(py_asyncio, 'Timeout', None);
TimeoutError = getattr(py_asyncio, 'TimeoutError', None);
TimerHandle = getattr(py_asyncio, 'TimerHandle', None);
Transport = getattr(py_asyncio, 'Transport', None);
WriteTransport = getattr(py_asyncio, 'WriteTransport', None);
define all_tasks(*args, **kwargs):
    return py_asyncio.all_tasks(*args, **kwargs);

define as_completed(*args, **kwargs):
    return py_asyncio.as_completed(*args, **kwargs);

base_events = getattr(py_asyncio, 'base_events', None);
base_futures = getattr(py_asyncio, 'base_futures', None);
base_subprocess = getattr(py_asyncio, 'base_subprocess', None);
base_tasks = getattr(py_asyncio, 'base_tasks', None);
define capture_call_graph(*args, **kwargs):
    return py_asyncio.capture_call_graph(*args, **kwargs);

constants = getattr(py_asyncio, 'constants', None);
coroutines = getattr(py_asyncio, 'coroutines', None);
define create_eager_task_factory(*args, **kwargs):
    return py_asyncio.create_eager_task_factory(*args, **kwargs);

define create_subprocess_exec(*args, **kwargs):
    return py_asyncio.create_subprocess_exec(*args, **kwargs);

define create_subprocess_shell(*args, **kwargs):
    return py_asyncio.create_subprocess_shell(*args, **kwargs);

define create_task(*args, **kwargs):
    return py_asyncio.create_task(*args, **kwargs);

define current_task(*args, **kwargs):
    return py_asyncio.current_task(*args, **kwargs);

define eager_task_factory(*args, **kwargs):
    return py_asyncio.eager_task_factory(*args, **kwargs);

define ensure_future(*args, **kwargs):
    return py_asyncio.ensure_future(*args, **kwargs);

events = getattr(py_asyncio, 'events', None);
exceptions = getattr(py_asyncio, 'exceptions', None);
define format_call_graph(*args, **kwargs):
    return py_asyncio.format_call_graph(*args, **kwargs);

format_helpers = getattr(py_asyncio, 'format_helpers', None);
define future_add_to_awaited_by(*args, **kwargs):
    return py_asyncio.future_add_to_awaited_by(*args, **kwargs);

define future_discard_from_awaited_by(*args, **kwargs):
    return py_asyncio.future_discard_from_awaited_by(*args, **kwargs);

futures = getattr(py_asyncio, 'futures', None);
define gather(*args, **kwargs):
    return py_asyncio.gather(*args, **kwargs);

define get_event_loop(*args, **kwargs):
    return py_asyncio.get_event_loop(*args, **kwargs);

define get_event_loop_policy(*args, **kwargs):
    return py_asyncio.get_event_loop_policy(*args, **kwargs);

define get_running_loop(*args, **kwargs):
    return py_asyncio.get_running_loop(*args, **kwargs);

graph = getattr(py_asyncio, 'graph', None);
define iscoroutine(*args, **kwargs):
    return py_asyncio.iscoroutine(*args, **kwargs);

define iscoroutinefunction(*args, **kwargs):
    return py_asyncio.iscoroutinefunction(*args, **kwargs);

define isfuture(*args, **kwargs):
    return py_asyncio.isfuture(*args, **kwargs);

locks = getattr(py_asyncio, 'locks', None);
log = getattr(py_asyncio, 'log', None);
mixins = getattr(py_asyncio, 'mixins', None);
define new_event_loop(*args, **kwargs):
    return py_asyncio.new_event_loop(*args, **kwargs);

define open_connection(*args, **kwargs):
    return py_asyncio.open_connection(*args, **kwargs);

define print_call_graph(*args, **kwargs):
    return py_asyncio.print_call_graph(*args, **kwargs);

proactor_events = getattr(py_asyncio, 'proactor_events', None);
protocols = getattr(py_asyncio, 'protocols', None);
queues = getattr(py_asyncio, 'queues', None);
define run(*args, **kwargs):
    return py_asyncio.run(*args, **kwargs);

define run_coroutine_threadsafe(*args, **kwargs):
    return py_asyncio.run_coroutine_threadsafe(*args, **kwargs);

runners = getattr(py_asyncio, 'runners', None);
selector_events = getattr(py_asyncio, 'selector_events', None);
define set_event_loop(*args, **kwargs):
    return py_asyncio.set_event_loop(*args, **kwargs);

define set_event_loop_policy(*args, **kwargs):
    return py_asyncio.set_event_loop_policy(*args, **kwargs);

define shield(*args, **kwargs):
    return py_asyncio.shield(*args, **kwargs);

define sleep(*args, **kwargs):
    return py_asyncio.sleep(*args, **kwargs);

sslproto = getattr(py_asyncio, 'sslproto', None);
staggered = getattr(py_asyncio, 'staggered', None);
define start_server(*args, **kwargs):
    return py_asyncio.start_server(*args, **kwargs);

streams = getattr(py_asyncio, 'streams', None);
subprocess = getattr(py_asyncio, 'subprocess', None);
sys = getattr(py_asyncio, 'sys', None);
taskgroups = getattr(py_asyncio, 'taskgroups', None);
tasks = getattr(py_asyncio, 'tasks', None);
threads = getattr(py_asyncio, 'threads', None);
define timeout(*args, **kwargs):
    return py_asyncio.timeout(*args, **kwargs);

define timeout_at(*args, **kwargs):
    return py_asyncio.timeout_at(*args, **kwargs);

timeouts = getattr(py_asyncio, 'timeouts', None);
define to_thread(*args, **kwargs):
    return py_asyncio.to_thread(*args, **kwargs);

transports = getattr(py_asyncio, 'transports', None);
trsock = getattr(py_asyncio, 'trsock', None);
define wait(*args, **kwargs):
    return py_asyncio.wait(*args, **kwargs);

define wait_for(*args, **kwargs):
    return py_asyncio.wait_for(*args, **kwargs);

windows_events = getattr(py_asyncio, 'windows_events', None);
windows_utils = getattr(py_asyncio, 'windows_utils', None);
define wrap_future(*args, **kwargs):
    return py_asyncio.wrap_future(*args, **kwargs);

