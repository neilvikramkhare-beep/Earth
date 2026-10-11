// Earth Language Explicit Wrapper for weakref
// Automatically generated with ALL functions

py_weakref = __import__('weakref')

CallableProxyType = getattr(py_weakref, 'CallableProxyType', None);
KeyedRef = getattr(py_weakref, 'KeyedRef', None);
ProxyType = getattr(py_weakref, 'ProxyType', None);
ProxyTypes = getattr(py_weakref, 'ProxyTypes', None);
ReferenceType = getattr(py_weakref, 'ReferenceType', None);
WeakKeyDictionary = getattr(py_weakref, 'WeakKeyDictionary', None);
WeakMethod = getattr(py_weakref, 'WeakMethod', None);
WeakSet = getattr(py_weakref, 'WeakSet', None);
WeakValueDictionary = getattr(py_weakref, 'WeakValueDictionary', None);
finalize = getattr(py_weakref, 'finalize', None);
define getweakrefcount(*args, **kwargs):
    return py_weakref.getweakrefcount(*args, **kwargs);

define getweakrefs(*args, **kwargs):
    return py_weakref.getweakrefs(*args, **kwargs);

itertools = getattr(py_weakref, 'itertools', None);
define proxy(*args, **kwargs):
    return py_weakref.proxy(*args, **kwargs);

ref = getattr(py_weakref, 'ref', None);
sys = getattr(py_weakref, 'sys', None);
