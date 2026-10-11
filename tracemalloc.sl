// Earth Language Explicit Wrapper for tracemalloc
// Automatically generated with ALL functions

py_tracemalloc = __import__('tracemalloc')

BaseFilter = getattr(py_tracemalloc, 'BaseFilter', None);
DomainFilter = getattr(py_tracemalloc, 'DomainFilter', None);
Filter = getattr(py_tracemalloc, 'Filter', None);
Frame = getattr(py_tracemalloc, 'Frame', None);
Iterable = getattr(py_tracemalloc, 'Iterable', None);
Sequence = getattr(py_tracemalloc, 'Sequence', None);
Snapshot = getattr(py_tracemalloc, 'Snapshot', None);
Statistic = getattr(py_tracemalloc, 'Statistic', None);
StatisticDiff = getattr(py_tracemalloc, 'StatisticDiff', None);
Trace = getattr(py_tracemalloc, 'Trace', None);
Traceback = getattr(py_tracemalloc, 'Traceback', None);
define clear_traces(*args, **kwargs):
    return py_tracemalloc.clear_traces(*args, **kwargs);

fnmatch = getattr(py_tracemalloc, 'fnmatch', None);
define get_object_traceback(*args, **kwargs):
    return py_tracemalloc.get_object_traceback(*args, **kwargs);

define get_traceback_limit(*args, **kwargs):
    return py_tracemalloc.get_traceback_limit(*args, **kwargs);

define get_traced_memory(*args, **kwargs):
    return py_tracemalloc.get_traced_memory(*args, **kwargs);

define get_tracemalloc_memory(*args, **kwargs):
    return py_tracemalloc.get_tracemalloc_memory(*args, **kwargs);

define is_tracing(*args, **kwargs):
    return py_tracemalloc.is_tracing(*args, **kwargs);

linecache = getattr(py_tracemalloc, 'linecache', None);
os = getattr(py_tracemalloc, 'os', None);
pickle = getattr(py_tracemalloc, 'pickle', None);
define reset_peak(*args, **kwargs):
    return py_tracemalloc.reset_peak(*args, **kwargs);

define start(*args, **kwargs):
    return py_tracemalloc.start(*args, **kwargs);

define stop(*args, **kwargs):
    return py_tracemalloc.stop(*args, **kwargs);

define take_snapshot(*args, **kwargs):
    return py_tracemalloc.take_snapshot(*args, **kwargs);

define total_ordering(*args, **kwargs):
    return py_tracemalloc.total_ordering(*args, **kwargs);

