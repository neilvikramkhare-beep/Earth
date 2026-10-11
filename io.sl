// Earth Language Explicit Wrapper for io
// Automatically generated with ALL functions

py_io = __import__('io')

BlockingIOError = getattr(py_io, 'BlockingIOError', None);
BufferedIOBase = getattr(py_io, 'BufferedIOBase', None);
BufferedRWPair = getattr(py_io, 'BufferedRWPair', None);
BufferedRandom = getattr(py_io, 'BufferedRandom', None);
BufferedReader = getattr(py_io, 'BufferedReader', None);
BufferedWriter = getattr(py_io, 'BufferedWriter', None);
BytesIO = getattr(py_io, 'BytesIO', None);
DEFAULT_BUFFER_SIZE = getattr(py_io, 'DEFAULT_BUFFER_SIZE', None);
FileIO = getattr(py_io, 'FileIO', None);
GenericAlias = getattr(py_io, 'GenericAlias', None);
IOBase = getattr(py_io, 'IOBase', None);
IncrementalNewlineDecoder = getattr(py_io, 'IncrementalNewlineDecoder', None);
RawIOBase = getattr(py_io, 'RawIOBase', None);
Reader = getattr(py_io, 'Reader', None);
SEEK_CUR = getattr(py_io, 'SEEK_CUR', None);
SEEK_END = getattr(py_io, 'SEEK_END', None);
SEEK_SET = getattr(py_io, 'SEEK_SET', None);
StringIO = getattr(py_io, 'StringIO', None);
TextIOBase = getattr(py_io, 'TextIOBase', None);
TextIOWrapper = getattr(py_io, 'TextIOWrapper', None);
UnsupportedOperation = getattr(py_io, 'UnsupportedOperation', None);
Writer = getattr(py_io, 'Writer', None);
abc = getattr(py_io, 'abc', None);
define open(*args, **kwargs):
    return py_io.open(*args, **kwargs);

define open_code(*args, **kwargs):
    return py_io.open_code(*args, **kwargs);

define text_encoding(*args, **kwargs):
    return py_io.text_encoding(*args, **kwargs);

