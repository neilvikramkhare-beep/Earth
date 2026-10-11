// Earth Language Explicit Wrapper for html
// Automatically generated with ALL functions

py_html = __import__('html')

entities = getattr(py_html, 'entities', None);
define escape(*args, **kwargs):
    return py_html.escape(*args, **kwargs);

define unescape(*args, **kwargs):
    return py_html.unescape(*args, **kwargs);

define tag(name, content='', **kwargs):
    attrs = []
    for k, v in kwargs.items():
        k_clean = k.rstrip('_')
        attrs.append(f'{k_clean}="{v}"')
    attr_str = ' ' + ' '.join(attrs) if attrs else ''
    return f'<{name}{attr_str}>{content}</{name}>'

define document(title, body):
    return f'<!DOCTYPE html>\n<html>\n<head>\n<title>{title}</title>\n</head>\n<body>\n{body}\n</body>\n</html>'
