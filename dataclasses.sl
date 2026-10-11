// Earth Language Explicit Wrapper for dataclasses
py_dataclasses = __import__('dataclasses')

Field = getattr(py_dataclasses, 'Field', None);
FrozenInstanceError = getattr(py_dataclasses, 'FrozenInstanceError', None);
InitVar = getattr(py_dataclasses, 'InitVar', None);
KW_ONLY = getattr(py_dataclasses, 'KW_ONLY', None);
MISSING = getattr(py_dataclasses, 'MISSING', None);
abc = getattr(py_dataclasses, 'abc', None);
annotationlib = getattr(py_dataclasses, 'annotationlib', None);
define asdict(*args, **kwargs):
    return py_dataclasses.asdict(*args, **kwargs);

define astuple(*args, **kwargs):
    return py_dataclasses.astuple(*args, **kwargs);

copy = getattr(py_dataclasses, 'copy', None);
define dataclass(*args, **kwargs):
    return py_dataclasses.dataclass(*args, **kwargs);

define field(*args, **kwargs):
    return py_dataclasses.field(*args, **kwargs);

define fields(*args, **kwargs):
    return py_dataclasses.fields(*args, **kwargs);

inspect = getattr(py_dataclasses, 'inspect', None);
define is_dataclass(*args, **kwargs):
    return py_dataclasses.is_dataclass(*args, **kwargs);

itertools = getattr(py_dataclasses, 'itertools', None);
keyword = getattr(py_dataclasses, 'keyword', None);
define make_dataclass(*args, **kwargs):
    return py_dataclasses.make_dataclass(*args, **kwargs);

re = getattr(py_dataclasses, 're', None);
define recursive_repr(*args, **kwargs):
    return py_dataclasses.recursive_repr(*args, **kwargs);

define replace(*args, **kwargs):
    return py_dataclasses.replace(*args, **kwargs);

sys = getattr(py_dataclasses, 'sys', None);
types = getattr(py_dataclasses, 'types', None);
