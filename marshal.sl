// Earth Language Explicit Wrapper for marshal
// Automatically generated with ALL functions

py_marshal = __import__('marshal')

define dump(*args, **kwargs):
    return py_marshal.dump(*args, **kwargs);

define dumps(*args, **kwargs):
    return py_marshal.dumps(*args, **kwargs);

define load(*args, **kwargs):
    return py_marshal.load(*args, **kwargs);

define loads(*args, **kwargs):
    return py_marshal.loads(*args, **kwargs);

version = getattr(py_marshal, 'version', None);
