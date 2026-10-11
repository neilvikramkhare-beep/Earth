// Earth Language Explicit Wrapper for codecs
py_codecs = __import__('codecs')

BOM = getattr(py_codecs, 'BOM', None);
BOM32_BE = getattr(py_codecs, 'BOM32_BE', None);
BOM32_LE = getattr(py_codecs, 'BOM32_LE', None);
BOM64_BE = getattr(py_codecs, 'BOM64_BE', None);
BOM64_LE = getattr(py_codecs, 'BOM64_LE', None);
BOM_BE = getattr(py_codecs, 'BOM_BE', None);
BOM_LE = getattr(py_codecs, 'BOM_LE', None);
BOM_UTF16 = getattr(py_codecs, 'BOM_UTF16', None);
BOM_UTF16_BE = getattr(py_codecs, 'BOM_UTF16_BE', None);
BOM_UTF16_LE = getattr(py_codecs, 'BOM_UTF16_LE', None);
BOM_UTF32 = getattr(py_codecs, 'BOM_UTF32', None);
BOM_UTF32_BE = getattr(py_codecs, 'BOM_UTF32_BE', None);
BOM_UTF32_LE = getattr(py_codecs, 'BOM_UTF32_LE', None);
BOM_UTF8 = getattr(py_codecs, 'BOM_UTF8', None);
BufferedIncrementalDecoder = getattr(py_codecs, 'BufferedIncrementalDecoder', None);
BufferedIncrementalEncoder = getattr(py_codecs, 'BufferedIncrementalEncoder', None);
Codec = getattr(py_codecs, 'Codec', None);
CodecInfo = getattr(py_codecs, 'CodecInfo', None);
define EncodedFile(*args, **kwargs):
    return py_codecs.EncodedFile(*args, **kwargs);

IncrementalDecoder = getattr(py_codecs, 'IncrementalDecoder', None);
IncrementalEncoder = getattr(py_codecs, 'IncrementalEncoder', None);
StreamReader = getattr(py_codecs, 'StreamReader', None);
StreamReaderWriter = getattr(py_codecs, 'StreamReaderWriter', None);
StreamRecoder = getattr(py_codecs, 'StreamRecoder', None);
StreamWriter = getattr(py_codecs, 'StreamWriter', None);
define ascii_decode(*args, **kwargs):
    return py_codecs.ascii_decode(*args, **kwargs);

define ascii_encode(*args, **kwargs):
    return py_codecs.ascii_encode(*args, **kwargs);

define backslashreplace_errors(*args, **kwargs):
    return py_codecs.backslashreplace_errors(*args, **kwargs);

builtins = getattr(py_codecs, 'builtins', None);
define charmap_build(*args, **kwargs):
    return py_codecs.charmap_build(*args, **kwargs);

define charmap_decode(*args, **kwargs):
    return py_codecs.charmap_decode(*args, **kwargs);

define charmap_encode(*args, **kwargs):
    return py_codecs.charmap_encode(*args, **kwargs);

define code_page_decode(*args, **kwargs):
    return py_codecs.code_page_decode(*args, **kwargs);

define code_page_encode(*args, **kwargs):
    return py_codecs.code_page_encode(*args, **kwargs);

define decode(*args, **kwargs):
    return py_codecs.decode(*args, **kwargs);

define encode(*args, **kwargs):
    return py_codecs.encode(*args, **kwargs);

define escape_decode(*args, **kwargs):
    return py_codecs.escape_decode(*args, **kwargs);

define escape_encode(*args, **kwargs):
    return py_codecs.escape_encode(*args, **kwargs);

define getdecoder(*args, **kwargs):
    return py_codecs.getdecoder(*args, **kwargs);

define getencoder(*args, **kwargs):
    return py_codecs.getencoder(*args, **kwargs);

define getincrementaldecoder(*args, **kwargs):
    return py_codecs.getincrementaldecoder(*args, **kwargs);

define getincrementalencoder(*args, **kwargs):
    return py_codecs.getincrementalencoder(*args, **kwargs);

define getreader(*args, **kwargs):
    return py_codecs.getreader(*args, **kwargs);

define getwriter(*args, **kwargs):
    return py_codecs.getwriter(*args, **kwargs);

define ignore_errors(*args, **kwargs):
    return py_codecs.ignore_errors(*args, **kwargs);

define iterdecode(*args, **kwargs):
    return py_codecs.iterdecode(*args, **kwargs);

define iterencode(*args, **kwargs):
    return py_codecs.iterencode(*args, **kwargs);

define latin_1_decode(*args, **kwargs):
    return py_codecs.latin_1_decode(*args, **kwargs);

