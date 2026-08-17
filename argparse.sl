// SL Package definition for argparse
package argparse;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('argparse')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('argparse.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'argparse' has no attribute '" + name + "'")

// --- Built-in Python functions ---
define builtin_ArithmeticError(*args):
    try:
        return builtins.getattr(builtins, 'ArithmeticError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ArithmeticError')()
globals()['ArithmeticError'] = builtin_ArithmeticError

define builtin_AssertionError(*args):
    try:
        return builtins.getattr(builtins, 'AssertionError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'AssertionError')()
globals()['AssertionError'] = builtin_AssertionError

define builtin_AttributeError(*args):
    try:
        return builtins.getattr(builtins, 'AttributeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'AttributeError')()
globals()['AttributeError'] = builtin_AttributeError

define builtin_BaseException(*args):
    try:
        return builtins.getattr(builtins, 'BaseException')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BaseException')()
globals()['BaseException'] = builtin_BaseException

define builtin_BaseExceptionGroup(*args):
    try:
        return builtins.getattr(builtins, 'BaseExceptionGroup')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BaseExceptionGroup')()
globals()['BaseExceptionGroup'] = builtin_BaseExceptionGroup

define builtin_BlockingIOError(*args):
    try:
        return builtins.getattr(builtins, 'BlockingIOError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BlockingIOError')()
globals()['BlockingIOError'] = builtin_BlockingIOError

define builtin_BrokenPipeError(*args):
    try:
        return builtins.getattr(builtins, 'BrokenPipeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BrokenPipeError')()
globals()['BrokenPipeError'] = builtin_BrokenPipeError

define builtin_BufferError(*args):
    try:
        return builtins.getattr(builtins, 'BufferError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BufferError')()
globals()['BufferError'] = builtin_BufferError

define builtin_BytesWarning(*args):
    try:
        return builtins.getattr(builtins, 'BytesWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'BytesWarning')()
globals()['BytesWarning'] = builtin_BytesWarning

define builtin_ChildProcessError(*args):
    try:
        return builtins.getattr(builtins, 'ChildProcessError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ChildProcessError')()
globals()['ChildProcessError'] = builtin_ChildProcessError

define builtin_ConnectionAbortedError(*args):
    try:
        return builtins.getattr(builtins, 'ConnectionAbortedError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ConnectionAbortedError')()
globals()['ConnectionAbortedError'] = builtin_ConnectionAbortedError

define builtin_ConnectionError(*args):
    try:
        return builtins.getattr(builtins, 'ConnectionError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ConnectionError')()
globals()['ConnectionError'] = builtin_ConnectionError

define builtin_ConnectionRefusedError(*args):
    try:
        return builtins.getattr(builtins, 'ConnectionRefusedError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ConnectionRefusedError')()
globals()['ConnectionRefusedError'] = builtin_ConnectionRefusedError

define builtin_ConnectionResetError(*args):
    try:
        return builtins.getattr(builtins, 'ConnectionResetError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ConnectionResetError')()
globals()['ConnectionResetError'] = builtin_ConnectionResetError

define builtin_DeprecationWarning(*args):
    try:
        return builtins.getattr(builtins, 'DeprecationWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'DeprecationWarning')()
globals()['DeprecationWarning'] = builtin_DeprecationWarning

define builtin_EOFError(*args):
    try:
        return builtins.getattr(builtins, 'EOFError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'EOFError')()
globals()['EOFError'] = builtin_EOFError

define builtin_Ellipsis(*args):
    try:
        return builtins.getattr(builtins, 'Ellipsis')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'Ellipsis')()
globals()['Ellipsis'] = builtin_Ellipsis

define builtin_EncodingWarning(*args):
    try:
        return builtins.getattr(builtins, 'EncodingWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'EncodingWarning')()
globals()['EncodingWarning'] = builtin_EncodingWarning

define builtin_EnvironmentError(*args):
    try:
        return builtins.getattr(builtins, 'EnvironmentError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'EnvironmentError')()
globals()['EnvironmentError'] = builtin_EnvironmentError

define builtin_Exception(*args):
    try:
        return builtins.getattr(builtins, 'Exception')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'Exception')()
globals()['Exception'] = builtin_Exception

define builtin_ExceptionGroup(*args):
    try:
        return builtins.getattr(builtins, 'ExceptionGroup')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ExceptionGroup')()
globals()['ExceptionGroup'] = builtin_ExceptionGroup

define builtin_False(*args):
    try:
        return builtins.getattr(builtins, 'False')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'False')()
globals()['False'] = builtin_False

define builtin_FileExistsError(*args):
    try:
        return builtins.getattr(builtins, 'FileExistsError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'FileExistsError')()
globals()['FileExistsError'] = builtin_FileExistsError

define builtin_FileNotFoundError(*args):
    try:
        return builtins.getattr(builtins, 'FileNotFoundError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'FileNotFoundError')()
globals()['FileNotFoundError'] = builtin_FileNotFoundError

define builtin_FloatingPointError(*args):
    try:
        return builtins.getattr(builtins, 'FloatingPointError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'FloatingPointError')()
globals()['FloatingPointError'] = builtin_FloatingPointError

define builtin_FutureWarning(*args):
    try:
        return builtins.getattr(builtins, 'FutureWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'FutureWarning')()
globals()['FutureWarning'] = builtin_FutureWarning

define builtin_GeneratorExit(*args):
    try:
        return builtins.getattr(builtins, 'GeneratorExit')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'GeneratorExit')()
globals()['GeneratorExit'] = builtin_GeneratorExit

define builtin_IOError(*args):
    try:
        return builtins.getattr(builtins, 'IOError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'IOError')()
globals()['IOError'] = builtin_IOError

define builtin_ImportError(*args):
    try:
        return builtins.getattr(builtins, 'ImportError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ImportError')()
globals()['ImportError'] = builtin_ImportError

define builtin_ImportWarning(*args):
    try:
        return builtins.getattr(builtins, 'ImportWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ImportWarning')()
globals()['ImportWarning'] = builtin_ImportWarning

define builtin_IndentationError(*args):
    try:
        return builtins.getattr(builtins, 'IndentationError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'IndentationError')()
globals()['IndentationError'] = builtin_IndentationError

define builtin_IndexError(*args):
    try:
        return builtins.getattr(builtins, 'IndexError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'IndexError')()
globals()['IndexError'] = builtin_IndexError

define builtin_InterruptedError(*args):
    try:
        return builtins.getattr(builtins, 'InterruptedError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'InterruptedError')()
globals()['InterruptedError'] = builtin_InterruptedError

define builtin_IsADirectoryError(*args):
    try:
        return builtins.getattr(builtins, 'IsADirectoryError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'IsADirectoryError')()
globals()['IsADirectoryError'] = builtin_IsADirectoryError

define builtin_KeyError(*args):
    try:
        return builtins.getattr(builtins, 'KeyError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'KeyError')()
globals()['KeyError'] = builtin_KeyError

define builtin_KeyboardInterrupt(*args):
    try:
        return builtins.getattr(builtins, 'KeyboardInterrupt')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'KeyboardInterrupt')()
globals()['KeyboardInterrupt'] = builtin_KeyboardInterrupt

define builtin_LookupError(*args):
    try:
        return builtins.getattr(builtins, 'LookupError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'LookupError')()
globals()['LookupError'] = builtin_LookupError

define builtin_MemoryError(*args):
    try:
        return builtins.getattr(builtins, 'MemoryError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'MemoryError')()
globals()['MemoryError'] = builtin_MemoryError

define builtin_ModuleNotFoundError(*args):
    try:
        return builtins.getattr(builtins, 'ModuleNotFoundError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ModuleNotFoundError')()
globals()['ModuleNotFoundError'] = builtin_ModuleNotFoundError

define builtin_NameError(*args):
    try:
        return builtins.getattr(builtins, 'NameError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'NameError')()
globals()['NameError'] = builtin_NameError

define builtin_None(*args):
    try:
        return builtins.getattr(builtins, 'None')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'None')()
globals()['None'] = builtin_None

define builtin_NotADirectoryError(*args):
    try:
        return builtins.getattr(builtins, 'NotADirectoryError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'NotADirectoryError')()
globals()['NotADirectoryError'] = builtin_NotADirectoryError

define builtin_NotImplemented(*args):
    try:
        return builtins.getattr(builtins, 'NotImplemented')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'NotImplemented')()
globals()['NotImplemented'] = builtin_NotImplemented

define builtin_NotImplementedError(*args):
    try:
        return builtins.getattr(builtins, 'NotImplementedError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'NotImplementedError')()
globals()['NotImplementedError'] = builtin_NotImplementedError

define builtin_OSError(*args):
    try:
        return builtins.getattr(builtins, 'OSError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'OSError')()
globals()['OSError'] = builtin_OSError

define builtin_OverflowError(*args):
    try:
        return builtins.getattr(builtins, 'OverflowError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'OverflowError')()
globals()['OverflowError'] = builtin_OverflowError

define builtin_PendingDeprecationWarning(*args):
    try:
        return builtins.getattr(builtins, 'PendingDeprecationWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'PendingDeprecationWarning')()
globals()['PendingDeprecationWarning'] = builtin_PendingDeprecationWarning

define builtin_PermissionError(*args):
    try:
        return builtins.getattr(builtins, 'PermissionError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'PermissionError')()
globals()['PermissionError'] = builtin_PermissionError

define builtin_ProcessLookupError(*args):
    try:
        return builtins.getattr(builtins, 'ProcessLookupError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ProcessLookupError')()
globals()['ProcessLookupError'] = builtin_ProcessLookupError

define builtin_PythonFinalizationError(*args):
    try:
        return builtins.getattr(builtins, 'PythonFinalizationError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'PythonFinalizationError')()
globals()['PythonFinalizationError'] = builtin_PythonFinalizationError

define builtin_RecursionError(*args):
    try:
        return builtins.getattr(builtins, 'RecursionError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'RecursionError')()
globals()['RecursionError'] = builtin_RecursionError

define builtin_ReferenceError(*args):
    try:
        return builtins.getattr(builtins, 'ReferenceError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ReferenceError')()
globals()['ReferenceError'] = builtin_ReferenceError

define builtin_ResourceWarning(*args):
    try:
        return builtins.getattr(builtins, 'ResourceWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ResourceWarning')()
globals()['ResourceWarning'] = builtin_ResourceWarning

define builtin_RuntimeError(*args):
    try:
        return builtins.getattr(builtins, 'RuntimeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'RuntimeError')()
globals()['RuntimeError'] = builtin_RuntimeError

define builtin_RuntimeWarning(*args):
    try:
        return builtins.getattr(builtins, 'RuntimeWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'RuntimeWarning')()
globals()['RuntimeWarning'] = builtin_RuntimeWarning

define builtin_StopAsyncIteration(*args):
    try:
        return builtins.getattr(builtins, 'StopAsyncIteration')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'StopAsyncIteration')()
globals()['StopAsyncIteration'] = builtin_StopAsyncIteration

define builtin_StopIteration(*args):
    try:
        return builtins.getattr(builtins, 'StopIteration')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'StopIteration')()
globals()['StopIteration'] = builtin_StopIteration

define builtin_SyntaxError(*args):
    try:
        return builtins.getattr(builtins, 'SyntaxError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'SyntaxError')()
globals()['SyntaxError'] = builtin_SyntaxError

define builtin_SyntaxWarning(*args):
    try:
        return builtins.getattr(builtins, 'SyntaxWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'SyntaxWarning')()
globals()['SyntaxWarning'] = builtin_SyntaxWarning

define builtin_SystemError(*args):
    try:
        return builtins.getattr(builtins, 'SystemError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'SystemError')()
globals()['SystemError'] = builtin_SystemError

define builtin_SystemExit(*args):
    try:
        return builtins.getattr(builtins, 'SystemExit')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'SystemExit')()
globals()['SystemExit'] = builtin_SystemExit

define builtin_TabError(*args):
    try:
        return builtins.getattr(builtins, 'TabError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'TabError')()
globals()['TabError'] = builtin_TabError

define builtin_TimeoutError(*args):
    try:
        return builtins.getattr(builtins, 'TimeoutError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'TimeoutError')()
globals()['TimeoutError'] = builtin_TimeoutError

define builtin_True(*args):
    try:
        return builtins.getattr(builtins, 'True')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'True')()
globals()['True'] = builtin_True

define builtin_TypeError(*args):
    try:
        return builtins.getattr(builtins, 'TypeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'TypeError')()
globals()['TypeError'] = builtin_TypeError

define builtin_UnboundLocalError(*args):
    try:
        return builtins.getattr(builtins, 'UnboundLocalError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnboundLocalError')()
globals()['UnboundLocalError'] = builtin_UnboundLocalError

define builtin_UnicodeDecodeError(*args):
    try:
        return builtins.getattr(builtins, 'UnicodeDecodeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnicodeDecodeError')()
globals()['UnicodeDecodeError'] = builtin_UnicodeDecodeError

define builtin_UnicodeEncodeError(*args):
    try:
        return builtins.getattr(builtins, 'UnicodeEncodeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnicodeEncodeError')()
globals()['UnicodeEncodeError'] = builtin_UnicodeEncodeError

define builtin_UnicodeError(*args):
    try:
        return builtins.getattr(builtins, 'UnicodeError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnicodeError')()
globals()['UnicodeError'] = builtin_UnicodeError

define builtin_UnicodeTranslateError(*args):
    try:
        return builtins.getattr(builtins, 'UnicodeTranslateError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnicodeTranslateError')()
globals()['UnicodeTranslateError'] = builtin_UnicodeTranslateError

define builtin_UnicodeWarning(*args):
    try:
        return builtins.getattr(builtins, 'UnicodeWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UnicodeWarning')()
globals()['UnicodeWarning'] = builtin_UnicodeWarning

define builtin_UserWarning(*args):
    try:
        return builtins.getattr(builtins, 'UserWarning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'UserWarning')()
globals()['UserWarning'] = builtin_UserWarning

define builtin_ValueError(*args):
    try:
        return builtins.getattr(builtins, 'ValueError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ValueError')()
globals()['ValueError'] = builtin_ValueError

define builtin_Warning(*args):
    try:
        return builtins.getattr(builtins, 'Warning')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'Warning')()
globals()['Warning'] = builtin_Warning

define builtin_WindowsError(*args):
    try:
        return builtins.getattr(builtins, 'WindowsError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'WindowsError')()
globals()['WindowsError'] = builtin_WindowsError

define builtin_ZeroDivisionError(*args):
    try:
        return builtins.getattr(builtins, 'ZeroDivisionError')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ZeroDivisionError')()
globals()['ZeroDivisionError'] = builtin_ZeroDivisionError

define builtin_abs(*args):
    try:
        return builtins.getattr(builtins, 'abs')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'abs')()
globals()['abs'] = builtin_abs

define builtin_aiter(*args):
    try:
        return builtins.getattr(builtins, 'aiter')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'aiter')()
globals()['aiter'] = builtin_aiter

define builtin_all(*args):
    try:
        return builtins.getattr(builtins, 'all')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'all')()
globals()['all'] = builtin_all

define builtin_anext(*args):
    try:
        return builtins.getattr(builtins, 'anext')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'anext')()
globals()['anext'] = builtin_anext

define builtin_any(*args):
    try:
        return builtins.getattr(builtins, 'any')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'any')()
globals()['any'] = builtin_any

define builtin_ascii(*args):
    try:
        return builtins.getattr(builtins, 'ascii')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ascii')()
globals()['ascii'] = builtin_ascii

define builtin_bin(*args):
    try:
        return builtins.getattr(builtins, 'bin')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'bin')()
globals()['bin'] = builtin_bin

define builtin_bool(*args):
    try:
        return builtins.getattr(builtins, 'bool')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'bool')()
globals()['bool'] = builtin_bool

define builtin_breakpoint(*args):
    try:
        return builtins.getattr(builtins, 'breakpoint')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'breakpoint')()
globals()['breakpoint'] = builtin_breakpoint

define builtin_bytearray(*args):
    try:
        return builtins.getattr(builtins, 'bytearray')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'bytearray')()
globals()['bytearray'] = builtin_bytearray

define builtin_bytes(*args):
    try:
        return builtins.getattr(builtins, 'bytes')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'bytes')()
globals()['bytes'] = builtin_bytes

define builtin_callable(*args):
    try:
        return builtins.getattr(builtins, 'callable')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'callable')()
globals()['callable'] = builtin_callable

define builtin_chr(*args):
    try:
        return builtins.getattr(builtins, 'chr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'chr')()
globals()['chr'] = builtin_chr

define builtin_classmethod(*args):
    try:
        return builtins.getattr(builtins, 'classmethod')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'classmethod')()
globals()['classmethod'] = builtin_classmethod

define builtin_compile(*args):
    try:
        return builtins.getattr(builtins, 'compile')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'compile')()
globals()['compile'] = builtin_compile

define builtin_complex(*args):
    try:
        return builtins.getattr(builtins, 'complex')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'complex')()
globals()['complex'] = builtin_complex

define builtin_copyright(*args):
    try:
        return builtins.getattr(builtins, 'copyright')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'copyright')()
globals()['copyright'] = builtin_copyright

define builtin_credits(*args):
    try:
        return builtins.getattr(builtins, 'credits')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'credits')()
globals()['credits'] = builtin_credits

define builtin_delattr(*args):
    try:
        return builtins.getattr(builtins, 'delattr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'delattr')()
globals()['delattr'] = builtin_delattr

define builtin_dict(*args):
    try:
        return builtins.getattr(builtins, 'dict')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'dict')()
globals()['dict'] = builtin_dict

define builtin_dir(*args):
    try:
        return builtins.getattr(builtins, 'dir')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'dir')()
globals()['dir'] = builtin_dir

define builtin_divmod(*args):
    try:
        return builtins.getattr(builtins, 'divmod')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'divmod')()
globals()['divmod'] = builtin_divmod

define builtin_enumerate(*args):
    try:
        return builtins.getattr(builtins, 'enumerate')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'enumerate')()
globals()['enumerate'] = builtin_enumerate

define builtin_eval(*args):
    try:
        return builtins.getattr(builtins, 'eval')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'eval')()
globals()['eval'] = builtin_eval

define builtin_exec(*args):
    try:
        return builtins.getattr(builtins, 'exec')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'exec')()
globals()['exec'] = builtin_exec

define builtin_exit(*args):
    try:
        return builtins.getattr(builtins, 'exit')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'exit')()
globals()['exit'] = builtin_exit

define builtin_filter(*args):
    try:
        return builtins.getattr(builtins, 'filter')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'filter')()
globals()['filter'] = builtin_filter

define builtin_float(*args):
    try:
        return builtins.getattr(builtins, 'float')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'float')()
globals()['float'] = builtin_float

define builtin_format(*args):
    try:
        return builtins.getattr(builtins, 'format')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'format')()
globals()['format'] = builtin_format

define builtin_frozenset(*args):
    try:
        return builtins.getattr(builtins, 'frozenset')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'frozenset')()
globals()['frozenset'] = builtin_frozenset

define builtin_getattr(*args):
    try:
        return builtins.getattr(builtins, 'getattr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'getattr')()
globals()['getattr'] = builtin_getattr

define builtin_globals(*args):
    try:
        return builtins.getattr(builtins, 'globals')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'globals')()
globals()['globals'] = builtin_globals

define builtin_hasattr(*args):
    try:
        return builtins.getattr(builtins, 'hasattr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'hasattr')()
globals()['hasattr'] = builtin_hasattr

define builtin_hash(*args):
    try:
        return builtins.getattr(builtins, 'hash')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'hash')()
globals()['hash'] = builtin_hash

define builtin_help(*args):
    try:
        return builtins.getattr(builtins, 'help')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'help')()
globals()['help'] = builtin_help

define builtin_hex(*args):
    try:
        return builtins.getattr(builtins, 'hex')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'hex')()
