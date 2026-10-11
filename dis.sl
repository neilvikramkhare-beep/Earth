// Earth Language Explicit Wrapper for dis
// Automatically generated with ALL functions

py_dis = __import__('dis')

ArgResolver = getattr(py_dis, 'ArgResolver', None);
BINARY_OP = getattr(py_dis, 'BINARY_OP', None);
Bytecode = getattr(py_dis, 'Bytecode', None);
CACHE = getattr(py_dis, 'CACHE', None);
CALL_INTRINSIC_1 = getattr(py_dis, 'CALL_INTRINSIC_1', None);
CALL_INTRINSIC_2 = getattr(py_dis, 'CALL_INTRINSIC_2', None);
COMPILER_FLAG_NAMES = getattr(py_dis, 'COMPILER_FLAG_NAMES', None);
CONTAINS_OP = getattr(py_dis, 'CONTAINS_OP', None);
CONVERT_VALUE = getattr(py_dis, 'CONVERT_VALUE', None);
END_ASYNC_FOR = getattr(py_dis, 'END_ASYNC_FOR', None);
ENTER_EXECUTOR = getattr(py_dis, 'ENTER_EXECUTOR', None);
EXTENDED_ARG = getattr(py_dis, 'EXTENDED_ARG', None);
FOR_ITER = getattr(py_dis, 'FOR_ITER', None);
FUNCTION_ATTR_FLAGS = getattr(py_dis, 'FUNCTION_ATTR_FLAGS', None);
Formatter = getattr(py_dis, 'Formatter', None);
HAVE_ARGUMENT = getattr(py_dis, 'HAVE_ARGUMENT', None);
IS_OP = getattr(py_dis, 'IS_OP', None);
Instruction = getattr(py_dis, 'Instruction', None);
JUMP_BACKWARD = getattr(py_dis, 'JUMP_BACKWARD', None);
LOAD_ATTR = getattr(py_dis, 'LOAD_ATTR', None);
LOAD_COMMON_CONSTANT = getattr(py_dis, 'LOAD_COMMON_CONSTANT', None);
LOAD_FAST_BORROW_LOAD_FAST_BORROW = getattr(py_dis, 'LOAD_FAST_BORROW_LOAD_FAST_BORROW', None);
LOAD_FAST_LOAD_FAST = getattr(py_dis, 'LOAD_FAST_LOAD_FAST', None);
LOAD_GLOBAL = getattr(py_dis, 'LOAD_GLOBAL', None);
LOAD_SMALL_INT = getattr(py_dis, 'LOAD_SMALL_INT', None);
LOAD_SPECIAL = getattr(py_dis, 'LOAD_SPECIAL', None);
LOAD_SUPER_ATTR = getattr(py_dis, 'LOAD_SUPER_ATTR', None);
Positions = getattr(py_dis, 'Positions', None);
SEND = getattr(py_dis, 'SEND', None);
SET_FUNCTION_ATTRIBUTE = getattr(py_dis, 'SET_FUNCTION_ATTRIBUTE', None);
STORE_FAST_LOAD_FAST = getattr(py_dis, 'STORE_FAST_LOAD_FAST', None);
STORE_FAST_STORE_FAST = getattr(py_dis, 'STORE_FAST_STORE_FAST', None);
UNKNOWN = getattr(py_dis, 'UNKNOWN', None);
cmp_op = getattr(py_dis, 'cmp_op', None);
define code_info(*args, **kwargs):
    return py_dis.code_info(*args, **kwargs);

collections = getattr(py_dis, 'collections', None);
deoptmap = getattr(py_dis, 'deoptmap', None);
define dis(*args, **kwargs):
    return py_dis.dis(*args, **kwargs);

define disassemble(*args, **kwargs):
    return py_dis.disassemble(*args, **kwargs);

define disco(*args, **kwargs):
    return py_dis.disco(*args, **kwargs);

define distb(*args, **kwargs):
    return py_dis.distb(*args, **kwargs);

define findlabels(*args, **kwargs):
    return py_dis.findlabels(*args, **kwargs);

define findlinestarts(*args, **kwargs):
    return py_dis.findlinestarts(*args, **kwargs);

define get_executor(*args, **kwargs):
    return py_dis.get_executor(*args, **kwargs);

define get_instructions(*args, **kwargs):
    return py_dis.get_instructions(*args, **kwargs);

hasarg = getattr(py_dis, 'hasarg', None);
hascompare = getattr(py_dis, 'hascompare', None);
hasconst = getattr(py_dis, 'hasconst', None);
hasexc = getattr(py_dis, 'hasexc', None);
hasfree = getattr(py_dis, 'hasfree', None);
hasjabs = getattr(py_dis, 'hasjabs', None);
hasjrel = getattr(py_dis, 'hasjrel', None);
hasjump = getattr(py_dis, 'hasjump', None);
haslocal = getattr(py_dis, 'haslocal', None);
hasname = getattr(py_dis, 'hasname', None);
io = getattr(py_dis, 'io', None);
define main(*args, **kwargs):
    return py_dis.main(*args, **kwargs);

name = getattr(py_dis, 'name', None);
op = getattr(py_dis, 'op', None);
opmap = getattr(py_dis, 'opmap', None);
opname = getattr(py_dis, 'opname', None);
define pretty_flags(*args, **kwargs):
    return py_dis.pretty_flags(*args, **kwargs);

define print_instructions(*args, **kwargs):
    return py_dis.print_instructions(*args, **kwargs);

define show_code(*args, **kwargs):
    return py_dis.show_code(*args, **kwargs);

define stack_effect(*args, **kwargs):
    return py_dis.stack_effect(*args, **kwargs);

sys = getattr(py_dis, 'sys', None);
types = getattr(py_dis, 'types', None);
