// Earth Language Explicit Wrapper for ensurepip
// Automatically generated with ALL functions

py_ensurepip = __import__('ensurepip')

Path = getattr(py_ensurepip, 'Path', None);
define bootstrap(*args, **kwargs):
    return py_ensurepip.bootstrap(*args, **kwargs);

define copy2(*args, **kwargs):
    return py_ensurepip.copy2(*args, **kwargs);

nullcontext = getattr(py_ensurepip, 'nullcontext', None);
os = getattr(py_ensurepip, 'os', None);
resources = getattr(py_ensurepip, 'resources', None);
subprocess = getattr(py_ensurepip, 'subprocess', None);
sys = getattr(py_ensurepip, 'sys', None);
sysconfig = getattr(py_ensurepip, 'sysconfig', None);
tempfile = getattr(py_ensurepip, 'tempfile', None);
define version(*args, **kwargs):
    return py_ensurepip.version(*args, **kwargs);

