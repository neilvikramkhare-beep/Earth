// Earth Language Explicit Wrapper for code
py_code = __import__('code')

CommandCompiler = getattr(py_code, 'CommandCompiler', None);
InteractiveConsole = getattr(py_code, 'InteractiveConsole', None);
InteractiveInterpreter = getattr(py_code, 'InteractiveInterpreter', None);
Quitter = getattr(py_code, 'Quitter', None);
builtins = getattr(py_code, 'builtins', None);
define compile_command(*args, **kwargs):
    return py_code.compile_command(*args, **kwargs);

define interact(*args, **kwargs):
    return py_code.interact(*args, **kwargs);

sys = getattr(py_code, 'sys', None);
traceback = getattr(py_code, 'traceback', None);
