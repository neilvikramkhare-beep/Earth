// Earth Language Explicit Wrapper for importlib
// Automatically generated with ALL functions

py_importlib = __import__('importlib')

define import_module(*args, **kwargs):
    return py_importlib.import_module(*args, **kwargs);

define invalidate_caches(*args, **kwargs):
    return py_importlib.invalidate_caches(*args, **kwargs);

machinery = getattr(py_importlib, 'machinery', None);
define reload(*args, **kwargs):
    return py_importlib.reload(*args, **kwargs);

sys = getattr(py_importlib, 'sys', None);
util = getattr(py_importlib, 'util', None);
