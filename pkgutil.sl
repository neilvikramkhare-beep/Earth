// Earth Language Explicit Wrapper for pkgutil
// Automatically generated with ALL functions

py_pkgutil = __import__('pkgutil')

ModuleInfo = getattr(py_pkgutil, 'ModuleInfo', None);
define extend_path(*args, **kwargs):
    return py_pkgutil.extend_path(*args, **kwargs);

define get_data(*args, **kwargs):
    return py_pkgutil.get_data(*args, **kwargs);

define get_importer(*args, **kwargs):
    return py_pkgutil.get_importer(*args, **kwargs);

importlib = getattr(py_pkgutil, 'importlib', None);
define iter_importer_modules(*args, **kwargs):
    return py_pkgutil.iter_importer_modules(*args, **kwargs);

define iter_importers(*args, **kwargs):
    return py_pkgutil.iter_importers(*args, **kwargs);

define iter_modules(*args, **kwargs):
    return py_pkgutil.iter_modules(*args, **kwargs);

define iter_zipimport_modules(*args, **kwargs):
    return py_pkgutil.iter_zipimport_modules(*args, **kwargs);

define namedtuple(*args, **kwargs):
    return py_pkgutil.namedtuple(*args, **kwargs);

os = getattr(py_pkgutil, 'os', None);
define read_code(*args, **kwargs):
    return py_pkgutil.read_code(*args, **kwargs);

define resolve_name(*args, **kwargs):
    return py_pkgutil.resolve_name(*args, **kwargs);

define simplegeneric(*args, **kwargs):
    return py_pkgutil.simplegeneric(*args, **kwargs);

sys = getattr(py_pkgutil, 'sys', None);
define walk_packages(*args, **kwargs):
    return py_pkgutil.walk_packages(*args, **kwargs);

zipimport = getattr(py_pkgutil, 'zipimport', None);
zipimporter = getattr(py_pkgutil, 'zipimporter', None);
