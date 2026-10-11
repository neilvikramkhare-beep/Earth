// Earth Language Explicit Wrapper for difflib
// Automatically generated with ALL functions

py_difflib = __import__('difflib')

Differ = getattr(py_difflib, 'Differ', None);
GenericAlias = getattr(py_difflib, 'GenericAlias', None);
HtmlDiff = getattr(py_difflib, 'HtmlDiff', None);
define IS_CHARACTER_JUNK(*args, **kwargs):
    return py_difflib.IS_CHARACTER_JUNK(*args, **kwargs);

define IS_LINE_JUNK(*args, **kwargs):
    return py_difflib.IS_LINE_JUNK(*args, **kwargs);

Match = getattr(py_difflib, 'Match', None);
SequenceMatcher = getattr(py_difflib, 'SequenceMatcher', None);
define context_diff(*args, **kwargs):
    return py_difflib.context_diff(*args, **kwargs);

define diff_bytes(*args, **kwargs):
    return py_difflib.diff_bytes(*args, **kwargs);

define get_close_matches(*args, **kwargs):
    return py_difflib.get_close_matches(*args, **kwargs);

define ndiff(*args, **kwargs):
    return py_difflib.ndiff(*args, **kwargs);

define restore(*args, **kwargs):
    return py_difflib.restore(*args, **kwargs);

define unified_diff(*args, **kwargs):
    return py_difflib.unified_diff(*args, **kwargs);