globals()['hex'] = builtin_hex

define builtin_id(*args):
    try:
        return builtins.getattr(builtins, 'id')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'id')()
globals()['id'] = builtin_id

define builtin_input(*args):
    try:
        return builtins.getattr(builtins, 'input')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'input')()
globals()['input'] = builtin_input

define builtin_int(*args):
    try:
        return builtins.getattr(builtins, 'int')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'int')()
globals()['int'] = builtin_int

define builtin_isinstance(*args):
    try:
        return builtins.getattr(builtins, 'isinstance')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'isinstance')()
globals()['isinstance'] = builtin_isinstance

define builtin_issubclass(*args):
    try:
        return builtins.getattr(builtins, 'issubclass')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'issubclass')()
globals()['issubclass'] = builtin_issubclass

define builtin_iter(*args):
    try:
        return builtins.getattr(builtins, 'iter')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'iter')()
globals()['iter'] = builtin_iter

define builtin_len(*args):
    try:
        return builtins.getattr(builtins, 'len')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'len')()
globals()['len'] = builtin_len

define builtin_license(*args):
    try:
        return builtins.getattr(builtins, 'license')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'license')()
globals()['license'] = builtin_license

define builtin_list(*args):
    try:
        return builtins.getattr(builtins, 'list')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'list')()
