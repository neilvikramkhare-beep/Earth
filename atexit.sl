// Earth Language Explicit Wrapper for atexit
py_atexit = __import__('atexit')

define register(*args, **kwargs):
    return py_atexit.register(*args, **kwargs);

define unregister(*args, **kwargs):
    return py_atexit.unregister(*args, **kwargs);

