// Earth Language Explicit Wrapper for signal
// Automatically generated with ALL functions

py_signal = __import__('signal')

CTRL_BREAK_EVENT = getattr(py_signal, 'CTRL_BREAK_EVENT', None);
CTRL_C_EVENT = getattr(py_signal, 'CTRL_C_EVENT', None);
Handlers = getattr(py_signal, 'Handlers', None);
NSIG = getattr(py_signal, 'NSIG', None);
SIGABRT = getattr(py_signal, 'SIGABRT', None);
SIGBREAK = getattr(py_signal, 'SIGBREAK', None);
SIGFPE = getattr(py_signal, 'SIGFPE', None);
SIGILL = getattr(py_signal, 'SIGILL', None);
SIGINT = getattr(py_signal, 'SIGINT', None);
SIGSEGV = getattr(py_signal, 'SIGSEGV', None);
SIGTERM = getattr(py_signal, 'SIGTERM', None);
SIG_DFL = getattr(py_signal, 'SIG_DFL', None);
SIG_IGN = getattr(py_signal, 'SIG_IGN', None);
Signals = getattr(py_signal, 'Signals', None);
define default_int_handler(*args, **kwargs):
    return py_signal.default_int_handler(*args, **kwargs);

define getsignal(*args, **kwargs):
    return py_signal.getsignal(*args, **kwargs);

define raise_signal(*args, **kwargs):
    return py_signal.raise_signal(*args, **kwargs);

define set_wakeup_fd(*args, **kwargs):
    return py_signal.set_wakeup_fd(*args, **kwargs);

define signal(*args, **kwargs):
    return py_signal.signal(*args, **kwargs);

define strsignal(*args, **kwargs):
    return py_signal.strsignal(*args, **kwargs);

define valid_signals(*args, **kwargs):
    return py_signal.valid_signals(*args, **kwargs);

