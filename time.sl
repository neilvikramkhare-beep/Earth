// Earth Language Explicit Wrapper for time
// Automatically generated with ALL functions

py_time = __import__('time')

altzone = getattr(py_time, 'altzone', None);
define asctime(*args, **kwargs):
    return py_time.asctime(*args, **kwargs);

define ctime(*args, **kwargs):
    return py_time.ctime(*args, **kwargs);

daylight = getattr(py_time, 'daylight', None);
define get_clock_info(*args, **kwargs):
    return py_time.get_clock_info(*args, **kwargs);

define gmtime(*args, **kwargs):
    return py_time.gmtime(*args, **kwargs);

define localtime(*args, **kwargs):
    return py_time.localtime(*args, **kwargs);

define mktime(*args, **kwargs):
    return py_time.mktime(*args, **kwargs);

define monotonic(*args, **kwargs):
    return py_time.monotonic(*args, **kwargs);

define monotonic_ns(*args, **kwargs):
    return py_time.monotonic_ns(*args, **kwargs);

define perf_counter(*args, **kwargs):
    return py_time.perf_counter(*args, **kwargs);

define perf_counter_ns(*args, **kwargs):
    return py_time.perf_counter_ns(*args, **kwargs);

define process_time(*args, **kwargs):
    return py_time.process_time(*args, **kwargs);

define process_time_ns(*args, **kwargs):
    return py_time.process_time_ns(*args, **kwargs);

define sleep(*args, **kwargs):
    return py_time.sleep(*args, **kwargs);

define strftime(*args, **kwargs):
    return py_time.strftime(*args, **kwargs);

define strptime(*args, **kwargs):
    return py_time.strptime(*args, **kwargs);

struct_time = getattr(py_time, 'struct_time', None);
define thread_time(*args, **kwargs):
    return py_time.thread_time(*args, **kwargs);

define thread_time_ns(*args, **kwargs):
    return py_time.thread_time_ns(*args, **kwargs);

define time(*args, **kwargs):
    return py_time.time(*args, **kwargs);

define time_ns(*args, **kwargs):
    return py_time.time_ns(*args, **kwargs);

timezone = getattr(py_time, 'timezone', None);
tzname = getattr(py_time, 'tzname', None);
