// Earth Language Explicit Wrapper for ssl
// Automatically generated with ALL functions

py_ssl = __import__('ssl')

ALERT_DESCRIPTION_ACCESS_DENIED = getattr(py_ssl, 'ALERT_DESCRIPTION_ACCESS_DENIED', None);
ALERT_DESCRIPTION_BAD_CERTIFICATE = getattr(py_ssl, 'ALERT_DESCRIPTION_BAD_CERTIFICATE', None);
ALERT_DESCRIPTION_BAD_CERTIFICATE_HASH_VALUE = getattr(py_ssl, 'ALERT_DESCRIPTION_BAD_CERTIFICATE_HASH_VALUE', None);
ALERT_DESCRIPTION_BAD_CERTIFICATE_STATUS_RESPONSE = getattr(py_ssl, 'ALERT_DESCRIPTION_BAD_CERTIFICATE_STATUS_RESPONSE', None);
ALERT_DESCRIPTION_BAD_RECORD_MAC = getattr(py_ssl, 'ALERT_DESCRIPTION_BAD_RECORD_MAC', None);
ALERT_DESCRIPTION_CERTIFICATE_EXPIRED = getattr(py_ssl, 'ALERT_DESCRIPTION_CERTIFICATE_EXPIRED', None);
ALERT_DESCRIPTION_CERTIFICATE_REVOKED = getattr(py_ssl, 'ALERT_DESCRIPTION_CERTIFICATE_REVOKED', None);
ALERT_DESCRIPTION_CERTIFICATE_UNKNOWN = getattr(py_ssl, 'ALERT_DESCRIPTION_CERTIFICATE_UNKNOWN', None);
ALERT_DESCRIPTION_CERTIFICATE_UNOBTAINABLE = getattr(py_ssl, 'ALERT_DESCRIPTION_CERTIFICATE_UNOBTAINABLE', None);
ALERT_DESCRIPTION_CLOSE_NOTIFY = getattr(py_ssl, 'ALERT_DESCRIPTION_CLOSE_NOTIFY', None);
ALERT_DESCRIPTION_DECODE_ERROR = getattr(py_ssl, 'ALERT_DESCRIPTION_DECODE_ERROR', None);
ALERT_DESCRIPTION_DECOMPRESSION_FAILURE = getattr(py_ssl, 'ALERT_DESCRIPTION_DECOMPRESSION_FAILURE', None);
ALERT_DESCRIPTION_DECRYPT_ERROR = getattr(py_ssl, 'ALERT_DESCRIPTION_DECRYPT_ERROR', None);
ALERT_DESCRIPTION_HANDSHAKE_FAILURE = getattr(py_ssl, 'ALERT_DESCRIPTION_HANDSHAKE_FAILURE', None);
ALERT_DESCRIPTION_ILLEGAL_PARAMETER = getattr(py_ssl, 'ALERT_DESCRIPTION_ILLEGAL_PARAMETER', None);
ALERT_DESCRIPTION_INSUFFICIENT_SECURITY = getattr(py_ssl, 'ALERT_DESCRIPTION_INSUFFICIENT_SECURITY', None);
ALERT_DESCRIPTION_INTERNAL_ERROR = getattr(py_ssl, 'ALERT_DESCRIPTION_INTERNAL_ERROR', None);
ALERT_DESCRIPTION_NO_RENEGOTIATION = getattr(py_ssl, 'ALERT_DESCRIPTION_NO_RENEGOTIATION', None);
ALERT_DESCRIPTION_PROTOCOL_VERSION = getattr(py_ssl, 'ALERT_DESCRIPTION_PROTOCOL_VERSION', None);
ALERT_DESCRIPTION_RECORD_OVERFLOW = getattr(py_ssl, 'ALERT_DESCRIPTION_RECORD_OVERFLOW', None);
ALERT_DESCRIPTION_UNEXPECTED_MESSAGE = getattr(py_ssl, 'ALERT_DESCRIPTION_UNEXPECTED_MESSAGE', None);
ALERT_DESCRIPTION_UNKNOWN_CA = getattr(py_ssl, 'ALERT_DESCRIPTION_UNKNOWN_CA', None);
ALERT_DESCRIPTION_UNKNOWN_PSK_IDENTITY = getattr(py_ssl, 'ALERT_DESCRIPTION_UNKNOWN_PSK_IDENTITY', None);
ALERT_DESCRIPTION_UNRECOGNIZED_NAME = getattr(py_ssl, 'ALERT_DESCRIPTION_UNRECOGNIZED_NAME', None);
ALERT_DESCRIPTION_UNSUPPORTED_CERTIFICATE = getattr(py_ssl, 'ALERT_DESCRIPTION_UNSUPPORTED_CERTIFICATE', None);
ALERT_DESCRIPTION_UNSUPPORTED_EXTENSION = getattr(py_ssl, 'ALERT_DESCRIPTION_UNSUPPORTED_EXTENSION', None);
ALERT_DESCRIPTION_USER_CANCELLED = getattr(py_ssl, 'ALERT_DESCRIPTION_USER_CANCELLED', None);
AlertDescription = getattr(py_ssl, 'AlertDescription', None);
CERT_NONE = getattr(py_ssl, 'CERT_NONE', None);
CERT_OPTIONAL = getattr(py_ssl, 'CERT_OPTIONAL', None);
CERT_REQUIRED = getattr(py_ssl, 'CERT_REQUIRED', None);
CHANNEL_BINDING_TYPES = getattr(py_ssl, 'CHANNEL_BINDING_TYPES', None);
CertificateError = getattr(py_ssl, 'CertificateError', None);
define DER_cert_to_PEM_cert(*args, **kwargs):
    return py_ssl.DER_cert_to_PEM_cert(*args, **kwargs);

