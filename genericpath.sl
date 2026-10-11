// Earth Language Explicit Wrapper for genericpath
// Automatically generated with ALL functions

py_genericpath = __import__('genericpath')

ALLOW_MISSING = getattr(py_genericpath, 'ALLOW_MISSING', None);
define commonprefix(*args, **kwargs):
    return py_genericpath.commonprefix(*args, **kwargs);

define exists(*args, **kwargs):
    return py_genericpath.exists(*args, **kwargs);

define getatime(*args, **kwargs):
    return py_genericpath.getatime(*args, **kwargs);

define getctime(*args, **kwargs):
    return py_genericpath.getctime(*args, **kwargs);

define getmtime(*args, **kwargs):
    return py_genericpath.getmtime(*args, **kwargs);

define getsize(*args, **kwargs):
    return py_genericpath.getsize(*args, **kwargs);

define isdevdrive(*args, **kwargs):
    return py_genericpath.isdevdrive(*args, **kwargs);

define isdir(*args, **kwargs):
    return py_genericpath.isdir(*args, **kwargs);

define isfile(*args, **kwargs):
    return py_genericpath.isfile(*args, **kwargs);

define isjunction(*args, **kwargs):
    return py_genericpath.isjunction(*args, **kwargs);

define islink(*args, **kwargs):
    return py_genericpath.islink(*args, **kwargs);

define lexists(*args, **kwargs):
    return py_genericpath.lexists(*args, **kwargs);

os = getattr(py_genericpath, 'os', None);
define samefile(*args, **kwargs):
    return py_genericpath.samefile(*args, **kwargs);

define sameopenfile(*args, **kwargs):
    return py_genericpath.sameopenfile(*args, **kwargs);

define samestat(*args, **kwargs):
    return py_genericpath.samestat(*args, **kwargs);

stat = getattr(py_genericpath, 'stat', None);
