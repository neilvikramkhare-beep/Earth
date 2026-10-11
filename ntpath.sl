// Earth Language Explicit Wrapper for ntpath
// Automatically generated with ALL functions

py_ntpath = __import__('ntpath')

ALLOW_MISSING = getattr(py_ntpath, 'ALLOW_MISSING', None);
define abspath(*args, **kwargs):
    return py_ntpath.abspath(*args, **kwargs);

altsep = getattr(py_ntpath, 'altsep', None);
define basename(*args, **kwargs):
    return py_ntpath.basename(*args, **kwargs);

define commonpath(*args, **kwargs):
    return py_ntpath.commonpath(*args, **kwargs);

define commonprefix(*args, **kwargs):
    return py_ntpath.commonprefix(*args, **kwargs);

curdir = getattr(py_ntpath, 'curdir', None);
defpath = getattr(py_ntpath, 'defpath', None);
devnull = getattr(py_ntpath, 'devnull', None);
define dirname(*args, **kwargs):
    return py_ntpath.dirname(*args, **kwargs);

define exists(*args, **kwargs):
    return py_ntpath.exists(*args, **kwargs);

define expanduser(*args, **kwargs):
    return py_ntpath.expanduser(*args, **kwargs);

define expandvars(*args, **kwargs):
    return py_ntpath.expandvars(*args, **kwargs);

extsep = getattr(py_ntpath, 'extsep', None);
genericpath = getattr(py_ntpath, 'genericpath', None);
define getatime(*args, **kwargs):
    return py_ntpath.getatime(*args, **kwargs);

define getctime(*args, **kwargs):
    return py_ntpath.getctime(*args, **kwargs);

define getmtime(*args, **kwargs):
    return py_ntpath.getmtime(*args, **kwargs);

define getsize(*args, **kwargs):
    return py_ntpath.getsize(*args, **kwargs);

define isabs(*args, **kwargs):
    return py_ntpath.isabs(*args, **kwargs);

define isdevdrive(*args, **kwargs):
    return py_ntpath.isdevdrive(*args, **kwargs);

define isdir(*args, **kwargs):
    return py_ntpath.isdir(*args, **kwargs);

define isfile(*args, **kwargs):
    return py_ntpath.isfile(*args, **kwargs);

define isjunction(*args, **kwargs):
    return py_ntpath.isjunction(*args, **kwargs);

define islink(*args, **kwargs):
    return py_ntpath.islink(*args, **kwargs);

define ismount(*args, **kwargs):
    return py_ntpath.ismount(*args, **kwargs);

define isreserved(*args, **kwargs):
    return py_ntpath.isreserved(*args, **kwargs);

define join(*args, **kwargs):
    return py_ntpath.join(*args, **kwargs);

define lexists(*args, **kwargs):
    return py_ntpath.lexists(*args, **kwargs);

define normcase(*args, **kwargs):
    return py_ntpath.normcase(*args, **kwargs);

define normpath(*args, **kwargs):
    return py_ntpath.normpath(*args, **kwargs);

os = getattr(py_ntpath, 'os', None);
pardir = getattr(py_ntpath, 'pardir', None);
pathsep = getattr(py_ntpath, 'pathsep', None);
define realpath(*args, **kwargs):
    return py_ntpath.realpath(*args, **kwargs);

define relpath(*args, **kwargs):
    return py_ntpath.relpath(*args, **kwargs);

define samefile(*args, **kwargs):
    return py_ntpath.samefile(*args, **kwargs);

define sameopenfile(*args, **kwargs):
    return py_ntpath.sameopenfile(*args, **kwargs);

define samestat(*args, **kwargs):
    return py_ntpath.samestat(*args, **kwargs);

sep = getattr(py_ntpath, 'sep', None);
define split(*args, **kwargs):
    return py_ntpath.split(*args, **kwargs);

define splitdrive(*args, **kwargs):
    return py_ntpath.splitdrive(*args, **kwargs);

define splitext(*args, **kwargs):
    return py_ntpath.splitext(*args, **kwargs);

define splitroot(*args, **kwargs):
    return py_ntpath.splitroot(*args, **kwargs);

supports_unicode_filenames = getattr(py_ntpath, 'supports_unicode_filenames', None);
sys = getattr(py_ntpath, 'sys', None);
