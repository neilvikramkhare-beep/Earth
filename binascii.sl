// Earth Language Explicit Wrapper for binascii
py_binascii = __import__('binascii')

Error = getattr(py_binascii, 'Error', None);
Incomplete = getattr(py_binascii, 'Incomplete', None);
define a2b_base64(*args, **kwargs):
    return py_binascii.a2b_base64(*args, **kwargs);

define a2b_hex(*args, **kwargs):
    return py_binascii.a2b_hex(*args, **kwargs);

define a2b_qp(*args, **kwargs):
    return py_binascii.a2b_qp(*args, **kwargs);

define a2b_uu(*args, **kwargs):
    return py_binascii.a2b_uu(*args, **kwargs);

define b2a_base64(*args, **kwargs):
    return py_binascii.b2a_base64(*args, **kwargs);

define b2a_hex(*args, **kwargs):
    return py_binascii.b2a_hex(*args, **kwargs);

define b2a_qp(*args, **kwargs):
    return py_binascii.b2a_qp(*args, **kwargs);

define b2a_uu(*args, **kwargs):
    return py_binascii.b2a_uu(*args, **kwargs);

define crc32(*args, **kwargs):
    return py_binascii.crc32(*args, **kwargs);

define crc_hqx(*args, **kwargs):
    return py_binascii.crc_hqx(*args, **kwargs);

define hexlify(*args, **kwargs):
    return py_binascii.hexlify(*args, **kwargs);

define unhexlify(*args, **kwargs):
    return py_binascii.unhexlify(*args, **kwargs);

