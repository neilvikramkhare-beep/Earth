// Earth Language Explicit Wrapper for copy
py_copy = __import__('copy')

Error = getattr(py_copy, 'Error', None);
define copy(*args, **kwargs):
    return py_copy.copy(*args, **kwargs);

define deepcopy(*args, **kwargs):
    return py_copy.deepcopy(*args, **kwargs);

dispatch_table = getattr(py_copy, 'dispatch_table', None);
error = getattr(py_copy, 'error', None);
define replace(*args, **kwargs):
    return py_copy.replace(*args, **kwargs);

