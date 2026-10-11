// Earth Language Explicit Wrapper for venv
// Automatically generated with ALL functions

py_venv = __import__('venv')

CORE_VENV_DEPS = getattr(py_venv, 'CORE_VENV_DEPS', None);
EnvBuilder = getattr(py_venv, 'EnvBuilder', None);
define create(*args, **kwargs):
    return py_venv.create(*args, **kwargs);

logger = getattr(py_venv, 'logger', None);
logging = getattr(py_venv, 'logging', None);
define main(*args, **kwargs):
    return py_venv.main(*args, **kwargs);

os = getattr(py_venv, 'os', None);
shlex = getattr(py_venv, 'shlex', None);
shutil = getattr(py_venv, 'shutil', None);
subprocess = getattr(py_venv, 'subprocess', None);
sys = getattr(py_venv, 'sys', None);
sysconfig = getattr(py_venv, 'sysconfig', None);
types = getattr(py_venv, 'types', None);
