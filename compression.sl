// Earth Language Explicit Wrapper for compression
py_compression = __import__('compression')

zstd = getattr(py_compression, 'zstd', None);
