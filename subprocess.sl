// Earth Language Explicit Wrapper for subprocess
// Automatically generated with ALL functions

py_subprocess = __import__('subprocess')

ABOVE_NORMAL_PRIORITY_CLASS = getattr(py_subprocess, 'ABOVE_NORMAL_PRIORITY_CLASS', None);
BELOW_NORMAL_PRIORITY_CLASS = getattr(py_subprocess, 'BELOW_NORMAL_PRIORITY_CLASS', None);
CREATE_BREAKAWAY_FROM_JOB = getattr(py_subprocess, 'CREATE_BREAKAWAY_FROM_JOB', None);
CREATE_DEFAULT_ERROR_MODE = getattr(py_subprocess, 'CREATE_DEFAULT_ERROR_MODE', None);
CREATE_NEW_CONSOLE = getattr(py_subprocess, 'CREATE_NEW_CONSOLE', None);
CREATE_NEW_PROCESS_GROUP = getattr(py_subprocess, 'CREATE_NEW_PROCESS_GROUP', None);
CREATE_NO_WINDOW = getattr(py_subprocess, 'CREATE_NO_WINDOW', None);
CalledProcessError = getattr(py_subprocess, 'CalledProcessError', None);
CompletedProcess = getattr(py_subprocess, 'CompletedProcess', None);
DETACHED_PROCESS = getattr(py_subprocess, 'DETACHED_PROCESS', None);
DEVNULL = getattr(py_subprocess, 'DEVNULL', None);
HIGH_PRIORITY_CLASS = getattr(py_subprocess, 'HIGH_PRIORITY_CLASS', None);
Handle = getattr(py_subprocess, 'Handle', None);
IDLE_PRIORITY_CLASS = getattr(py_subprocess, 'IDLE_PRIORITY_CLASS', None);
NORMAL_PRIORITY_CLASS = getattr(py_subprocess, 'NORMAL_PRIORITY_CLASS', None);
PIPE = getattr(py_subprocess, 'PIPE', None);
Popen = getattr(py_subprocess, 'Popen', None);
REALTIME_PRIORITY_CLASS = getattr(py_subprocess, 'REALTIME_PRIORITY_CLASS', None);
STARTF_FORCEOFFFEEDBACK = getattr(py_subprocess, 'STARTF_FORCEOFFFEEDBACK', None);
STARTF_FORCEONFEEDBACK = getattr(py_subprocess, 'STARTF_FORCEONFEEDBACK', None);
STARTF_USESHOWWINDOW = getattr(py_subprocess, 'STARTF_USESHOWWINDOW', None);
STARTF_USESTDHANDLES = getattr(py_subprocess, 'STARTF_USESTDHANDLES', None);
STARTUPINFO = getattr(py_subprocess, 'STARTUPINFO', None);
STDOUT = getattr(py_subprocess, 'STDOUT', None);
STD_ERROR_HANDLE = getattr(py_subprocess, 'STD_ERROR_HANDLE', None);
STD_INPUT_HANDLE = getattr(py_subprocess, 'STD_INPUT_HANDLE', None);
STD_OUTPUT_HANDLE = getattr(py_subprocess, 'STD_OUTPUT_HANDLE', None);
SW_HIDE = getattr(py_subprocess, 'SW_HIDE', None);
SubprocessError = getattr(py_subprocess, 'SubprocessError', None);
TimeoutExpired = getattr(py_subprocess, 'TimeoutExpired', None);
builtins = getattr(py_subprocess, 'builtins', None);
define call(*args, **kwargs):
    return py_subprocess.call(*args, **kwargs);

define check_call(*args, **kwargs):
    return py_subprocess.check_call(*args, **kwargs);

define check_output(*args, **kwargs):
    return py_subprocess.check_output(*args, **kwargs);

contextlib = getattr(py_subprocess, 'contextlib', None);
errno = getattr(py_subprocess, 'errno', None);
fcntl = getattr(py_subprocess, 'fcntl', None);
define getoutput(*args, **kwargs):
    return py_subprocess.getoutput(*args, **kwargs);

define getstatusoutput(*args, **kwargs):
    return py_subprocess.getstatusoutput(*args, **kwargs);

io = getattr(py_subprocess, 'io', None);
define list2cmdline(*args, **kwargs):
    return py_subprocess.list2cmdline(*args, **kwargs);

locale = getattr(py_subprocess, 'locale', None);
msvcrt = getattr(py_subprocess, 'msvcrt', None);
os = getattr(py_subprocess, 'os', None);
define run(*args, **kwargs):
    return py_subprocess.run(*args, **kwargs);

signal = getattr(py_subprocess, 'signal', None);
sys = getattr(py_subprocess, 'sys', None);
threading = getattr(py_subprocess, 'threading', None);
time = getattr(py_subprocess, 'time', None);
types = getattr(py_subprocess, 'types', None);
warnings = getattr(py_subprocess, 'warnings', None);
