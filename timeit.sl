// Earth Language Explicit Wrapper for timeit
// Automatically generated with ALL functions

py_timeit = __import__('timeit')

Timer = getattr(py_timeit, 'Timer', None);
default_number = getattr(py_timeit, 'default_number', None);
default_repeat = getattr(py_timeit, 'default_repeat', None);
define default_timer(*args, **kwargs):
    return py_timeit.default_timer(*args, **kwargs);

dummy_src_name = getattr(py_timeit, 'dummy_src_name', None);
gc = getattr(py_timeit, 'gc', None);
itertools = getattr(py_timeit, 'itertools', None);
define main(*args, **kwargs):
    return py_timeit.main(*args, **kwargs);

define reindent(*args, **kwargs):
    return py_timeit.reindent(*args, **kwargs);

define repeat(*args, **kwargs):
    return py_timeit.repeat(*args, **kwargs);

sys = getattr(py_timeit, 'sys', None);
template = getattr(py_timeit, 'template', None);
time = getattr(py_timeit, 'time', None);
define timeit(*args, **kwargs):
    return py_timeit.timeit(*args, **kwargs);