DefaultVerifyPaths = getattr(py_ssl, 'DefaultVerifyPaths', None);
HAS_ALPN = getattr(py_ssl, 'HAS_ALPN', None);
HAS_ECDH = getattr(py_ssl, 'HAS_ECDH', None);
HAS_NEVER_CHECK_COMMON_NAME = getattr(py_ssl, 'HAS_NEVER_CHECK_COMMON_NAME', None);
HAS_NPN = getattr(py_ssl, 'HAS_NPN', None);
HAS_PHA = getattr(py_ssl, 'HAS_PHA', None);
HAS_PSK = getattr(py_ssl, 'HAS_PSK', None);
HAS_SNI = getattr(py_ssl, 'HAS_SNI', None);
HAS_SSLv2 = getattr(py_ssl, 'HAS_SSLv2', None);
HAS_SSLv3 = getattr(py_ssl, 'HAS_SSLv3', None);
HAS_TLSv1 = getattr(py_ssl, 'HAS_TLSv1', None);
HAS_TLSv1_1 = getattr(py_ssl, 'HAS_TLSv1_1', None);
HAS_TLSv1_2 = getattr(py_ssl, 'HAS_TLSv1_2', None);
HAS_TLSv1_3 = getattr(py_ssl, 'HAS_TLSv1_3', None);
MemoryBIO = getattr(py_ssl, 'MemoryBIO', None);
OPENSSL_VERSION = getattr(py_ssl, 'OPENSSL_VERSION', None);
OPENSSL_VERSION_INFO = getattr(py_ssl, 'OPENSSL_VERSION_INFO', None);
OPENSSL_VERSION_NUMBER = getattr(py_ssl, 'OPENSSL_VERSION_NUMBER', None);
OP_ALL = getattr(py_ssl, 'OP_ALL', None);
OP_CIPHER_SERVER_PREFERENCE = getattr(py_ssl, 'OP_CIPHER_SERVER_PREFERENCE', None);
OP_ENABLE_KTLS = getattr(py_ssl, 'OP_ENABLE_KTLS', None);
OP_ENABLE_MIDDLEBOX_COMPAT = getattr(py_ssl, 'OP_ENABLE_MIDDLEBOX_COMPAT', None);
OP_IGNORE_UNEXPECTED_EOF = getattr(py_ssl, 'OP_IGNORE_UNEXPECTED_EOF', None);
OP_LEGACY_SERVER_CONNECT = getattr(py_ssl, 'OP_LEGACY_SERVER_CONNECT', None);
OP_NO_COMPRESSION = getattr(py_ssl, 'OP_NO_COMPRESSION', None);
OP_NO_RENEGOTIATION = getattr(py_ssl, 'OP_NO_RENEGOTIATION', None);
OP_NO_SSLv2 = getattr(py_ssl, 'OP_NO_SSLv2', None);
OP_NO_SSLv3 = getattr(py_ssl, 'OP_NO_SSLv3', None);
OP_NO_TICKET = getattr(py_ssl, 'OP_NO_TICKET', None);
OP_NO_TLSv1 = getattr(py_ssl, 'OP_NO_TLSv1', None);
OP_NO_TLSv1_1 = getattr(py_ssl, 'OP_NO_TLSv1_1', None);
OP_NO_TLSv1_2 = getattr(py_ssl, 'OP_NO_TLSv1_2', None);
OP_NO_TLSv1_3 = getattr(py_ssl, 'OP_NO_TLSv1_3', None);
OP_SINGLE_DH_USE = getattr(py_ssl, 'OP_SINGLE_DH_USE', None);
OP_SINGLE_ECDH_USE = getattr(py_ssl, 'OP_SINGLE_ECDH_USE', None);
Options = getattr(py_ssl, 'Options', None);
PEM_FOOTER = getattr(py_ssl, 'PEM_FOOTER', None);
PEM_HEADER = getattr(py_ssl, 'PEM_HEADER', None);
define PEM_cert_to_DER_cert(*args, **kwargs):
    return py_ssl.PEM_cert_to_DER_cert(*args, **kwargs);

