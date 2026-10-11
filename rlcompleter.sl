// Earth Language Explicit Wrapper for rlcompleter
// Automatically generated with ALL functions

py_rlcompleter = __import__('rlcompleter')

Completer = getattr(py_rlcompleter, 'Completer', None);
atexit = getattr(py_rlcompleter, 'atexit', None);
builtins = getattr(py_rlcompleter, 'builtins', None);
define get_class_members(*args, **kwargs):
    return py_rlcompleter.get_class_members(*args, **kwargs);

inspect = getattr(py_rlcompleter, 'inspect', None);
keyword = getattr(py_rlcompleter, 'keyword', None);
re = getattr(py_rlcompleter, 're', None);
warnings = getattr(py_rlcompleter, 'warnings', None);
