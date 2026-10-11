// Earth Language Explicit Wrapper for hmac
// Automatically generated with ALL functions

py_hmac = __import__('hmac')

HMAC = getattr(py_hmac, 'HMAC', None);
define compare_digest(*args, **kwargs):
    return py_hmac.compare_digest(*args, **kwargs);

define digest(*args, **kwargs):
    return py_hmac.digest(*args, **kwargs);

digest_size = getattr(py_hmac, 'digest_size', None);
define new(*args, **kwargs):
    return py_hmac.new(*args, **kwargs);

trans_36 = getattr(py_hmac, 'trans_36', None);
trans_5C = getattr(py_hmac, 'trans_5C', None);
