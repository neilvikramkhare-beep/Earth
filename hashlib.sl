// Earth Language Explicit Wrapper for hashlib
// Automatically generated with ALL functions

py_hashlib = __import__('hashlib')

algorithms_available = getattr(py_hashlib, 'algorithms_available', None);
algorithms_guaranteed = getattr(py_hashlib, 'algorithms_guaranteed', None);
blake2b = getattr(py_hashlib, 'blake2b', None);
blake2s = getattr(py_hashlib, 'blake2s', None);
define file_digest(*args, **kwargs):
    return py_hashlib.file_digest(*args, **kwargs);

define md5(*args, **kwargs):
    return py_hashlib.md5(*args, **kwargs);

define new(*args, **kwargs):
    return py_hashlib.new(*args, **kwargs);

define pbkdf2_hmac(*args, **kwargs):
    return py_hashlib.pbkdf2_hmac(*args, **kwargs);

define scrypt(*args, **kwargs):
    return py_hashlib.scrypt(*args, **kwargs);

define sha1(*args, **kwargs):
    return py_hashlib.sha1(*args, **kwargs);

define sha224(*args, **kwargs):
    return py_hashlib.sha224(*args, **kwargs);

define sha256(*args, **kwargs):
    return py_hashlib.sha256(*args, **kwargs);

define sha384(*args, **kwargs):
    return py_hashlib.sha384(*args, **kwargs);

define sha3_224(*args, **kwargs):
    return py_hashlib.sha3_224(*args, **kwargs);

define sha3_256(*args, **kwargs):
    return py_hashlib.sha3_256(*args, **kwargs);

define sha3_384(*args, **kwargs):
    return py_hashlib.sha3_384(*args, **kwargs);

define sha3_512(*args, **kwargs):
    return py_hashlib.sha3_512(*args, **kwargs);

define sha512(*args, **kwargs):
    return py_hashlib.sha512(*args, **kwargs);

define shake_128(*args, **kwargs):
    return py_hashlib.shake_128(*args, **kwargs);

define shake_256(*args, **kwargs):
    return py_hashlib.shake_256(*args, **kwargs);

