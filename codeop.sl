// Earth Language Explicit Wrapper for codeop
py_codeop = __import__('codeop')

CommandCompiler = getattr(py_codeop, 'CommandCompiler', None);
Compile = getattr(py_codeop, 'Compile', None);
PyCF_ALLOW_INCOMPLETE_INPUT = getattr(py_codeop, 'PyCF_ALLOW_INCOMPLETE_INPUT', None);
PyCF_DONT_IMPLY_DEDENT = getattr(py_codeop, 'PyCF_DONT_IMPLY_DEDENT', None);
PyCF_ONLY_AST = getattr(py_codeop, 'PyCF_ONLY_AST', None);
define compile_command(*args, **kwargs):
    return py_codeop.compile_command(*args, **kwargs);

warnings = getattr(py_codeop, 'warnings', None);
