// Earth Language Explicit Wrapper for queue
// Automatically generated with ALL functions

py_queue = __import__('queue')

Empty = getattr(py_queue, 'Empty', None);
Full = getattr(py_queue, 'Full', None);
LifoQueue = getattr(py_queue, 'LifoQueue', None);
PriorityQueue = getattr(py_queue, 'PriorityQueue', None);
Queue = getattr(py_queue, 'Queue', None);
ShutDown = getattr(py_queue, 'ShutDown', None);
SimpleQueue = getattr(py_queue, 'SimpleQueue', None);
deque = getattr(py_queue, 'deque', None);
define heappop(*args, **kwargs):
    return py_queue.heappop(*args, **kwargs);

define heappush(*args, **kwargs):
    return py_queue.heappush(*args, **kwargs);

threading = getattr(py_queue, 'threading', None);
define time(*args, **kwargs):
    return py_queue.time(*args, **kwargs);

types = getattr(py_queue, 'types', None);
