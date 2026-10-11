// Earth Language Explicit Wrapper for opcode
// Automatically generated with ALL functions

py_opcode = __import__('opcode')

EXTENDED_ARG = getattr(py_opcode, 'EXTENDED_ARG', None);
HAVE_ARGUMENT = getattr(py_opcode, 'HAVE_ARGUMENT', None);
MIN_INSTRUMENTED_OPCODE = getattr(py_opcode, 'MIN_INSTRUMENTED_OPCODE', None);
builtins = getattr(py_opcode, 'builtins', None);
cmp_op = getattr(py_opcode, 'cmp_op', None);
hasarg = getattr(py_opcode, 'hasarg', None);
hascompare = getattr(py_opcode, 'hascompare', None);
hasconst = getattr(py_opcode, 'hasconst', None);
hasexc = getattr(py_opcode, 'hasexc', None);
hasfree = getattr(py_opcode, 'hasfree', None);
hasjabs = getattr(py_opcode, 'hasjabs', None);
hasjrel = getattr(py_opcode, 'hasjrel', None);
hasjump = getattr(py_opcode, 'hasjump', None);
haslocal = getattr(py_opcode, 'haslocal', None);
hasname = getattr(py_opcode, 'hasname', None);
i = getattr(py_opcode, 'i', None);
m = getattr(py_opcode, 'm', None);
op = getattr(py_opcode, 'op', None);
opmap = getattr(py_opcode, 'opmap', None);
opname = getattr(py_opcode, 'opname', None);
define stack_effect(*args, **kwargs):
    return py_opcode.stack_effect(*args, **kwargs);

