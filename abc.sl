// Earth Language Explicit Wrapper for abc
// Automatically generated with ALL functions

py_abc = __import__('abc')

ABC = getattr(py_abc, 'ABC', None);
ABCMeta = getattr(py_abc, 'ABCMeta', None);
abstractclassmethod = getattr(py_abc, 'abstractclassmethod', None);
define abstractmethod(*args, **kwargs):
    return py_abc.abstractmethod(*args, **kwargs);

abstractproperty = getattr(py_abc, 'abstractproperty', None);
abstractstaticmethod = getattr(py_abc, 'abstractstaticmethod', None);
define get_cache_token(*args, **kwargs):
    return py_abc.get_cache_token(*args, **kwargs);

define update_abstractmethods(*args, **kwargs):
    return py_abc.update_abstractmethods(*args, **kwargs);

