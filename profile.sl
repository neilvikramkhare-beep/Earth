// Earth Language Explicit Wrapper for profile
// Automatically generated with ALL functions

py_profile = __import__('profile')

Profile = getattr(py_profile, 'Profile', None);
importlib = getattr(py_profile, 'importlib', None);
io = getattr(py_profile, 'io', None);
define main(*args, **kwargs):
    return py_profile.main(*args, **kwargs);

marshal = getattr(py_profile, 'marshal', None);
define run(*args, **kwargs):
    return py_profile.run(*args, **kwargs);

define runctx(*args, **kwargs):
    return py_profile.runctx(*args, **kwargs);

sys = getattr(py_profile, 'sys', None);
time = getattr(py_profile, 'time', None);
