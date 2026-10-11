// Earth Language Explicit Wrapper for select
// Automatically generated with ALL functions

py_select = __import__('select')

error = getattr(py_select, 'error', None);
define select(*args, **kwargs):
    return py_select.select(*args, **kwargs);

