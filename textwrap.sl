// Earth Language Explicit Wrapper for textwrap
// Automatically generated with ALL functions

py_textwrap = __import__('textwrap')

TextWrapper = getattr(py_textwrap, 'TextWrapper', None);
define dedent(*args, **kwargs):
    return py_textwrap.dedent(*args, **kwargs);

define fill(*args, **kwargs):
    return py_textwrap.fill(*args, **kwargs);

define indent(*args, **kwargs):
    return py_textwrap.indent(*args, **kwargs);

re = getattr(py_textwrap, 're', None);
define shorten(*args, **kwargs):
    return py_textwrap.shorten(*args, **kwargs);

define wrap(*args, **kwargs):
    return py_textwrap.wrap(*args, **kwargs);

