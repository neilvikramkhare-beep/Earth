// Earth Language Explicit Wrapper for builtins
py_builtins = __import__('builtins')

ArithmeticError = getattr(py_builtins, 'ArithmeticError', None);
AssertionError = getattr(py_builtins, 'AssertionError', None);
AttributeError = getattr(py_builtins, 'AttributeError', None);
BaseException = getattr(py_builtins, 'BaseException', None);
BaseExceptionGroup = getattr(py_builtins, 'BaseExceptionGroup', None);
BlockingIOError = getattr(py_builtins, 'BlockingIOError', None);
BrokenPipeError = getattr(py_builtins, 'BrokenPipeError', None);
BufferError = getattr(py_builtins, 'BufferError', None);
BytesWarning = getattr(py_builtins, 'BytesWarning', None);
ChildProcessError = getattr(py_builtins, 'ChildProcessError', None);
ConnectionAbortedError = getattr(py_builtins, 'ConnectionAbortedError', None);
ConnectionError = getattr(py_builtins, 'ConnectionError', None);
ConnectionRefusedError = getattr(py_builtins, 'ConnectionRefusedError', None);
ConnectionResetError = getattr(py_builtins, 'ConnectionResetError', None);
DeprecationWarning = getattr(py_builtins, 'DeprecationWarning', None);
EOFError = getattr(py_builtins, 'EOFError', None);
Ellipsis = getattr(py_builtins, 'Ellipsis', None);
EncodingWarning = getattr(py_builtins, 'EncodingWarning', None);
EnvironmentError = getattr(py_builtins, 'EnvironmentError', None);
Exception = getattr(py_builtins, 'Exception', None);
ExceptionGroup = getattr(py_builtins, 'ExceptionGroup', None);
FileExistsError = getattr(py_builtins, 'FileExistsError', None);
FileNotFoundError = getattr(py_builtins, 'FileNotFoundError', None);
FloatingPointError = getattr(py_builtins, 'FloatingPointError', None);
FutureWarning = getattr(py_builtins, 'FutureWarning', None);
GeneratorExit = getattr(py_builtins, 'GeneratorExit', None);
IOError = getattr(py_builtins, 'IOError', None);
ImportError = getattr(py_builtins, 'ImportError', None);
ImportWarning = getattr(py_builtins, 'ImportWarning', None);
IndentationError = getattr(py_builtins, 'IndentationError', None);
IndexError = getattr(py_builtins, 'IndexError', None);
InterruptedError = getattr(py_builtins, 'InterruptedError', None);
IsADirectoryError = getattr(py_builtins, 'IsADirectoryError', None);
KeyError = getattr(py_builtins, 'KeyError', None);
KeyboardInterrupt = getattr(py_builtins, 'KeyboardInterrupt', None);
LookupError = getattr(py_builtins, 'LookupError', None);
MemoryError = getattr(py_builtins, 'MemoryError', None);
ModuleNotFoundError = getattr(py_builtins, 'ModuleNotFoundError', None);
NameError = getattr(py_builtins, 'NameError', None);
NotADirectoryError = getattr(py_builtins, 'NotADirectoryError', None);
NotImplemented = getattr(py_builtins, 'NotImplemented', None);
NotImplementedError = getattr(py_builtins, 'NotImplementedError', None);
OSError = getattr(py_builtins, 'OSError', None);
OverflowError = getattr(py_builtins, 'OverflowError', None);
PendingDeprecationWarning = getattr(py_builtins, 'PendingDeprecationWarning', None);
PermissionError = getattr(py_builtins, 'PermissionError', None);
ProcessLookupError = getattr(py_builtins, 'ProcessLookupError', None);
PythonFinalizationError = getattr(py_builtins, 'PythonFinalizationError', None);
RecursionError = getattr(py_builtins, 'RecursionError', None);
ReferenceError = getattr(py_builtins, 'ReferenceError', None);
ResourceWarning = getattr(py_builtins, 'ResourceWarning', None);
RuntimeError = getattr(py_builtins, 'RuntimeError', None);
RuntimeWarning = getattr(py_builtins, 'RuntimeWarning', None);
StopAsyncIteration = getattr(py_builtins, 'StopAsyncIteration', None);
StopIteration = getattr(py_builtins, 'StopIteration', None);
SyntaxError = getattr(py_builtins, 'SyntaxError', None);
SyntaxWarning = getattr(py_builtins, 'SyntaxWarning', None);
SystemError = getattr(py_builtins, 'SystemError', None);
SystemExit = getattr(py_builtins, 'SystemExit', None);
TabError = getattr(py_builtins, 'TabError', None);
TimeoutError = getattr(py_builtins, 'TimeoutError', None);
TypeError = getattr(py_builtins, 'TypeError', None);
UnboundLocalError = getattr(py_builtins, 'UnboundLocalError', None);
UnicodeDecodeError = getattr(py_builtins, 'UnicodeDecodeError', None);
UnicodeEncodeError = getattr(py_builtins, 'UnicodeEncodeError', None);
UnicodeError = getattr(py_builtins, 'UnicodeError', None);
UnicodeTranslateError = getattr(py_builtins, 'UnicodeTranslateError', None);
UnicodeWarning = getattr(py_builtins, 'UnicodeWarning', None);
UserWarning = getattr(py_builtins, 'UserWarning', None);
ValueError = getattr(py_builtins, 'ValueError', None);
Warning = getattr(py_builtins, 'Warning', None);
WindowsError = getattr(py_builtins, 'WindowsError', None);
ZeroDivisionError = getattr(py_builtins, 'ZeroDivisionError', None);
define abs(*args, **kwargs):
    return py_builtins.abs(*args, **kwargs);

