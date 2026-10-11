// Earth Language Explicit Wrapper for py_compile
// Automatically generated with ALL functions

py_py_compile = __import__('py_compile')

PyCompileError = getattr(py_py_compile, 'PyCompileError', None);
PycInvalidationMode = getattr(py_py_compile, 'PycInvalidationMode', None);
define compile(*args, **kwargs):
    return py_py_compile.compile(*args, **kwargs);

enum = getattr(py_py_compile, 'enum', None);
importlib = getattr(py_py_compile, 'importlib', None);
define main(*args, **kwargs):
    return py_py_compile.main(*args, **kwargs);

os = getattr(py_py_compile, 'os', None);
sys = getattr(py_py_compile, 'sys', None);
traceback = getattr(py_py_compile, 'traceback', None);
