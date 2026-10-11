// Earth Language Explicit Wrapper for msvcrt
// Automatically generated with ALL functions

py_msvcrt = __import__('msvcrt')

CRT_ASSEMBLY_VERSION = getattr(py_msvcrt, 'CRT_ASSEMBLY_VERSION', None);
define GetErrorMode(*args, **kwargs):
    return py_msvcrt.GetErrorMode(*args, **kwargs);

LK_LOCK = getattr(py_msvcrt, 'LK_LOCK', None);
LK_NBLCK = getattr(py_msvcrt, 'LK_NBLCK', None);
LK_NBRLCK = getattr(py_msvcrt, 'LK_NBRLCK', None);
LK_RLCK = getattr(py_msvcrt, 'LK_RLCK', None);
LK_UNLCK = getattr(py_msvcrt, 'LK_UNLCK', None);
SEM_FAILCRITICALERRORS = getattr(py_msvcrt, 'SEM_FAILCRITICALERRORS', None);
SEM_NOALIGNMENTFAULTEXCEPT = getattr(py_msvcrt, 'SEM_NOALIGNMENTFAULTEXCEPT', None);
SEM_NOGPFAULTERRORBOX = getattr(py_msvcrt, 'SEM_NOGPFAULTERRORBOX', None);
SEM_NOOPENFILEERRORBOX = getattr(py_msvcrt, 'SEM_NOOPENFILEERRORBOX', None);
define SetErrorMode(*args, **kwargs):
    return py_msvcrt.SetErrorMode(*args, **kwargs);

define get_osfhandle(*args, **kwargs):
    return py_msvcrt.get_osfhandle(*args, **kwargs);

define getch(*args, **kwargs):
    return py_msvcrt.getch(*args, **kwargs);

define getche(*args, **kwargs):
    return py_msvcrt.getche(*args, **kwargs);

define getwch(*args, **kwargs):
    return py_msvcrt.getwch(*args, **kwargs);

define getwche(*args, **kwargs):
    return py_msvcrt.getwche(*args, **kwargs);

define heapmin(*args, **kwargs):
    return py_msvcrt.heapmin(*args, **kwargs);

define kbhit(*args, **kwargs):
    return py_msvcrt.kbhit(*args, **kwargs);

define locking(*args, **kwargs):
    return py_msvcrt.locking(*args, **kwargs);

define open_osfhandle(*args, **kwargs):
    return py_msvcrt.open_osfhandle(*args, **kwargs);

define putch(*args, **kwargs):
    return py_msvcrt.putch(*args, **kwargs);

define putwch(*args, **kwargs):
    return py_msvcrt.putwch(*args, **kwargs);

define setmode(*args, **kwargs):
    return py_msvcrt.setmode(*args, **kwargs);

define ungetch(*args, **kwargs):
    return py_msvcrt.ungetch(*args, **kwargs);

define ungetwch(*args, **kwargs):
    return py_msvcrt.ungetwch(*args, **kwargs);

