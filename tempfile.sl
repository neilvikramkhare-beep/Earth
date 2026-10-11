// Earth Language Explicit Wrapper for tempfile
// Automatically generated with ALL functions

py_tempfile = __import__('tempfile')

define NamedTemporaryFile(*args, **kwargs):
    return py_tempfile.NamedTemporaryFile(*args, **kwargs);

SpooledTemporaryFile = getattr(py_tempfile, 'SpooledTemporaryFile', None);
TMP_MAX = getattr(py_tempfile, 'TMP_MAX', None);
TemporaryDirectory = getattr(py_tempfile, 'TemporaryDirectory', None);
define TemporaryFile(*args, **kwargs):
    return py_tempfile.TemporaryFile(*args, **kwargs);

define gettempdir(*args, **kwargs):
    return py_tempfile.gettempdir(*args, **kwargs);

define gettempdirb(*args, **kwargs):
    return py_tempfile.gettempdirb(*args, **kwargs);

define gettempprefix(*args, **kwargs):
    return py_tempfile.gettempprefix(*args, **kwargs);

define gettempprefixb(*args, **kwargs):
    return py_tempfile.gettempprefixb(*args, **kwargs);

define mkdtemp(*args, **kwargs):
    return py_tempfile.mkdtemp(*args, **kwargs);

define mkstemp(*args, **kwargs):
    return py_tempfile.mkstemp(*args, **kwargs);

define mktemp(*args, **kwargs):
    return py_tempfile.mktemp(*args, **kwargs);

tempdir = getattr(py_tempfile, 'tempdir', None);
template = getattr(py_tempfile, 'template', None);
