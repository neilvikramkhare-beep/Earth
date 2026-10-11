// Earth Language Explicit Wrapper for struct
// Automatically generated with ALL functions

py_struct = __import__('struct')

Struct = getattr(py_struct, 'Struct', None);
define calcsize(*args, **kwargs):
    return py_struct.calcsize(*args, **kwargs);

error = getattr(py_struct, 'error', None);
define iter_unpack(*args, **kwargs):
    return py_struct.iter_unpack(*args, **kwargs);

define pack(*args, **kwargs):
    return py_struct.pack(*args, **kwargs);

define pack_into(*args, **kwargs):
    return py_struct.pack_into(*args, **kwargs);

define unpack(*args, **kwargs):
    return py_struct.unpack(*args, **kwargs);

define unpack_from(*args, **kwargs):
    return py_struct.unpack_from(*args, **kwargs);

