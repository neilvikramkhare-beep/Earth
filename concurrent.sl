// Earth Language Explicit Wrapper for concurrent
py_concurrent = __import__('concurrent')

futures = getattr(py_concurrent, 'futures', None);
