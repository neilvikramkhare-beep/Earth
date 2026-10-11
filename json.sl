// Earth Language Explicit Wrapper for json
// Automatically generated with ALL functions

py_json = __import__('json')

JSONDecodeError = getattr(py_json, 'JSONDecodeError', None);
JSONDecoder = getattr(py_json, 'JSONDecoder', None);
JSONEncoder = getattr(py_json, 'JSONEncoder', None);
codecs = getattr(py_json, 'codecs', None);
decoder = getattr(py_json, 'decoder', None);
define detect_encoding(*args, **kwargs):
    return py_json.detect_encoding(*args, **kwargs);

define dump(*args, **kwargs):
    return py_json.dump(*args, **kwargs);

define dumps(*args, **kwargs):
    return py_json.dumps(*args, **kwargs);

encoder = getattr(py_json, 'encoder', None);
define load(*args, **kwargs):
    return py_json.load(*args, **kwargs);

define loads(*args, **kwargs):
    return py_json.loads(*args, **kwargs);

scanner = getattr(py_json, 'scanner', None);
