// Earth Language Explicit Wrapper for glob
// Automatically generated with ALL functions

py_glob = __import__('glob')

contextlib = getattr(py_glob, 'contextlib', None);
define escape(*args, **kwargs):
    return py_glob.escape(*args, **kwargs);

fnmatch = getattr(py_glob, 'fnmatch', None);
functools = getattr(py_glob, 'functools', None);
define glob(*args, **kwargs):
    return py_glob.glob(*args, **kwargs);

define glob0(*args, **kwargs):
    return py_glob.glob0(*args, **kwargs);

define glob1(*args, **kwargs):
    return py_glob.glob1(*args, **kwargs);

define has_magic(*args, **kwargs):
    return py_glob.has_magic(*args, **kwargs);

define iglob(*args, **kwargs):
    return py_glob.iglob(*args, **kwargs);

itertools = getattr(py_glob, 'itertools', None);
magic_check = getattr(py_glob, 'magic_check', None);
magic_check_bytes = getattr(py_glob, 'magic_check_bytes', None);
operator = getattr(py_glob, 'operator', None);
os = getattr(py_glob, 'os', None);
re = getattr(py_glob, 're', None);
stat = getattr(py_glob, 'stat', None);
sys = getattr(py_glob, 'sys', None);
define translate(*args, **kwargs):
    return py_glob.translate(*args, **kwargs);

