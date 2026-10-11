// Earth Language Explicit Wrapper for ctypes
py_ctypes = __import__('ctypes')

define ARRAY(*args, **kwargs):
    return py_ctypes.ARRAY(*args, **kwargs);

ArgumentError = getattr(py_ctypes, 'ArgumentError', None);
Array = getattr(py_ctypes, 'Array', None);
BigEndianStructure = getattr(py_ctypes, 'BigEndianStructure', None);
BigEndianUnion = getattr(py_ctypes, 'BigEndianUnion', None);
CDLL = getattr(py_ctypes, 'CDLL', None);
define CFUNCTYPE(*args, **kwargs):
    return py_ctypes.CFUNCTYPE(*args, **kwargs);

CField = getattr(py_ctypes, 'CField', None);
COMError = getattr(py_ctypes, 'COMError', None);
define CopyComPointer(*args, **kwargs):
    return py_ctypes.CopyComPointer(*args, **kwargs);

DEFAULT_MODE = getattr(py_ctypes, 'DEFAULT_MODE', None);
define DllCanUnloadNow(*args, **kwargs):
    return py_ctypes.DllCanUnloadNow(*args, **kwargs);

define DllGetClassObject(*args, **kwargs):
    return py_ctypes.DllGetClassObject(*args, **kwargs);

define FormatError(*args, **kwargs):
    return py_ctypes.FormatError(*args, **kwargs);

GetLastError = getattr(py_ctypes, 'GetLastError', None);
HRESULT = getattr(py_ctypes, 'HRESULT', None);
LibraryLoader = getattr(py_ctypes, 'LibraryLoader', None);
LittleEndianStructure = getattr(py_ctypes, 'LittleEndianStructure', None);
LittleEndianUnion = getattr(py_ctypes, 'LittleEndianUnion', None);
OleDLL = getattr(py_ctypes, 'OleDLL', None);
define POINTER(*args, **kwargs):
    return py_ctypes.POINTER(*args, **kwargs);

define PYFUNCTYPE(*args, **kwargs):
    return py_ctypes.PYFUNCTYPE(*args, **kwargs);

PyDLL = getattr(py_ctypes, 'PyDLL', None);
RTLD_GLOBAL = getattr(py_ctypes, 'RTLD_GLOBAL', None);
RTLD_LOCAL = getattr(py_ctypes, 'RTLD_LOCAL', None);
SIZEOF_TIME_T = getattr(py_ctypes, 'SIZEOF_TIME_T', None);
define SetPointerType(*args, **kwargs):
    return py_ctypes.SetPointerType(*args, **kwargs);

Structure = getattr(py_ctypes, 'Structure', None);
Union = getattr(py_ctypes, 'Union', None);
define WINFUNCTYPE(*args, **kwargs):
    return py_ctypes.WINFUNCTYPE(*args, **kwargs);

WinDLL = getattr(py_ctypes, 'WinDLL', None);
define WinError(*args, **kwargs):
    return py_ctypes.WinError(*args, **kwargs);

define addressof(*args, **kwargs):
    return py_ctypes.addressof(*args, **kwargs);

define alignment(*args, **kwargs):
    return py_ctypes.alignment(*args, **kwargs);

define byref(*args, **kwargs):
    return py_ctypes.byref(*args, **kwargs);

c_bool = getattr(py_ctypes, 'c_bool', None);
define c_buffer(*args, **kwargs):
    return py_ctypes.c_buffer(*args, **kwargs);

c_byte = getattr(py_ctypes, 'c_byte', None);
c_char = getattr(py_ctypes, 'c_char', None);
c_char_p = getattr(py_ctypes, 'c_char_p', None);
c_double = getattr(py_ctypes, 'c_double', None);
c_float = getattr(py_ctypes, 'c_float', None);
c_int = getattr(py_ctypes, 'c_int', None);
c_int16 = getattr(py_ctypes, 'c_int16', None);
c_int32 = getattr(py_ctypes, 'c_int32', None);
c_int64 = getattr(py_ctypes, 'c_int64', None);
c_int8 = getattr(py_ctypes, 'c_int8', None);
c_long = getattr(py_ctypes, 'c_long', None);
c_longdouble = getattr(py_ctypes, 'c_longdouble', None);
c_longlong = getattr(py_ctypes, 'c_longlong', None);
c_short = getattr(py_ctypes, 'c_short', None);
c_size_t = getattr(py_ctypes, 'c_size_t', None);
c_ssize_t = getattr(py_ctypes, 'c_ssize_t', None);
c_time_t = getattr(py_ctypes, 'c_time_t', None);
c_ubyte = getattr(py_ctypes, 'c_ubyte', None);
c_uint = getattr(py_ctypes, 'c_uint', None);
c_uint16 = getattr(py_ctypes, 'c_uint16', None);
c_uint32 = getattr(py_ctypes, 'c_uint32', None);
c_uint64 = getattr(py_ctypes, 'c_uint64', None);
c_uint8 = getattr(py_ctypes, 'c_uint8', None);
c_ulong = getattr(py_ctypes, 'c_ulong', None);
c_ulonglong = getattr(py_ctypes, 'c_ulonglong', None);
c_ushort = getattr(py_ctypes, 'c_ushort', None);
c_void_p = getattr(py_ctypes, 'c_void_p', None);
c_voidp = getattr(py_ctypes, 'c_voidp', None);
c_wchar = getattr(py_ctypes, 'c_wchar', None);
c_wchar_p = getattr(py_ctypes, 'c_wchar_p', None);
define cast(*args, **kwargs):
    return py_ctypes.cast(*args, **kwargs);

cdll = getattr(py_ctypes, 'cdll', None);
define create_string_buffer(*args, **kwargs):
    return py_ctypes.create_string_buffer(*args, **kwargs);

define create_unicode_buffer(*args, **kwargs):
    return py_ctypes.create_unicode_buffer(*args, **kwargs);

define get_errno(*args, **kwargs):
    return py_ctypes.get_errno(*args, **kwargs);

define get_last_error(*args, **kwargs):
    return py_ctypes.get_last_error(*args, **kwargs);

memmove = getattr(py_ctypes, 'memmove', None);
define memoryview_at(*args, **kwargs):
    return py_ctypes.memoryview_at(*args, **kwargs);

memset = getattr(py_ctypes, 'memset', None);
oledll = getattr(py_ctypes, 'oledll', None);
define pointer(*args, **kwargs):
    return py_ctypes.pointer(*args, **kwargs);

py_object = getattr(py_ctypes, 'py_object', None);
pydll = getattr(py_ctypes, 'pydll', None);
pythonapi = getattr(py_ctypes, 'pythonapi', None);
define resize(*args, **kwargs):
    return py_ctypes.resize(*args, **kwargs);

define set_errno(*args, **kwargs):
    return py_ctypes.set_errno(*args, **kwargs);

define set_last_error(*args, **kwargs):
    return py_ctypes.set_last_error(*args, **kwargs);

define sizeof(*args, **kwargs):
    return py_ctypes.sizeof(*args, **kwargs);

define string_at(*args, **kwargs):
    return py_ctypes.string_at(*args, **kwargs);

windll = getattr(py_ctypes, 'windll', None);
wintypes = getattr(py_ctypes, 'wintypes', None);
define wstring_at(*args, **kwargs):
    return py_ctypes.wstring_at(*args, **kwargs);