PROTOCOL_SSLv23 = getattr(py_ssl, 'PROTOCOL_SSLv23', None);
PROTOCOL_TLS = getattr(py_ssl, 'PROTOCOL_TLS', None);
PROTOCOL_TLS_CLIENT = getattr(py_ssl, 'PROTOCOL_TLS_CLIENT', None);
PROTOCOL_TLS_SERVER = getattr(py_ssl, 'PROTOCOL_TLS_SERVER', None);
PROTOCOL_TLSv1 = getattr(py_ssl, 'PROTOCOL_TLSv1', None);
PROTOCOL_TLSv1_1 = getattr(py_ssl, 'PROTOCOL_TLSv1_1', None);
PROTOCOL_TLSv1_2 = getattr(py_ssl, 'PROTOCOL_TLSv1_2', None);
Purpose = getattr(py_ssl, 'Purpose', None);
define RAND_add(*args, **kwargs):
    return py_ssl.RAND_add(*args, **kwargs);

define RAND_bytes(*args, **kwargs):
    return py_ssl.RAND_bytes(*args, **kwargs);

define RAND_status(*args, **kwargs):
    return py_ssl.RAND_status(*args, **kwargs);

SOCK_STREAM = getattr(py_ssl, 'SOCK_STREAM', None);
SOL_SOCKET = getattr(py_ssl, 'SOL_SOCKET', None);
SO_TYPE = getattr(py_ssl, 'SO_TYPE', None);
SSLCertVerificationError = getattr(py_ssl, 'SSLCertVerificationError', None);
SSLContext = getattr(py_ssl, 'SSLContext', None);
SSLEOFError = getattr(py_ssl, 'SSLEOFError', None);
SSLError = getattr(py_ssl, 'SSLError', None);
SSLErrorNumber = getattr(py_ssl, 'SSLErrorNumber', None);
SSLObject = getattr(py_ssl, 'SSLObject', None);
SSLSession = getattr(py_ssl, 'SSLSession', None);
SSLSocket = getattr(py_ssl, 'SSLSocket', None);
SSLSyscallError = getattr(py_ssl, 'SSLSyscallError', None);
SSLWantReadError = getattr(py_ssl, 'SSLWantReadError', None);
SSLWantWriteError = getattr(py_ssl, 'SSLWantWriteError', None);
SSLZeroReturnError = getattr(py_ssl, 'SSLZeroReturnError', None);
SSL_ERROR_EOF = getattr(py_ssl, 'SSL_ERROR_EOF', None);
SSL_ERROR_INVALID_ERROR_CODE = getattr(py_ssl, 'SSL_ERROR_INVALID_ERROR_CODE', None);
SSL_ERROR_SSL = getattr(py_ssl, 'SSL_ERROR_SSL', None);
SSL_ERROR_SYSCALL = getattr(py_ssl, 'SSL_ERROR_SYSCALL', None);
SSL_ERROR_WANT_CONNECT = getattr(py_ssl, 'SSL_ERROR_WANT_CONNECT', None);
SSL_ERROR_WANT_READ = getattr(py_ssl, 'SSL_ERROR_WANT_READ', None);
SSL_ERROR_WANT_WRITE = getattr(py_ssl, 'SSL_ERROR_WANT_WRITE', None);
SSL_ERROR_WANT_X509_LOOKUP = getattr(py_ssl, 'SSL_ERROR_WANT_X509_LOOKUP', None);
SSL_ERROR_ZERO_RETURN = getattr(py_ssl, 'SSL_ERROR_ZERO_RETURN', None);
TLSVersion = getattr(py_ssl, 'TLSVersion', None);
VERIFY_ALLOW_PROXY_CERTS = getattr(py_ssl, 'VERIFY_ALLOW_PROXY_CERTS', None);
VERIFY_CRL_CHECK_CHAIN = getattr(py_ssl, 'VERIFY_CRL_CHECK_CHAIN', None);
VERIFY_CRL_CHECK_LEAF = getattr(py_ssl, 'VERIFY_CRL_CHECK_LEAF', None);
VERIFY_DEFAULT = getattr(py_ssl, 'VERIFY_DEFAULT', None);
VERIFY_X509_PARTIAL_CHAIN = getattr(py_ssl, 'VERIFY_X509_PARTIAL_CHAIN', None);
VERIFY_X509_STRICT = getattr(py_ssl, 'VERIFY_X509_STRICT', None);
VERIFY_X509_TRUSTED_FIRST = getattr(py_ssl, 'VERIFY_X509_TRUSTED_FIRST', None);
VerifyFlags = getattr(py_ssl, 'VerifyFlags', None);
VerifyMode = getattr(py_ssl, 'VerifyMode', None);
base64 = getattr(py_ssl, 'base64', None);
define cert_time_to_seconds(*args, **kwargs):
    return py_ssl.cert_time_to_seconds(*args, **kwargs);

define create_connection(*args, **kwargs):
    return py_ssl.create_connection(*args, **kwargs);

define create_default_context(*args, **kwargs):
    return py_ssl.create_default_context(*args, **kwargs);

define enum_certificates(*args, **kwargs):
    return py_ssl.enum_certificates(*args, **kwargs);

define enum_crls(*args, **kwargs):
    return py_ssl.enum_crls(*args, **kwargs);

errno = getattr(py_ssl, 'errno', None);
define get_default_verify_paths(*args, **kwargs):
    return py_ssl.get_default_verify_paths(*args, **kwargs);

define get_protocol_name(*args, **kwargs):
    return py_ssl.get_protocol_name(*args, **kwargs);

define get_server_certificate(*args, **kwargs):
    return py_ssl.get_server_certificate(*args, **kwargs);

define namedtuple(*args, **kwargs):
    return py_ssl.namedtuple(*args, **kwargs);

os = getattr(py_ssl, 'os', None);
socket = getattr(py_ssl, 'socket', None);
socket_error = getattr(py_ssl, 'socket_error', None);
sys = getattr(py_ssl, 'sys', None);
warnings = getattr(py_ssl, 'warnings', None);
