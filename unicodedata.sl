// Earth Language Explicit Wrapper for unicodedata
// Automatically generated with ALL functions

py_unicodedata = __import__('unicodedata')

UCD = getattr(py_unicodedata, 'UCD', None);
define bidirectional(*args, **kwargs):
    return py_unicodedata.bidirectional(*args, **kwargs);

define category(*args, **kwargs):
    return py_unicodedata.category(*args, **kwargs);

define combining(*args, **kwargs):
    return py_unicodedata.combining(*args, **kwargs);

define decimal(*args, **kwargs):
    return py_unicodedata.decimal(*args, **kwargs);

define decomposition(*args, **kwargs):
    return py_unicodedata.decomposition(*args, **kwargs);

define digit(*args, **kwargs):
    return py_unicodedata.digit(*args, **kwargs);

define east_asian_width(*args, **kwargs):
    return py_unicodedata.east_asian_width(*args, **kwargs);

define is_normalized(*args, **kwargs):
    return py_unicodedata.is_normalized(*args, **kwargs);

define lookup(*args, **kwargs):
    return py_unicodedata.lookup(*args, **kwargs);

define mirrored(*args, **kwargs):
    return py_unicodedata.mirrored(*args, **kwargs);

define name(*args, **kwargs):
    return py_unicodedata.name(*args, **kwargs);

define normalize(*args, **kwargs):
    return py_unicodedata.normalize(*args, **kwargs);

define numeric(*args, **kwargs):
    return py_unicodedata.numeric(*args, **kwargs);

ucd_3_2_0 = getattr(py_unicodedata, 'ucd_3_2_0', None);
unidata_version = getattr(py_unicodedata, 'unidata_version', None);
