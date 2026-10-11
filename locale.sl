// Earth Language Explicit Wrapper for locale
// Automatically generated with ALL functions

py_locale = __import__('locale')

CHAR_MAX = getattr(py_locale, 'CHAR_MAX', None);
Error = getattr(py_locale, 'Error', None);
LC_ALL = getattr(py_locale, 'LC_ALL', None);
LC_COLLATE = getattr(py_locale, 'LC_COLLATE', None);
LC_CTYPE = getattr(py_locale, 'LC_CTYPE', None);
LC_MONETARY = getattr(py_locale, 'LC_MONETARY', None);
LC_NUMERIC = getattr(py_locale, 'LC_NUMERIC', None);
LC_TIME = getattr(py_locale, 'LC_TIME', None);
define atof(*args, **kwargs):
    return py_locale.atof(*args, **kwargs);

define atoi(*args, **kwargs):
    return py_locale.atoi(*args, **kwargs);

define currency(*args, **kwargs):
    return py_locale.currency(*args, **kwargs);

define delocalize(*args, **kwargs):
    return py_locale.delocalize(*args, **kwargs);

encodings = getattr(py_locale, 'encodings', None);
define format_string(*args, **kwargs):
    return py_locale.format_string(*args, **kwargs);

functools = getattr(py_locale, 'functools', None);
define getdefaultlocale(*args, **kwargs):
    return py_locale.getdefaultlocale(*args, **kwargs);

define getencoding(*args, **kwargs):
    return py_locale.getencoding(*args, **kwargs);

define getlocale(*args, **kwargs):
    return py_locale.getlocale(*args, **kwargs);

define getpreferredencoding(*args, **kwargs):
    return py_locale.getpreferredencoding(*args, **kwargs);

locale_alias = getattr(py_locale, 'locale_alias', None);
locale_encoding_alias = getattr(py_locale, 'locale_encoding_alias', None);
define localeconv(*args, **kwargs):
    return py_locale.localeconv(*args, **kwargs);

define localize(*args, **kwargs):
    return py_locale.localize(*args, **kwargs);

define normalize(*args, **kwargs):
    return py_locale.normalize(*args, **kwargs);

define setlocale(*args, **kwargs):
    return py_locale.setlocale(*args, **kwargs);

define str(*args, **kwargs):
    return py_locale.str(*args, **kwargs);

define strcoll(*args, **kwargs):
    return py_locale.strcoll(*args, **kwargs);

define strxfrm(*args, **kwargs):
    return py_locale.strxfrm(*args, **kwargs);

sys = getattr(py_locale, 'sys', None);
windows_locale = getattr(py_locale, 'windows_locale', None);