globals()['list'] = builtin_list

define builtin_locals(*args):
    try:
        return builtins.getattr(builtins, 'locals')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'locals')()
globals()['locals'] = builtin_locals

define builtin_map(*args):
    try:
        return builtins.getattr(builtins, 'map')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'map')()
globals()['map'] = builtin_map

define builtin_max(*args):
    try:
        return builtins.getattr(builtins, 'max')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'max')()
globals()['max'] = builtin_max

define builtin_memoryview(*args):
    try:
        return builtins.getattr(builtins, 'memoryview')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'memoryview')()
globals()['memoryview'] = builtin_memoryview

define builtin_min(*args):
    try:
        return builtins.getattr(builtins, 'min')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'min')()
globals()['min'] = builtin_min

define builtin_next(*args):
    try:
        return builtins.getattr(builtins, 'next')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'next')()
globals()['next'] = builtin_next

define builtin_object(*args):
    try:
        return builtins.getattr(builtins, 'object')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'object')()
globals()['object'] = builtin_object

define builtin_oct(*args):
    try:
        return builtins.getattr(builtins, 'oct')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'oct')()
globals()['oct'] = builtin_oct

define builtin_open(*args):
    try:
        return builtins.getattr(builtins, 'open')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'open')()
globals()['open'] = builtin_open

