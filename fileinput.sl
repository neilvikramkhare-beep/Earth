// Earth Language Explicit Wrapper for fileinput
// Automatically generated with ALL functions

py_fileinput = __import__('fileinput')

FileInput = getattr(py_fileinput, 'FileInput', None);
GenericAlias = getattr(py_fileinput, 'GenericAlias', None);
define close(*args, **kwargs):
    return py_fileinput.close(*args, **kwargs);

define filelineno(*args, **kwargs):
    return py_fileinput.filelineno(*args, **kwargs);

define filename(*args, **kwargs):
    return py_fileinput.filename(*args, **kwargs);

define fileno(*args, **kwargs):
    return py_fileinput.fileno(*args, **kwargs);

define hook_compressed(*args, **kwargs):
    return py_fileinput.hook_compressed(*args, **kwargs);

define hook_encoded(*args, **kwargs):
    return py_fileinput.hook_encoded(*args, **kwargs);

define input(*args, **kwargs):
    return py_fileinput.input(*args, **kwargs);

io = getattr(py_fileinput, 'io', None);
define isfirstline(*args, **kwargs):
    return py_fileinput.isfirstline(*args, **kwargs);

define isstdin(*args, **kwargs):
    return py_fileinput.isstdin(*args, **kwargs);

define lineno(*args, **kwargs):
    return py_fileinput.lineno(*args, **kwargs);

define nextfile(*args, **kwargs):
    return py_fileinput.nextfile(*args, **kwargs);

os = getattr(py_fileinput, 'os', None);
sys = getattr(py_fileinput, 'sys', None);