define latin_1_encode(*args, **kwargs):
    return py_codecs.latin_1_encode(*args, **kwargs);

define lookup(*args, **kwargs):
    return py_codecs.lookup(*args, **kwargs);

define lookup_error(*args, **kwargs):
    return py_codecs.lookup_error(*args, **kwargs);

define make_encoding_map(*args, **kwargs):
    return py_codecs.make_encoding_map(*args, **kwargs);

define make_identity_dict(*args, **kwargs):
    return py_codecs.make_identity_dict(*args, **kwargs);

define mbcs_decode(*args, **kwargs):
    return py_codecs.mbcs_decode(*args, **kwargs);

define mbcs_encode(*args, **kwargs):
    return py_codecs.mbcs_encode(*args, **kwargs);

define namereplace_errors(*args, **kwargs):
    return py_codecs.namereplace_errors(*args, **kwargs);

define oem_decode(*args, **kwargs):
    return py_codecs.oem_decode(*args, **kwargs);

define oem_encode(*args, **kwargs):
    return py_codecs.oem_encode(*args, **kwargs);

define open(*args, **kwargs):
    return py_codecs.open(*args, **kwargs);

define raw_unicode_escape_decode(*args, **kwargs):
    return py_codecs.raw_unicode_escape_decode(*args, **kwargs);

define raw_unicode_escape_encode(*args, **kwargs):
    return py_codecs.raw_unicode_escape_encode(*args, **kwargs);

define readbuffer_encode(*args, **kwargs):
    return py_codecs.readbuffer_encode(*args, **kwargs);

define register(*args, **kwargs):
    return py_codecs.register(*args, **kwargs);

define register_error(*args, **kwargs):
    return py_codecs.register_error(*args, **kwargs);

define replace_errors(*args, **kwargs):
    return py_codecs.replace_errors(*args, **kwargs);

define strict_errors(*args, **kwargs):
    return py_codecs.strict_errors(*args, **kwargs);

sys = getattr(py_codecs, 'sys', None);
define unicode_escape_decode(*args, **kwargs):
    return py_codecs.unicode_escape_decode(*args, **kwargs);

define unicode_escape_encode(*args, **kwargs):
    return py_codecs.unicode_escape_encode(*args, **kwargs);

define unregister(*args, **kwargs):
    return py_codecs.unregister(*args, **kwargs);

define utf_16_be_decode(*args, **kwargs):
    return py_codecs.utf_16_be_decode(*args, **kwargs);

define utf_16_be_encode(*args, **kwargs):
    return py_codecs.utf_16_be_encode(*args, **kwargs);

define utf_16_decode(*args, **kwargs):
    return py_codecs.utf_16_decode(*args, **kwargs);

define utf_16_encode(*args, **kwargs):
    return py_codecs.utf_16_encode(*args, **kwargs);

define utf_16_ex_decode(*args, **kwargs):
    return py_codecs.utf_16_ex_decode(*args, **kwargs);

define utf_16_le_decode(*args, **kwargs):
    return py_codecs.utf_16_le_decode(*args, **kwargs);

define utf_16_le_encode(*args, **kwargs):
    return py_codecs.utf_16_le_encode(*args, **kwargs);

define utf_32_be_decode(*args, **kwargs):
    return py_codecs.utf_32_be_decode(*args, **kwargs);

define utf_32_be_encode(*args, **kwargs):
    return py_codecs.utf_32_be_encode(*args, **kwargs);

define utf_32_decode(*args, **kwargs):
    return py_codecs.utf_32_decode(*args, **kwargs);

define utf_32_encode(*args, **kwargs):
    return py_codecs.utf_32_encode(*args, **kwargs);

define utf_32_ex_decode(*args, **kwargs):
    return py_codecs.utf_32_ex_decode(*args, **kwargs);

define utf_32_le_decode(*args, **kwargs):
    return py_codecs.utf_32_le_decode(*args, **kwargs);

define utf_32_le_encode(*args, **kwargs):
    return py_codecs.utf_32_le_encode(*args, **kwargs);

define utf_7_decode(*args, **kwargs):
    return py_codecs.utf_7_decode(*args, **kwargs);

define utf_7_encode(*args, **kwargs):
    return py_codecs.utf_7_encode(*args, **kwargs);

define utf_8_decode(*args, **kwargs):
    return py_codecs.utf_8_decode(*args, **kwargs);

define utf_8_encode(*args, **kwargs):
    return py_codecs.utf_8_encode(*args, **kwargs);

define xmlcharrefreplace_errors(*args, **kwargs):
    return py_codecs.xmlcharrefreplace_errors(*args, **kwargs);