define builtin_ord(*args):
    try:
        return builtins.getattr(builtins, 'ord')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'ord')()
globals()['ord'] = builtin_ord

define builtin_pow(*args):
    try:
        return builtins.getattr(builtins, 'pow')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'pow')()
globals()['pow'] = builtin_pow

define builtin_print(*args):
    try:
        return builtins.getattr(builtins, 'print')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'print')()
globals()['print'] = builtin_print

define builtin_property(*args):
    try:
        return builtins.getattr(builtins, 'property')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'property')()
globals()['property'] = builtin_property

define builtin_quit(*args):
    try:
        return builtins.getattr(builtins, 'quit')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'quit')()
globals()['quit'] = builtin_quit

define builtin_range(*args):
    try:
        return builtins.getattr(builtins, 'range')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'range')()
globals()['range'] = builtin_range

define builtin_repr(*args):
    try:
        return builtins.getattr(builtins, 'repr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'repr')()
globals()['repr'] = builtin_repr

define builtin_reversed(*args):
    try:
        return builtins.getattr(builtins, 'reversed')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'reversed')()
globals()['reversed'] = builtin_reversed

define builtin_round(*args):
    try:
        return builtins.getattr(builtins, 'round')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'round')()
globals()['round'] = builtin_round

define builtin_set(*args):
    try:
        return builtins.getattr(builtins, 'set')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'set')()
