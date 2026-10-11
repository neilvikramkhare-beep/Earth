// Earth Language Explicit Wrapper for shelve
// Automatically generated with ALL functions

py_shelve = __import__('shelve')

BsdDbShelf = getattr(py_shelve, 'BsdDbShelf', None);
BytesIO = getattr(py_shelve, 'BytesIO', None);
DEFAULT_PROTOCOL = getattr(py_shelve, 'DEFAULT_PROTOCOL', None);
DbfilenameShelf = getattr(py_shelve, 'DbfilenameShelf', None);
Pickler = getattr(py_shelve, 'Pickler', None);
Shelf = getattr(py_shelve, 'Shelf', None);
Unpickler = getattr(py_shelve, 'Unpickler', None);
collections = getattr(py_shelve, 'collections', None);
define open(*args, **kwargs):
    return py_shelve.open(*args, **kwargs);

