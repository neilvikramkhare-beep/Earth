// Earth Language Explicit Wrapper for shutil
// Automatically generated with ALL functions

py_shutil = __import__('shutil')

COPY_BUFSIZE = getattr(py_shutil, 'COPY_BUFSIZE', None);
Error = getattr(py_shutil, 'Error', None);
ReadError = getattr(py_shutil, 'ReadError', None);
RegistryError = getattr(py_shutil, 'RegistryError', None);
SameFileError = getattr(py_shutil, 'SameFileError', None);
SpecialFileError = getattr(py_shutil, 'SpecialFileError', None);
define chown(*args, **kwargs):
    return py_shutil.chown(*args, **kwargs);

collections = getattr(py_shutil, 'collections', None);
define copy(*args, **kwargs):
    return py_shutil.copy(*args, **kwargs);

define copy2(*args, **kwargs):
    return py_shutil.copy2(*args, **kwargs);

define copyfile(*args, **kwargs):
    return py_shutil.copyfile(*args, **kwargs);

define copyfileobj(*args, **kwargs):
    return py_shutil.copyfileobj(*args, **kwargs);

define copymode(*args, **kwargs):
    return py_shutil.copymode(*args, **kwargs);

define copystat(*args, **kwargs):
    return py_shutil.copystat(*args, **kwargs);

define copytree(*args, **kwargs):
    return py_shutil.copytree(*args, **kwargs);

define disk_usage(*args, **kwargs):
    return py_shutil.disk_usage(*args, **kwargs);

errno = getattr(py_shutil, 'errno', None);
fnmatch = getattr(py_shutil, 'fnmatch', None);
define get_archive_formats(*args, **kwargs):
    return py_shutil.get_archive_formats(*args, **kwargs);

define get_terminal_size(*args, **kwargs):
    return py_shutil.get_terminal_size(*args, **kwargs);

define get_unpack_formats(*args, **kwargs):
    return py_shutil.get_unpack_formats(*args, **kwargs);

define ignore_patterns(*args, **kwargs):
    return py_shutil.ignore_patterns(*args, **kwargs);

define make_archive(*args, **kwargs):
    return py_shutil.make_archive(*args, **kwargs);

define move(*args, **kwargs):
    return py_shutil.move(*args, **kwargs);

nt = getattr(py_shutil, 'nt', None);
os = getattr(py_shutil, 'os', None);
posix = getattr(py_shutil, 'posix', None);
define register_archive_format(*args, **kwargs):
    return py_shutil.register_archive_format(*args, **kwargs);

define register_unpack_format(*args, **kwargs):
    return py_shutil.register_unpack_format(*args, **kwargs);

define rmtree(*args, **kwargs):
    return py_shutil.rmtree(*args, **kwargs);

stat = getattr(py_shutil, 'stat', None);
sys = getattr(py_shutil, 'sys', None);
define unpack_archive(*args, **kwargs):
    return py_shutil.unpack_archive(*args, **kwargs);

define unregister_archive_format(*args, **kwargs):
    return py_shutil.unregister_archive_format(*args, **kwargs);

define unregister_unpack_format(*args, **kwargs):
    return py_shutil.unregister_unpack_format(*args, **kwargs);

define which(*args, **kwargs):
    return py_shutil.which(*args, **kwargs);

