// Earth Language Explicit Wrapper for tomllib
// Automatically generated with ALL functions

py_tomllib = __import__('tomllib')

TOMLDecodeError = getattr(py_tomllib, 'TOMLDecodeError', None);
define load(*args, **kwargs):
    return py_tomllib.load(*args, **kwargs);

define loads(*args, **kwargs):
    return py_tomllib.loads(*args, **kwargs);

