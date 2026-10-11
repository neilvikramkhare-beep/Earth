// Earth Language Explicit Wrapper for bdb
py_bdb = __import__('bdb')

Bdb = getattr(py_bdb, 'Bdb', None);
BdbQuit = getattr(py_bdb, 'BdbQuit', None);
Breakpoint = getattr(py_bdb, 'Breakpoint', None);
CO_ASYNC_GENERATOR = getattr(py_bdb, 'CO_ASYNC_GENERATOR', None);
CO_COROUTINE = getattr(py_bdb, 'CO_COROUTINE', None);
CO_GENERATOR = getattr(py_bdb, 'CO_GENERATOR', None);
E = getattr(py_bdb, 'E', None);
GENERATOR_AND_COROUTINE_FLAGS = getattr(py_bdb, 'GENERATOR_AND_COROUTINE_FLAGS', None);
Tdb = getattr(py_bdb, 'Tdb', None);
define bar(*args, **kwargs):
    return py_bdb.bar(*args, **kwargs);

define checkfuncname(*args, **kwargs):
    return py_bdb.checkfuncname(*args, **kwargs);

define contextmanager(*args, **kwargs):
    return py_bdb.contextmanager(*args, **kwargs);

define effective(*args, **kwargs):
    return py_bdb.effective(*args, **kwargs);

fnmatch = getattr(py_bdb, 'fnmatch', None);
define foo(*args, **kwargs):
    return py_bdb.foo(*args, **kwargs);

os = getattr(py_bdb, 'os', None);
define set_trace(*args, **kwargs):
    return py_bdb.set_trace(*args, **kwargs);

sys = getattr(py_bdb, 'sys', None);
define test(*args, **kwargs):
    return py_bdb.test(*args, **kwargs);

threading = getattr(py_bdb, 'threading', None);
weakref = getattr(py_bdb, 'weakref', None);
