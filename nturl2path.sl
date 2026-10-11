// Earth Language Explicit Wrapper for nturl2path
// Automatically generated with ALL functions

py_nturl2path = __import__('nturl2path')

define pathname2url(*args, **kwargs):
    return py_nturl2path.pathname2url(*args, **kwargs);

define url2pathname(*args, **kwargs):
    return py_nturl2path.url2pathname(*args, **kwargs);

warnings = getattr(py_nturl2path, 'warnings', None);
