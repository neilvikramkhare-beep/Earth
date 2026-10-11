// Earth Language Explicit Wrapper for runpy
// Automatically generated with ALL functions

py_runpy = __import__('runpy')

ModuleType = getattr(py_runpy, 'ModuleType', None);
importlib = getattr(py_runpy, 'importlib', None);
io = getattr(py_runpy, 'io', None);
os = getattr(py_runpy, 'os', None);
define run_module(*args, **kwargs):
    return py_runpy.run_module(*args, **kwargs);

define run_path(*args, **kwargs):
    return py_runpy.run_path(*args, **kwargs);

sys = getattr(py_runpy, 'sys', None);