globals()['set'] = builtin_set

define builtin_setattr(*args):
    try:
        return builtins.getattr(builtins, 'setattr')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'setattr')()
globals()['setattr'] = builtin_setattr

define builtin_slice(*args):
    try:
        return builtins.getattr(builtins, 'slice')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'slice')()
globals()['slice'] = builtin_slice

define builtin_sorted(*args):
    try:
        return builtins.getattr(builtins, 'sorted')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'sorted')()
globals()['sorted'] = builtin_sorted

define builtin_staticmethod(*args):
    try:
        return builtins.getattr(builtins, 'staticmethod')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'staticmethod')()
globals()['staticmethod'] = builtin_staticmethod

define builtin_str(*args):
    try:
        return builtins.getattr(builtins, 'str')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'str')()
globals()['str'] = builtin_str

define builtin_sum(*args):
    try:
        return builtins.getattr(builtins, 'sum')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'sum')()
globals()['sum'] = builtin_sum

define builtin_super(*args):
    try:
        return builtins.getattr(builtins, 'super')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'super')()
globals()['super'] = builtin_super

define builtin_tuple(*args):
    try:
        return builtins.getattr(builtins, 'tuple')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'tuple')()
globals()['tuple'] = builtin_tuple

define builtin_type(*args):
    try:
        return builtins.getattr(builtins, 'type')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'type')()
