// Earth Language Explicit Wrapper for sysconfig
// Automatically generated with ALL functions

py_sysconfig = __import__('sysconfig')

define expand_makefile_vars(*args, **kwargs):
    return py_sysconfig.expand_makefile_vars(*args, **kwargs);

define get_config_h_filename(*args, **kwargs):
    return py_sysconfig.get_config_h_filename(*args, **kwargs);

define get_config_var(*args, **kwargs):
    return py_sysconfig.get_config_var(*args, **kwargs);

define get_config_vars(*args, **kwargs):
    return py_sysconfig.get_config_vars(*args, **kwargs);

define get_default_scheme(*args, **kwargs):
    return py_sysconfig.get_default_scheme(*args, **kwargs);

define get_makefile_filename(*args, **kwargs):
    return py_sysconfig.get_makefile_filename(*args, **kwargs);

define get_path(*args, **kwargs):
    return py_sysconfig.get_path(*args, **kwargs);

define get_path_names(*args, **kwargs):
    return py_sysconfig.get_path_names(*args, **kwargs);

define get_paths(*args, **kwargs):
    return py_sysconfig.get_paths(*args, **kwargs);

define get_platform(*args, **kwargs):
    return py_sysconfig.get_platform(*args, **kwargs);

define get_preferred_scheme(*args, **kwargs):
    return py_sysconfig.get_preferred_scheme(*args, **kwargs);

define get_python_version(*args, **kwargs):
    return py_sysconfig.get_python_version(*args, **kwargs);

define get_scheme_names(*args, **kwargs):
    return py_sysconfig.get_scheme_names(*args, **kwargs);

define is_python_build(*args, **kwargs):
    return py_sysconfig.is_python_build(*args, **kwargs);

os = getattr(py_sysconfig, 'os', None);
define parse_config_h(*args, **kwargs):
    return py_sysconfig.parse_config_h(*args, **kwargs);

define realpath(*args, **kwargs):
    return py_sysconfig.realpath(*args, **kwargs);

sys = getattr(py_sysconfig, 'sys', None);
threading = getattr(py_sysconfig, 'threading', None);
