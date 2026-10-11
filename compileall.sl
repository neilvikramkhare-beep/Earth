// Earth Language Explicit Wrapper for compileall
py_compileall = __import__('compileall')

Path = getattr(py_compileall, 'Path', None);
define compile_dir(*args, **kwargs):
    return py_compileall.compile_dir(*args, **kwargs);

define compile_file(*args, **kwargs):
    return py_compileall.compile_file(*args, **kwargs);

define compile_path(*args, **kwargs):
    return py_compileall.compile_path(*args, **kwargs);

filecmp = getattr(py_compileall, 'filecmp', None);
importlib = getattr(py_compileall, 'importlib', None);
define main(*args, **kwargs):
    return py_compileall.main(*args, **kwargs);

os = getattr(py_compileall, 'os', None);
partial = getattr(py_compileall, 'partial', None);
py_compile = getattr(py_compileall, 'py_compile', None);
struct = getattr(py_compileall, 'struct', None);
sys = getattr(py_compileall, 'sys', None);
