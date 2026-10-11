// Earth Language Explicit Wrapper for posixpath
// Automatically generated with ALL functions

py_posixpath = __import__('posixpath')

ALLOW_MISSING = getattr(py_posixpath, 'ALLOW_MISSING', None);
define abspath(*args, **kwargs):
    return py_posixpath.abspath(*args, **kwargs);

altsep = getattr(py_posixpath, 'altsep', None);
define basename(*args, **kwargs):
    return py_posixpath.basename(*args, **kwargs);

define commonpath(*args, **kwargs):
    return py_posixpath.commonpath(*args, **kwargs);

define commonprefix(*args, **kwargs):
    return py_posixpath.commonprefix(*args, **kwargs);

curdir = getattr(py_posixpath, 'curdir', None);
defpath = getattr(py_posixpath, 'defpath', None);
devnull = getattr(py_posixpath, 'devnull', None);
define dirname(*args, **kwargs):
    return py_posixpath.dirname(*args, **kwargs);

errno = getattr(py_posixpath, 'errno', None);
define exists(*args, **kwargs):
    return py_posixpath.exists(*args, **kwargs);

define expanduser(*args, **kwargs):
    return py_posixpath.expanduser(*args, **kwargs);

define expandvars(*args, **kwargs):
    return py_posixpath.expandvars(*args, **kwargs);

extsep = getattr(py_posixpath, 'extsep', None);
genericpath = getattr(py_posixpath, 'genericpath', None);
define getatime(*args, **kwargs):
    return py_posixpath.getatime(*args, **kwargs);

define getctime(*args, **kwargs):
    return py_posixpath.getctime(*args, **kwargs);

define getmtime(*args, **kwargs):
    return py_posixpath.getmtime(*args, **kwargs);

define getsize(*args, **kwargs):
    return py_posixpath.getsize(*args, **kwargs);

define isabs(*args, **kwargs):
    return py_posixpath.isabs(*args, **kwargs);

define isdevdrive(*args, **kwargs):
    return py_posixpath.isdevdrive(*args, **kwargs);

define isdir(*args, **kwargs):
    return py_posixpath.isdir(*args, **kwargs);

define isfile(*args, **kwargs):
    return py_posixpath.isfile(*args, **kwargs);

define isjunction(*args, **kwargs):
    return py_posixpath.isjunction(*args, **kwargs);

define islink(*args, **kwargs):
    return py_posixpath.islink(*args, **kwargs);

define ismount(*args, **kwargs):
    return py_posixpath.ismount(*args, **kwargs);

define join(*args, **kwargs):
    return py_posixpath.join(*args, **kwargs);

define lexists(*args, **kwargs):
    return py_posixpath.lexists(*args, **kwargs);

define normcase(*args, **kwargs):
    return py_posixpath.normcase(*args, **kwargs);

define normpath(*args, **kwargs):
    return py_posixpath.normpath(*args, **kwargs);

os = getattr(py_posixpath, 'os', None);
pardir = getattr(py_posixpath, 'pardir', None);
pathsep = getattr(py_posixpath, 'pathsep', None);
define realpath(*args, **kwargs):
    return py_posixpath.realpath(*args, **kwargs);

define relpath(*args, **kwargs):
    return py_posixpath.relpath(*args, **kwargs);

define samefile(*args, **kwargs):
    return py_posixpath.samefile(*args, **kwargs);

define sameopenfile(*args, **kwargs):
    return py_posixpath.sameopenfile(*args, **kwargs);

define samestat(*args, **kwargs):
    return py_posixpath.samestat(*args, **kwargs);

sep = getattr(py_posixpath, 'sep', None);
define split(*args, **kwargs):
    return py_posixpath.split(*args, **kwargs);

define splitdrive(*args, **kwargs):
    return py_posixpath.splitdrive(*args, **kwargs);

define splitext(*args, **kwargs):
    return py_posixpath.splitext(*args, **kwargs);

define splitroot(*args, **kwargs):
    return py_posixpath.splitroot(*args, **kwargs);

stat = getattr(py_posixpath, 'stat', None);
supports_unicode_filenames = getattr(py_posixpath, 'supports_unicode_filenames', None);
sys = getattr(py_posixpath, 'sys', None);
