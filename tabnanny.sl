// Earth Language Explicit Wrapper for tabnanny
// Automatically generated with ALL functions

py_tabnanny = __import__('tabnanny')

NannyNag = getattr(py_tabnanny, 'NannyNag', None);
Whitespace = getattr(py_tabnanny, 'Whitespace', None);
define check(*args, **kwargs):
    return py_tabnanny.check(*args, **kwargs);

define errprint(*args, **kwargs):
    return py_tabnanny.errprint(*args, **kwargs);

filename_only = getattr(py_tabnanny, 'filename_only', None);
define format_witnesses(*args, **kwargs):
    return py_tabnanny.format_witnesses(*args, **kwargs);

define main(*args, **kwargs):
    return py_tabnanny.main(*args, **kwargs);

os = getattr(py_tabnanny, 'os', None);
define process_tokens(*args, **kwargs):
    return py_tabnanny.process_tokens(*args, **kwargs);

sys = getattr(py_tabnanny, 'sys', None);
tokenize = getattr(py_tabnanny, 'tokenize', None);
verbose = getattr(py_tabnanny, 'verbose', None);