globals()['type'] = builtin_type

define builtin_vars(*args):
    try:
        return builtins.getattr(builtins, 'vars')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'vars')()
globals()['vars'] = builtin_vars

define builtin_zip(*args):
    try:
        return builtins.getattr(builtins, 'zip')(*args)
    except builtins.TypeError:
        return builtins.getattr(builtins, 'zip')()
globals()['zip'] = builtin_zip

// --- All the other languages (Graphical Links) ---
// Language: tkinter
define class tkinterWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("tkinter GUI: Starting main loop...")
        self.root.mainloop()

globals()['tkinterWrapper'] = tkinterWrapper

// Language: PyQt
define class PyQtWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("PyQt GUI: Starting main loop...")
        self.root.mainloop()

globals()['PyQtWrapper'] = PyQtWrapper

// Language: awt
define class awtWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("awt GUI: Starting main loop...")
        self.root.mainloop()

globals()['awtWrapper'] = awtWrapper

// Language: swing
define class swingWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("swing GUI: Starting main loop...")
        self.root.mainloop()

globals()['swingWrapper'] = swingWrapper

// Language: fx
define class fxWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("fx GUI: Starting main loop...")
        self.root.mainloop()

globals()['fxWrapper'] = fxWrapper

// Language: spring
define class SpringWrapper:
    define __init__(self):
        pass
    define ModelAndView(self, view, model):
        print("Spring: Rendered", view, "with model", model)
    define HtmlComponent(self, name):
        print("Spring: Rendered HTML component", name)

