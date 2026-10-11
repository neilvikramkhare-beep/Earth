// Earth Language Explicit Wrapper for pprint
// Automatically generated with ALL functions

py_pprint = __import__('pprint')

PrettyPrinter = getattr(py_pprint, 'PrettyPrinter', None);
define isreadable(*args, **kwargs):
    return py_pprint.isreadable(*args, **kwargs);

define isrecursive(*args, **kwargs):
    return py_pprint.isrecursive(*args, **kwargs);

define pformat(*args, **kwargs):
    return py_pprint.pformat(*args, **kwargs);

define pp(*args, **kwargs):
    return py_pprint.pp(*args, **kwargs);

define pprint(*args, **kwargs):
    return py_pprint.pprint(*args, **kwargs);

define saferepr(*args, **kwargs):
    return py_pprint.saferepr(*args, **kwargs);

