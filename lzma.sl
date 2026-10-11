// Earth Language Explicit Wrapper for lzma
// Automatically generated with ALL functions

py_lzma = __import__('lzma')

CHECK_CRC32 = getattr(py_lzma, 'CHECK_CRC32', None);
CHECK_CRC64 = getattr(py_lzma, 'CHECK_CRC64', None);
CHECK_ID_MAX = getattr(py_lzma, 'CHECK_ID_MAX', None);
CHECK_NONE = getattr(py_lzma, 'CHECK_NONE', None);
CHECK_SHA256 = getattr(py_lzma, 'CHECK_SHA256', None);
CHECK_UNKNOWN = getattr(py_lzma, 'CHECK_UNKNOWN', None);
FILTER_ARM = getattr(py_lzma, 'FILTER_ARM', None);
FILTER_ARMTHUMB = getattr(py_lzma, 'FILTER_ARMTHUMB', None);
FILTER_DELTA = getattr(py_lzma, 'FILTER_DELTA', None);
FILTER_IA64 = getattr(py_lzma, 'FILTER_IA64', None);
FILTER_LZMA1 = getattr(py_lzma, 'FILTER_LZMA1', None);
FILTER_LZMA2 = getattr(py_lzma, 'FILTER_LZMA2', None);
FILTER_POWERPC = getattr(py_lzma, 'FILTER_POWERPC', None);
FILTER_SPARC = getattr(py_lzma, 'FILTER_SPARC', None);
FILTER_X86 = getattr(py_lzma, 'FILTER_X86', None);
FORMAT_ALONE = getattr(py_lzma, 'FORMAT_ALONE', None);
FORMAT_AUTO = getattr(py_lzma, 'FORMAT_AUTO', None);
FORMAT_RAW = getattr(py_lzma, 'FORMAT_RAW', None);
FORMAT_XZ = getattr(py_lzma, 'FORMAT_XZ', None);
LZMACompressor = getattr(py_lzma, 'LZMACompressor', None);
LZMADecompressor = getattr(py_lzma, 'LZMADecompressor', None);
LZMAError = getattr(py_lzma, 'LZMAError', None);
LZMAFile = getattr(py_lzma, 'LZMAFile', None);
MF_BT2 = getattr(py_lzma, 'MF_BT2', None);
MF_BT3 = getattr(py_lzma, 'MF_BT3', None);
MF_BT4 = getattr(py_lzma, 'MF_BT4', None);
MF_HC3 = getattr(py_lzma, 'MF_HC3', None);
MF_HC4 = getattr(py_lzma, 'MF_HC4', None);
MODE_FAST = getattr(py_lzma, 'MODE_FAST', None);
MODE_NORMAL = getattr(py_lzma, 'MODE_NORMAL', None);
PRESET_DEFAULT = getattr(py_lzma, 'PRESET_DEFAULT', None);
PRESET_EXTREME = getattr(py_lzma, 'PRESET_EXTREME', None);
builtins = getattr(py_lzma, 'builtins', None);
define compress(*args, **kwargs):
    return py_lzma.compress(*args, **kwargs);

define decompress(*args, **kwargs):
    return py_lzma.decompress(*args, **kwargs);

io = getattr(py_lzma, 'io', None);
define is_check_supported(*args, **kwargs):
    return py_lzma.is_check_supported(*args, **kwargs);

define open(*args, **kwargs):
    return py_lzma.open(*args, **kwargs);

os = getattr(py_lzma, 'os', None);