globals()['SpringWrapper'] = SpringWrapper

// Language: javaee
define class JavaEEWrapper:
    define __init__(self):
        pass
    define JSPRenderer(self, path):
        print("JavaEE: Rendered JSP at", path)
    define JSFComponent(self, name):
        print("JavaEE: Rendered JSF component", name)

globals()['JavaEEWrapper'] = JavaEEWrapper

// Language: turtle
define class TurtleArt:
    define __init__(self):
        _turtle = builtins.__import__('turtle')
        self.t = _turtle.Turtle()
        self.screen = _turtle.Screen()
        
    define draw_square(self, size):
        for i in range(4):
            self.t.forward(size)
            self.t.right(90)
            
    define draw_spiral(self, loops):
        for i in range(loops):
            self.t.forward(i * 10)
            self.t.right(144)
            
    define done(self):
        self.screen.mainloop()

globals()['TurtleArt'] = TurtleArt

// Language: matplotlib
define class PlotHelper:
    define __init__(self):
        self.plt = builtins.__import__('matplotlib.pyplot').pyplot
        
    define line_chart(self, x, y, title):
        self.plt.plot(x, y)
        self.plt.title(title)
        self.plt.show()
        
    define scatter_plot(self, x, y, title):
        self.plt.scatter(x, y)
        self.plt.title(title)
        self.plt.show()

globals()['PlotHelper'] = PlotHelper

// Language: seaborn
define class PlotHelper:
    define __init__(self):
        self.plt = builtins.__import__('matplotlib.pyplot').pyplot
        
    define line_chart(self, x, y, title):
        self.plt.plot(x, y)
        self.plt.title(title)
        self.plt.show()
        
    define scatter_plot(self, x, y, title):
        self.plt.scatter(x, y)
        self.plt.title(title)
        self.plt.show()

globals()['PlotHelper'] = PlotHelper

// Language: opencv-python
define class ImageFilter:
    define __init__(self, path):
        self.path = path
        
    define apply_grayscale(self):
        print("Applying grayscale to", self.path)
        
    define detect_edges(self):
        print("Detecting edges on", self.path)

globals()['ImageFilter'] = ImageFilter

// Language: pillow
define class ImageFilter:
    define __init__(self, path):
        self.path = path
        
    define apply_grayscale(self):
        print("Applying grayscale to", self.path)
        
    define detect_edges(self):
        print("Detecting edges on", self.path)

globals()['ImageFilter'] = ImageFilter

define init():
    pass