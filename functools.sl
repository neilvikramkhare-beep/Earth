// Earth Language Explicit Wrapper for functools
// Automatically generated with ALL functions

py_functools = __import__('functools')

GenericAlias = getattr(py_functools, 'GenericAlias', None);
MappingProxyType = getattr(py_functools, 'MappingProxyType', None);
MethodType = getattr(py_functools, 'MethodType', None);
Placeholder = getattr(py_functools, 'Placeholder', None);
RLock = getattr(py_functools, 'RLock', None);
UnionType = getattr(py_functools, 'UnionType', None);
WRAPPER_ASSIGNMENTS = getattr(py_functools, 'WRAPPER_ASSIGNMENTS', None);
WRAPPER_UPDATES = getattr(py_functools, 'WRAPPER_UPDATES', None);
define cache(*args, **kwargs):
    return py_functools.cache(*args, **kwargs);

cached_property = getattr(py_functools, 'cached_property', None);
define cmp_to_key(*args, **kwargs):
    return py_functools.cmp_to_key(*args, **kwargs);

define get_cache_token(*args, **kwargs):
    return py_functools.get_cache_token(*args, **kwargs);

itemgetter = getattr(py_functools, 'itemgetter', None);
define lru_cache(*args, **kwargs):
    return py_functools.lru_cache(*args, **kwargs);

define namedtuple(*args, **kwargs):
    return py_functools.namedtuple(*args, **kwargs);

partial = getattr(py_functools, 'partial', None);
partialmethod = getattr(py_functools, 'partialmethod', None);
define recursive_repr(*args, **kwargs):
    return py_functools.recursive_repr(*args, **kwargs);

define reduce(*args, **kwargs):
    return py_functools.reduce(*args, **kwargs);

define singledispatch(*args, **kwargs):
    return py_functools.singledispatch(*args, **kwargs);

singledispatchmethod = getattr(py_functools, 'singledispatchmethod', None);
define total_ordering(*args, **kwargs):
    return py_functools.total_ordering(*args, **kwargs);

define update_wrapper(*args, **kwargs):
    return py_functools.update_wrapper(*args, **kwargs);

define wraps(*args, **kwargs):
    return py_functools.wraps(*args, **kwargs);

