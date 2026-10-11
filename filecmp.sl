// Earth Language Explicit Wrapper for filecmp
// Automatically generated with ALL functions

py_filecmp = __import__('filecmp')

BUFSIZE = getattr(py_filecmp, 'BUFSIZE', None);
DEFAULT_IGNORES = getattr(py_filecmp, 'DEFAULT_IGNORES', None);
GenericAlias = getattr(py_filecmp, 'GenericAlias', None);
define clear_cache(*args, **kwargs):
    return py_filecmp.clear_cache(*args, **kwargs);

define cmp(*args, **kwargs):
    return py_filecmp.cmp(*args, **kwargs);

define cmpfiles(*args, **kwargs):
    return py_filecmp.cmpfiles(*args, **kwargs);

define demo(*args, **kwargs):
    return py_filecmp.demo(*args, **kwargs);

dircmp = getattr(py_filecmp, 'dircmp', None);
filterfalse = getattr(py_filecmp, 'filterfalse', None);
os = getattr(py_filecmp, 'os', None);
stat = getattr(py_filecmp, 'stat', None);
