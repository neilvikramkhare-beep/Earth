// Earth Language Explicit Wrapper for csv
py_csv = __import__('csv')

Dialect = getattr(py_csv, 'Dialect', None);
DictReader = getattr(py_csv, 'DictReader', None);
DictWriter = getattr(py_csv, 'DictWriter', None);
Error = getattr(py_csv, 'Error', None);
QUOTE_ALL = getattr(py_csv, 'QUOTE_ALL', None);
QUOTE_MINIMAL = getattr(py_csv, 'QUOTE_MINIMAL', None);
QUOTE_NONE = getattr(py_csv, 'QUOTE_NONE', None);
QUOTE_NONNUMERIC = getattr(py_csv, 'QUOTE_NONNUMERIC', None);
QUOTE_NOTNULL = getattr(py_csv, 'QUOTE_NOTNULL', None);
QUOTE_STRINGS = getattr(py_csv, 'QUOTE_STRINGS', None);
Sniffer = getattr(py_csv, 'Sniffer', None);
StringIO = getattr(py_csv, 'StringIO', None);
excel = getattr(py_csv, 'excel', None);
excel_tab = getattr(py_csv, 'excel_tab', None);
define field_size_limit(*args, **kwargs):
    return py_csv.field_size_limit(*args, **kwargs);

define get_dialect(*args, **kwargs):
    return py_csv.get_dialect(*args, **kwargs);

define list_dialects(*args, **kwargs):
    return py_csv.list_dialects(*args, **kwargs);

define reader(*args, **kwargs):
    return py_csv.reader(*args, **kwargs);

define register_dialect(*args, **kwargs):
    return py_csv.register_dialect(*args, **kwargs);

types = getattr(py_csv, 'types', None);
unix_dialect = getattr(py_csv, 'unix_dialect', None);
define unregister_dialect(*args, **kwargs):
    return py_csv.unregister_dialect(*args, **kwargs);

define writer(*args, **kwargs):
    return py_csv.writer(*args, **kwargs);

