// Earth Language Explicit Wrapper for getopt
// Automatically generated with ALL functions

py_getopt = __import__('getopt')

GetoptError = getattr(py_getopt, 'GetoptError', None);
define do_longs(*args, **kwargs):
    return py_getopt.do_longs(*args, **kwargs);

define do_shorts(*args, **kwargs):
    return py_getopt.do_shorts(*args, **kwargs);

error = getattr(py_getopt, 'error', None);
define getopt(*args, **kwargs):
    return py_getopt.getopt(*args, **kwargs);

define gnu_getopt(*args, **kwargs):
    return py_getopt.gnu_getopt(*args, **kwargs);

define long_has_args(*args, **kwargs):
    return py_getopt.long_has_args(*args, **kwargs);

os = getattr(py_getopt, 'os', None);
define short_has_arg(*args, **kwargs):
    return py_getopt.short_has_arg(*args, **kwargs);

