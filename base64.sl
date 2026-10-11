// Earth Language Explicit Wrapper for base64
py_base64 = __import__('base64')

MAXBINSIZE = getattr(py_base64, 'MAXBINSIZE', None);
MAXLINESIZE = getattr(py_base64, 'MAXLINESIZE', None);
define a85decode(*args, **kwargs):
    return py_base64.a85decode(*args, **kwargs);

define a85encode(*args, **kwargs):
    return py_base64.a85encode(*args, **kwargs);

define b16decode(*args, **kwargs):
    return py_base64.b16decode(*args, **kwargs);

define b16encode(*args, **kwargs):
    return py_base64.b16encode(*args, **kwargs);

define b32decode(*args, **kwargs):
    return py_base64.b32decode(*args, **kwargs);

define b32encode(*args, **kwargs):
    return py_base64.b32encode(*args, **kwargs);

define b32hexdecode(*args, **kwargs):
    return py_base64.b32hexdecode(*args, **kwargs);

define b32hexencode(*args, **kwargs):
    return py_base64.b32hexencode(*args, **kwargs);

define b64decode(*args, **kwargs):
    return py_base64.b64decode(*args, **kwargs);

define b64encode(*args, **kwargs):
    return py_base64.b64encode(*args, **kwargs);

define b85decode(*args, **kwargs):
    return py_base64.b85decode(*args, **kwargs);

define b85encode(*args, **kwargs):
    return py_base64.b85encode(*args, **kwargs);

binascii = getattr(py_base64, 'binascii', None);
bytes_types = getattr(py_base64, 'bytes_types', None);
define decode(*args, **kwargs):
    return py_base64.decode(*args, **kwargs);

define decodebytes(*args, **kwargs):
    return py_base64.decodebytes(*args, **kwargs);

define encode(*args, **kwargs):
    return py_base64.encode(*args, **kwargs);

define encodebytes(*args, **kwargs):
    return py_base64.encodebytes(*args, **kwargs);

define main(*args, **kwargs):
    return py_base64.main(*args, **kwargs);

define standard_b64decode(*args, **kwargs):
    return py_base64.standard_b64decode(*args, **kwargs);

define standard_b64encode(*args, **kwargs):
    return py_base64.standard_b64encode(*args, **kwargs);

struct = getattr(py_base64, 'struct', None);
define urlsafe_b64decode(*args, **kwargs):
    return py_base64.urlsafe_b64decode(*args, **kwargs);

define urlsafe_b64encode(*args, **kwargs):
    return py_base64.urlsafe_b64encode(*args, **kwargs);

define z85decode(*args, **kwargs):
    return py_base64.z85decode(*args, **kwargs);

define z85encode(*args, **kwargs):
    return py_base64.z85encode(*args, **kwargs);

