// Earth Language Explicit Wrapper for mimetypes
// Automatically generated with ALL functions

py_mimetypes = __import__('mimetypes')

MimeTypes = getattr(py_mimetypes, 'MimeTypes', None);
define add_type(*args, **kwargs):
    return py_mimetypes.add_type(*args, **kwargs);

common_types = getattr(py_mimetypes, 'common_types', None);
encodings_map = getattr(py_mimetypes, 'encodings_map', None);
define guess_all_extensions(*args, **kwargs):
    return py_mimetypes.guess_all_extensions(*args, **kwargs);

define guess_extension(*args, **kwargs):
    return py_mimetypes.guess_extension(*args, **kwargs);

define guess_file_type(*args, **kwargs):
    return py_mimetypes.guess_file_type(*args, **kwargs);

define guess_type(*args, **kwargs):
    return py_mimetypes.guess_type(*args, **kwargs);

define init(*args, **kwargs):
    return py_mimetypes.init(*args, **kwargs);

inited = getattr(py_mimetypes, 'inited', None);
knownfiles = getattr(py_mimetypes, 'knownfiles', None);
define read_mime_types(*args, **kwargs):
    return py_mimetypes.read_mime_types(*args, **kwargs);

suffix_map = getattr(py_mimetypes, 'suffix_map', None);
types_map = getattr(py_mimetypes, 'types_map', None);
