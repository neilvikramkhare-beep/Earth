// Earth Language Explicit Wrapper for winsound
// Automatically generated with ALL functions

py_winsound = __import__('winsound')

define Beep(*args, **kwargs):
    return py_winsound.Beep(*args, **kwargs);

MB_ICONASTERISK = getattr(py_winsound, 'MB_ICONASTERISK', None);
MB_ICONERROR = getattr(py_winsound, 'MB_ICONERROR', None);
MB_ICONEXCLAMATION = getattr(py_winsound, 'MB_ICONEXCLAMATION', None);
MB_ICONHAND = getattr(py_winsound, 'MB_ICONHAND', None);
MB_ICONINFORMATION = getattr(py_winsound, 'MB_ICONINFORMATION', None);
MB_ICONQUESTION = getattr(py_winsound, 'MB_ICONQUESTION', None);
MB_ICONSTOP = getattr(py_winsound, 'MB_ICONSTOP', None);
MB_ICONWARNING = getattr(py_winsound, 'MB_ICONWARNING', None);
MB_OK = getattr(py_winsound, 'MB_OK', None);
define MessageBeep(*args, **kwargs):
    return py_winsound.MessageBeep(*args, **kwargs);

define PlaySound(*args, **kwargs):
    return py_winsound.PlaySound(*args, **kwargs);

SND_ALIAS = getattr(py_winsound, 'SND_ALIAS', None);
SND_APPLICATION = getattr(py_winsound, 'SND_APPLICATION', None);
SND_ASYNC = getattr(py_winsound, 'SND_ASYNC', None);
SND_FILENAME = getattr(py_winsound, 'SND_FILENAME', None);
SND_LOOP = getattr(py_winsound, 'SND_LOOP', None);
SND_MEMORY = getattr(py_winsound, 'SND_MEMORY', None);
SND_NODEFAULT = getattr(py_winsound, 'SND_NODEFAULT', None);
SND_NOSTOP = getattr(py_winsound, 'SND_NOSTOP', None);
SND_NOWAIT = getattr(py_winsound, 'SND_NOWAIT', None);
SND_PURGE = getattr(py_winsound, 'SND_PURGE', None);
SND_SENTRY = getattr(py_winsound, 'SND_SENTRY', None);
SND_SYNC = getattr(py_winsound, 'SND_SYNC', None);
SND_SYSTEM = getattr(py_winsound, 'SND_SYSTEM', None);
