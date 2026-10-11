// Earth Language Explicit Wrapper for sched
// Automatically generated with ALL functions

py_sched = __import__('sched')

Event = getattr(py_sched, 'Event', None);
count = getattr(py_sched, 'count', None);
heapq = getattr(py_sched, 'heapq', None);
define namedtuple(*args, **kwargs):
    return py_sched.namedtuple(*args, **kwargs);

scheduler = getattr(py_sched, 'scheduler', None);
threading = getattr(py_sched, 'threading', None);
time = getattr(py_sched, 'time', None);
