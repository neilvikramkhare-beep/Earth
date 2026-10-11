// Earth Language Explicit Wrapper for getpass
// Automatically generated with ALL functions

py_getpass = __import__('getpass')

GetPassWarning = getattr(py_getpass, 'GetPassWarning', None);
contextlib = getattr(py_getpass, 'contextlib', None);
define fallback_getpass(*args, **kwargs):
    return py_getpass.fallback_getpass(*args, **kwargs);

define getpass(*args, **kwargs):
    return py_getpass.getpass(*args, **kwargs);

define getuser(*args, **kwargs):
    return py_getpass.getuser(*args, **kwargs);

io = getattr(py_getpass, 'io', None);
msvcrt = getattr(py_getpass, 'msvcrt', None);
os = getattr(py_getpass, 'os', None);
sys = getattr(py_getpass, 'sys', None);
define unix_getpass(*args, **kwargs):
    return py_getpass.unix_getpass(*args, **kwargs);

define win_getpass(*args, **kwargs):
    return py_getpass.win_getpass(*args, **kwargs);

