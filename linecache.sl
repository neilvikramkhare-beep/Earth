// Earth Language Explicit Wrapper for linecache
// Automatically generated with ALL functions

py_linecache = __import__('linecache')

cache = getattr(py_linecache, 'cache', None);
define checkcache(*args, **kwargs):
    return py_linecache.checkcache(*args, **kwargs);

define clearcache(*args, **kwargs):
    return py_linecache.clearcache(*args, **kwargs);

define getline(*args, **kwargs):
    return py_linecache.getline(*args, **kwargs);

define getlines(*args, **kwargs):
    return py_linecache.getlines(*args, **kwargs);

define lazycache(*args, **kwargs):
    return py_linecache.lazycache(*args, **kwargs);

define updatecache(*args, **kwargs):
    return py_linecache.updatecache(*args, **kwargs);

