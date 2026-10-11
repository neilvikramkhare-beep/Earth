// Earth Language Explicit Wrapper for encodings
// Automatically generated with ALL functions

py_encodings = __import__('encodings')

CodecRegistryError = getattr(py_encodings, 'CodecRegistryError', None);
aliases = getattr(py_encodings, 'aliases', None);
codecs = getattr(py_encodings, 'codecs', None);
cp1252 = getattr(py_encodings, 'cp1252', None);
define create_win32_code_page_codec(*args, **kwargs):
    return py_encodings.create_win32_code_page_codec(*args, **kwargs);

define normalize_encoding(*args, **kwargs):
    return py_encodings.normalize_encoding(*args, **kwargs);

define search_function(*args, **kwargs):
    return py_encodings.search_function(*args, **kwargs);

sys = getattr(py_encodings, 'sys', None);
utf_8 = getattr(py_encodings, 'utf_8', None);
utf_8_sig = getattr(py_encodings, 'utf_8_sig', None);
define win32_code_page_search_function(*args, **kwargs):
    return py_encodings.win32_code_page_search_function(*args, **kwargs);

