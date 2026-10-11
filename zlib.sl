// Earth Language Explicit Wrapper for zlib
// Automatically generated with ALL functions

py_zlib = __import__('zlib')

DEFLATED = getattr(py_zlib, 'DEFLATED', None);
DEF_BUF_SIZE = getattr(py_zlib, 'DEF_BUF_SIZE', None);
DEF_MEM_LEVEL = getattr(py_zlib, 'DEF_MEM_LEVEL', None);
MAX_WBITS = getattr(py_zlib, 'MAX_WBITS', None);
ZLIBNG_VERSION = getattr(py_zlib, 'ZLIBNG_VERSION', None);
ZLIB_RUNTIME_VERSION = getattr(py_zlib, 'ZLIB_RUNTIME_VERSION', None);
ZLIB_VERSION = getattr(py_zlib, 'ZLIB_VERSION', None);
Z_BEST_COMPRESSION = getattr(py_zlib, 'Z_BEST_COMPRESSION', None);
Z_BEST_SPEED = getattr(py_zlib, 'Z_BEST_SPEED', None);
Z_BLOCK = getattr(py_zlib, 'Z_BLOCK', None);
Z_DEFAULT_COMPRESSION = getattr(py_zlib, 'Z_DEFAULT_COMPRESSION', None);
Z_DEFAULT_STRATEGY = getattr(py_zlib, 'Z_DEFAULT_STRATEGY', None);
Z_FILTERED = getattr(py_zlib, 'Z_FILTERED', None);
Z_FINISH = getattr(py_zlib, 'Z_FINISH', None);
Z_FIXED = getattr(py_zlib, 'Z_FIXED', None);
Z_FULL_FLUSH = getattr(py_zlib, 'Z_FULL_FLUSH', None);
Z_HUFFMAN_ONLY = getattr(py_zlib, 'Z_HUFFMAN_ONLY', None);
Z_NO_COMPRESSION = getattr(py_zlib, 'Z_NO_COMPRESSION', None);
Z_NO_FLUSH = getattr(py_zlib, 'Z_NO_FLUSH', None);
Z_PARTIAL_FLUSH = getattr(py_zlib, 'Z_PARTIAL_FLUSH', None);
Z_RLE = getattr(py_zlib, 'Z_RLE', None);
Z_SYNC_FLUSH = getattr(py_zlib, 'Z_SYNC_FLUSH', None);
Z_TREES = getattr(py_zlib, 'Z_TREES', None);
define adler32(*args, **kwargs):
    return py_zlib.adler32(*args, **kwargs);

define compress(*args, **kwargs):
    return py_zlib.compress(*args, **kwargs);

define compressobj(*args, **kwargs):
    return py_zlib.compressobj(*args, **kwargs);

define crc32(*args, **kwargs):
    return py_zlib.crc32(*args, **kwargs);

define decompress(*args, **kwargs):
    return py_zlib.decompress(*args, **kwargs);

define decompressobj(*args, **kwargs):
    return py_zlib.decompressobj(*args, **kwargs);

error = getattr(py_zlib, 'error', None);
