// Earth Language Explicit Wrapper for plistlib
// Automatically generated with ALL functions

py_plistlib = __import__('plistlib')

BytesIO = getattr(py_plistlib, 'BytesIO', None);
FMT_BINARY = getattr(py_plistlib, 'FMT_BINARY', None);
FMT_XML = getattr(py_plistlib, 'FMT_XML', None);
InvalidFileException = getattr(py_plistlib, 'InvalidFileException', None);
PLISTHEADER = getattr(py_plistlib, 'PLISTHEADER', None);
define ParserCreate(*args, **kwargs):
    return py_plistlib.ParserCreate(*args, **kwargs);

PlistFormat = getattr(py_plistlib, 'PlistFormat', None);
UID = getattr(py_plistlib, 'UID', None);
binascii = getattr(py_plistlib, 'binascii', None);
codecs = getattr(py_plistlib, 'codecs', None);
datetime = getattr(py_plistlib, 'datetime', None);
define dump(*args, **kwargs):
    return py_plistlib.dump(*args, **kwargs);

define dumps(*args, **kwargs):
    return py_plistlib.dumps(*args, **kwargs);

enum = getattr(py_plistlib, 'enum', None);
itertools = getattr(py_plistlib, 'itertools', None);
define load(*args, **kwargs):
    return py_plistlib.load(*args, **kwargs);

define loads(*args, **kwargs):
    return py_plistlib.loads(*args, **kwargs);

os = getattr(py_plistlib, 'os', None);
re = getattr(py_plistlib, 're', None);
struct = getattr(py_plistlib, 'struct', None);
