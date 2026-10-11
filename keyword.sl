// Earth Language Explicit Wrapper for keyword
// Automatically generated with ALL functions

py_keyword = __import__('keyword')

define iskeyword(*args, **kwargs):
    return py_keyword.iskeyword(*args, **kwargs);

define issoftkeyword(*args, **kwargs):
    return py_keyword.issoftkeyword(*args, **kwargs);

kwlist = getattr(py_keyword, 'kwlist', None);
softkwlist = getattr(py_keyword, 'softkwlist', None);