define aiter(*args, **kwargs):
    return py_builtins.aiter(*args, **kwargs);

define all(*args, **kwargs):
    return py_builtins.all(*args, **kwargs);

define anext(*args, **kwargs):
    return py_builtins.anext(*args, **kwargs);

define any(*args, **kwargs):
    return py_builtins.any(*args, **kwargs);

define ascii(*args, **kwargs):
    return py_builtins.ascii(*args, **kwargs);

define bin(*args, **kwargs):
    return py_builtins.bin(*args, **kwargs);

bool = getattr(py_builtins, 'bool', None);
define breakpoint(*args, **kwargs):
    return py_builtins.breakpoint(*args, **kwargs);

bytearray = getattr(py_builtins, 'bytearray', None);
bytes = getattr(py_builtins, 'bytes', None);
define callable(*args, **kwargs):
    return py_builtins.callable(*args, **kwargs);

define chr(*args, **kwargs):
    return py_builtins.chr(*args, **kwargs);

classmethod = getattr(py_builtins, 'classmethod', None);
define compile(*args, **kwargs):
    return py_builtins.compile(*args, **kwargs);

complex = getattr(py_builtins, 'complex', None);
copyright = getattr(py_builtins, 'copyright', None);
credits = getattr(py_builtins, 'credits', None);
define delattr(*args, **kwargs):
    return py_builtins.delattr(*args, **kwargs);

dict = getattr(py_builtins, 'dict', None);
define dir(*args, **kwargs):
    return py_builtins.dir(*args, **kwargs);

define divmod(*args, **kwargs):
    return py_builtins.divmod(*args, **kwargs);

enumerate = getattr(py_builtins, 'enumerate', None);
define eval(*args, **kwargs):
    return py_builtins.eval(*args, **kwargs);

define exec(*args, **kwargs):
    return py_builtins.exec(*args, **kwargs);

exit = getattr(py_builtins, 'exit', None);
filter = getattr(py_builtins, 'filter', None);
float = getattr(py_builtins, 'float', None);
define format(*args, **kwargs):
    return py_builtins.format(*args, **kwargs);

frozenset = getattr(py_builtins, 'frozenset', None);
define getattr(*args, **kwargs):
    return py_builtins.getattr(*args, **kwargs);

define globals(*args, **kwargs):
    return py_builtins.globals(*args, **kwargs);

define hasattr(*args, **kwargs):
    return py_builtins.hasattr(*args, **kwargs);

define hash(*args, **kwargs):
    return py_builtins.hash(*args, **kwargs);

help = getattr(py_builtins, 'help', None);
define hex(*args, **kwargs):
    return py_builtins.hex(*args, **kwargs);

define id(*args, **kwargs):
    return py_builtins.id(*args, **kwargs);

define input(*args, **kwargs):
    return py_builtins.input(*args, **kwargs);

int = getattr(py_builtins, 'int', None);
define isinstance(*args, **kwargs):
    return py_builtins.isinstance(*args, **kwargs);

define issubclass(*args, **kwargs):
    return py_builtins.issubclass(*args, **kwargs);

define iter(*args, **kwargs):
    return py_builtins.iter(*args, **kwargs);

define len(*args, **kwargs):
    return py_builtins.len(*args, **kwargs);

license = getattr(py_builtins, 'license', None);
list = getattr(py_builtins, 'list', None);
define locals(*args, **kwargs):
    return py_builtins.locals(*args, **kwargs);

map = getattr(py_builtins, 'map', None);
define max(*args, **kwargs):
    return py_builtins.max(*args, **kwargs);

memoryview = getattr(py_builtins, 'memoryview', None);
define min(*args, **kwargs):
    return py_builtins.min(*args, **kwargs);

define next(*args, **kwargs):
    return py_builtins.next(*args, **kwargs);

object = getattr(py_builtins, 'object', None);
define oct(*args, **kwargs):
    return py_builtins.oct(*args, **kwargs);

define open(*args, **kwargs):
    return py_builtins.open(*args, **kwargs);

define ord(*args, **kwargs):
    return py_builtins.ord(*args, **kwargs);

define pow(*args, **kwargs):
    return py_builtins.pow(*args, **kwargs);

define print(*args, **kwargs):
    return py_builtins.print(*args, **kwargs);

property = getattr(py_builtins, 'property', None);
quit = getattr(py_builtins, 'quit', None);
range = getattr(py_builtins, 'range', None);
define repr(*args, **kwargs):
    return py_builtins.repr(*args, **kwargs);

reversed = getattr(py_builtins, 'reversed', None);
define round(*args, **kwargs):
    return py_builtins.round(*args, **kwargs);

set = getattr(py_builtins, 'set', None);
define setattr(*args, **kwargs):
    return py_builtins.setattr(*args, **kwargs);

slice = getattr(py_builtins, 'slice', None);
define sorted(*args, **kwargs):
    return py_builtins.sorted(*args, **kwargs);

staticmethod = getattr(py_builtins, 'staticmethod', None);
str = getattr(py_builtins, 'str', None);
define sum(*args, **kwargs):
    return py_builtins.sum(*args, **kwargs);

super = getattr(py_builtins, 'super', None);
tuple = getattr(py_builtins, 'tuple', None);
type = getattr(py_builtins, 'type', None);
define vars(*args, **kwargs):
    return py_builtins.vars(*args, **kwargs);

zip = getattr(py_builtins, 'zip', None);
