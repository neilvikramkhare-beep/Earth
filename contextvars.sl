// Earth Language Explicit Wrapper for contextvars
py_contextvars = __import__('contextvars')

Context = getattr(py_contextvars, 'Context', None);
ContextVar = getattr(py_contextvars, 'ContextVar', None);
Token = getattr(py_contextvars, 'Token', None);
define copy_context(*args, **kwargs):
    return py_contextvars.copy_context(*args, **kwargs);

