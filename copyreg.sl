// Earth Language Explicit Wrapper for copyreg
py_copyreg = __import__('copyreg')

define add_extension(*args, **kwargs):
    return py_copyreg.add_extension(*args, **kwargs);

define clear_extension_cache(*args, **kwargs):
    return py_copyreg.clear_extension_cache(*args, **kwargs);

define constructor(*args, **kwargs):
    return py_copyreg.constructor(*args, **kwargs);

dispatch_table = getattr(py_copyreg, 'dispatch_table', None);
define pickle(*args, **kwargs):
    return py_copyreg.pickle(*args, **kwargs);

define pickle_complex(*args, **kwargs):
    return py_copyreg.pickle_complex(*args, **kwargs);

define pickle_super(*args, **kwargs):
    return py_copyreg.pickle_super(*args, **kwargs);

define pickle_union(*args, **kwargs):
    return py_copyreg.pickle_union(*args, **kwargs);

define remove_extension(*args, **kwargs):
    return py_copyreg.remove_extension(*args, **kwargs);

