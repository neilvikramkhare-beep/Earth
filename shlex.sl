// Earth Language Explicit Wrapper for shlex
// Automatically generated with ALL functions

py_shlex = __import__('shlex')

StringIO = getattr(py_shlex, 'StringIO', None);
define join(*args, **kwargs):
    return py_shlex.join(*args, **kwargs);

define quote(*args, **kwargs):
    return py_shlex.quote(*args, **kwargs);

shlex = getattr(py_shlex, 'shlex', None);
define split(*args, **kwargs):
    return py_shlex.split(*args, **kwargs);

sys = getattr(py_shlex, 'sys', None);
