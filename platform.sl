// Earth Language Explicit Wrapper for platform
// Automatically generated with ALL functions

py_platform = __import__('platform')

AndroidVer = getattr(py_platform, 'AndroidVer', None);
IOSVersionInfo = getattr(py_platform, 'IOSVersionInfo', None);
define android_ver(*args, **kwargs):
    return py_platform.android_ver(*args, **kwargs);

define architecture(*args, **kwargs):
    return py_platform.architecture(*args, **kwargs);

collections = getattr(py_platform, 'collections', None);
define freedesktop_os_release(*args, **kwargs):
    return py_platform.freedesktop_os_release(*args, **kwargs);

functools = getattr(py_platform, 'functools', None);
define invalidate_caches(*args, **kwargs):
    return py_platform.invalidate_caches(*args, **kwargs);

define ios_ver(*args, **kwargs):
    return py_platform.ios_ver(*args, **kwargs);

itertools = getattr(py_platform, 'itertools', None);
define java_ver(*args, **kwargs):
    return py_platform.java_ver(*args, **kwargs);

define libc_ver(*args, **kwargs):
    return py_platform.libc_ver(*args, **kwargs);

define mac_ver(*args, **kwargs):
    return py_platform.mac_ver(*args, **kwargs);

define machine(*args, **kwargs):
    return py_platform.machine(*args, **kwargs);

define node(*args, **kwargs):
    return py_platform.node(*args, **kwargs);

os = getattr(py_platform, 'os', None);
define platform(*args, **kwargs):
    return py_platform.platform(*args, **kwargs);

define processor(*args, **kwargs):
    return py_platform.processor(*args, **kwargs);

define python_branch(*args, **kwargs):
    return py_platform.python_branch(*args, **kwargs);

define python_build(*args, **kwargs):
    return py_platform.python_build(*args, **kwargs);

define python_compiler(*args, **kwargs):
    return py_platform.python_compiler(*args, **kwargs);

define python_implementation(*args, **kwargs):
    return py_platform.python_implementation(*args, **kwargs);

define python_revision(*args, **kwargs):
    return py_platform.python_revision(*args, **kwargs);

define python_version(*args, **kwargs):
    return py_platform.python_version(*args, **kwargs);

define python_version_tuple(*args, **kwargs):
    return py_platform.python_version_tuple(*args, **kwargs);

re = getattr(py_platform, 're', None);
define release(*args, **kwargs):
    return py_platform.release(*args, **kwargs);

sys = getattr(py_platform, 'sys', None);
define system(*args, **kwargs):
    return py_platform.system(*args, **kwargs);

define system_alias(*args, **kwargs):
    return py_platform.system_alias(*args, **kwargs);

define uname(*args, **kwargs):
    return py_platform.uname(*args, **kwargs);

uname_result = getattr(py_platform, 'uname_result', None);
define version(*args, **kwargs):
    return py_platform.version(*args, **kwargs);

define win32_edition(*args, **kwargs):
    return py_platform.win32_edition(*args, **kwargs);

define win32_is_iot(*args, **kwargs):
    return py_platform.win32_is_iot(*args, **kwargs);

define win32_ver(*args, **kwargs):
    return py_platform.win32_ver(*args, **kwargs);

