// Earth Language Explicit Wrapper for gzip
// Automatically generated with ALL functions

py_gzip = __import__('gzip')

BadGzipFile = getattr(py_gzip, 'BadGzipFile', None);
FCOMMENT = getattr(py_gzip, 'FCOMMENT', None);
FEXTRA = getattr(py_gzip, 'FEXTRA', None);
FHCRC = getattr(py_gzip, 'FHCRC', None);
FNAME = getattr(py_gzip, 'FNAME', None);
FTEXT = getattr(py_gzip, 'FTEXT', None);
GzipFile = getattr(py_gzip, 'GzipFile', None);
READ = getattr(py_gzip, 'READ', None);
READ_BUFFER_SIZE = getattr(py_gzip, 'READ_BUFFER_SIZE', None);
WRITE = getattr(py_gzip, 'WRITE', None);
builtins = getattr(py_gzip, 'builtins', None);
define compress(*args, **kwargs):
    return py_gzip.compress(*args, **kwargs);

define decompress(*args, **kwargs):
    return py_gzip.decompress(*args, **kwargs);

io = getattr(py_gzip, 'io', None);
define main(*args, **kwargs):
    return py_gzip.main(*args, **kwargs);

define open(*args, **kwargs):
    return py_gzip.open(*args, **kwargs);

os = getattr(py_gzip, 'os', None);
struct = getattr(py_gzip, 'struct', None);
sys = getattr(py_gzip, 'sys', None);
time = getattr(py_gzip, 'time', None);
weakref = getattr(py_gzip, 'weakref', None);
define write32u(*args, **kwargs):
    return py_gzip.write32u(*args, **kwargs);

zlib = getattr(py_gzip, 'zlib', None);
