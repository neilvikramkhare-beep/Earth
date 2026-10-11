// Earth Language Explicit Wrapper for pyexpat
// Automatically generated with ALL functions

py_pyexpat = __import__('pyexpat')

EXPAT_VERSION = getattr(py_pyexpat, 'EXPAT_VERSION', None);
define ErrorString(*args, **kwargs):
    return py_pyexpat.ErrorString(*args, **kwargs);

ExpatError = getattr(py_pyexpat, 'ExpatError', None);
define ParserCreate(*args, **kwargs):
    return py_pyexpat.ParserCreate(*args, **kwargs);

XMLParserType = getattr(py_pyexpat, 'XMLParserType', None);
XML_PARAM_ENTITY_PARSING_ALWAYS = getattr(py_pyexpat, 'XML_PARAM_ENTITY_PARSING_ALWAYS', None);
XML_PARAM_ENTITY_PARSING_NEVER = getattr(py_pyexpat, 'XML_PARAM_ENTITY_PARSING_NEVER', None);
XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE = getattr(py_pyexpat, 'XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE', None);
error = getattr(py_pyexpat, 'error', None);
errors = getattr(py_pyexpat, 'errors', None);
expat_CAPI = getattr(py_pyexpat, 'expat_CAPI', None);
features = getattr(py_pyexpat, 'features', None);
model = getattr(py_pyexpat, 'model', None);
native_encoding = getattr(py_pyexpat, 'native_encoding', None);
version_info = getattr(py_pyexpat, 'version_info', None);
