// Earth Language Explicit Wrapper for zipapp
// Automatically generated with ALL functions

py_zipapp = __import__('zipapp')

MAIN_TEMPLATE = getattr(py_zipapp, 'MAIN_TEMPLATE', None);
ZipAppError = getattr(py_zipapp, 'ZipAppError', None);
contextlib = getattr(py_zipapp, 'contextlib', None);
define create_archive(*args, **kwargs):
    return py_zipapp.create_archive(*args, **kwargs);

define get_interpreter(*args, **kwargs):
    return py_zipapp.get_interpreter(*args, **kwargs);

define main(*args, **kwargs):
    return py_zipapp.main(*args, **kwargs);

os = getattr(py_zipapp, 'os', None);
pathlib = getattr(py_zipapp, 'pathlib', None);
shebang_encoding = getattr(py_zipapp, 'shebang_encoding', None);
shutil = getattr(py_zipapp, 'shutil', None);
stat = getattr(py_zipapp, 'stat', None);
sys = getattr(py_zipapp, 'sys', None);
zipfile = getattr(py_zipapp, 'zipfile', None);
