// Earth Language Explicit Wrapper for fnmatch
// Automatically generated with ALL functions

py_fnmatch = __import__('fnmatch')

define filter(*args, **kwargs):
    return py_fnmatch.filter(*args, **kwargs);

define filterfalse(*args, **kwargs):
    return py_fnmatch.filterfalse(*args, **kwargs);

define fnmatch(*args, **kwargs):
    return py_fnmatch.fnmatch(*args, **kwargs);

define fnmatchcase(*args, **kwargs):
    return py_fnmatch.fnmatchcase(*args, **kwargs);

functools = getattr(py_fnmatch, 'functools', None);
itertools = getattr(py_fnmatch, 'itertools', None);
os = getattr(py_fnmatch, 'os', None);
posixpath = getattr(py_fnmatch, 'posixpath', None);
re = getattr(py_fnmatch, 're', None);
define translate(*args, **kwargs):
    return py_fnmatch.translate(*args, **kwargs);

