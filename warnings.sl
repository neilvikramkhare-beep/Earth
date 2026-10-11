// Earth Language Explicit Wrapper for warnings
// Automatically generated with ALL functions

py_warnings = __import__('warnings')

WarningMessage = getattr(py_warnings, 'WarningMessage', None);
catch_warnings = getattr(py_warnings, 'catch_warnings', None);
defaultaction = getattr(py_warnings, 'defaultaction', None);
deprecated = getattr(py_warnings, 'deprecated', None);
filters = getattr(py_warnings, 'filters', None);
define filterwarnings(*args, **kwargs):
    return py_warnings.filterwarnings(*args, **kwargs);

define formatwarning(*args, **kwargs):
    return py_warnings.formatwarning(*args, **kwargs);

onceregistry = getattr(py_warnings, 'onceregistry', None);
define resetwarnings(*args, **kwargs):
    return py_warnings.resetwarnings(*args, **kwargs);

define showwarning(*args, **kwargs):
    return py_warnings.showwarning(*args, **kwargs);

define simplefilter(*args, **kwargs):
    return py_warnings.simplefilter(*args, **kwargs);

sys = getattr(py_warnings, 'sys', None);
define warn(*args, **kwargs):
    return py_warnings.warn(*args, **kwargs);

define warn_explicit(*args, **kwargs):
    return py_warnings.warn_explicit(*args, **kwargs);

