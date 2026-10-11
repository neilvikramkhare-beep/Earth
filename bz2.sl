// Earth Language Explicit Wrapper for bz2
py_bz2 = __import__('bz2')

BZ2Compressor = getattr(py_bz2, 'BZ2Compressor', None);
BZ2Decompressor = getattr(py_bz2, 'BZ2Decompressor', None);
BZ2File = getattr(py_bz2, 'BZ2File', None);
define compress(*args, **kwargs):
    return py_bz2.compress(*args, **kwargs);

define decompress(*args, **kwargs):
    return py_bz2.decompress(*args, **kwargs);

io = getattr(py_bz2, 'io', None);
define open(*args, **kwargs):
    return py_bz2.open(*args, **kwargs);

os = getattr(py_bz2, 'os', None);
