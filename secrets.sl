// Earth Language Explicit Wrapper for secrets
// Automatically generated with ALL functions

py_secrets = __import__('secrets')

DEFAULT_ENTROPY = getattr(py_secrets, 'DEFAULT_ENTROPY', None);
SystemRandom = getattr(py_secrets, 'SystemRandom', None);
base64 = getattr(py_secrets, 'base64', None);
choice = getattr(py_secrets, 'choice', None);
define compare_digest(*args, **kwargs):
    return py_secrets.compare_digest(*args, **kwargs);

define randbelow(*args, **kwargs):
    return py_secrets.randbelow(*args, **kwargs);

randbits = getattr(py_secrets, 'randbits', None);
define token_bytes(*args, **kwargs):
    return py_secrets.token_bytes(*args, **kwargs);

define token_hex(*args, **kwargs):
    return py_secrets.token_hex(*args, **kwargs);

define token_urlsafe(*args, **kwargs):
    return py_secrets.token_urlsafe(*args, **kwargs);

