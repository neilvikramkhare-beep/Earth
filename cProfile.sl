// Earth Language Explicit Wrapper for cProfile
py_cProfile = __import__('cProfile')

Profile = getattr(py_cProfile, 'Profile', None);
importlib = getattr(py_cProfile, 'importlib', None);
io = getattr(py_cProfile, 'io', None);
define label(*args, **kwargs):
    return py_cProfile.label(*args, **kwargs);

define main(*args, **kwargs):
    return py_cProfile.main(*args, **kwargs);

define run(*args, **kwargs):
    return py_cProfile.run(*args, **kwargs);

define runctx(*args, **kwargs):
    return py_cProfile.runctx(*args, **kwargs);

