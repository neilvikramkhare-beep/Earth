// Earth Language Explicit Wrapper for ast
// Automatically generated with ALL functions

py_ast = __import__('ast')

AST = getattr(py_ast, 'AST', None);
Add = getattr(py_ast, 'Add', None);
And = getattr(py_ast, 'And', None);
AnnAssign = getattr(py_ast, 'AnnAssign', None);
Assert = getattr(py_ast, 'Assert', None);
Assign = getattr(py_ast, 'Assign', None);
AsyncFor = getattr(py_ast, 'AsyncFor', None);
AsyncFunctionDef = getattr(py_ast, 'AsyncFunctionDef', None);
AsyncWith = getattr(py_ast, 'AsyncWith', None);
Attribute = getattr(py_ast, 'Attribute', None);
AugAssign = getattr(py_ast, 'AugAssign', None);
AugLoad = getattr(py_ast, 'AugLoad', None);
AugStore = getattr(py_ast, 'AugStore', None);
Await = getattr(py_ast, 'Await', None);
BinOp = getattr(py_ast, 'BinOp', None);
BitAnd = getattr(py_ast, 'BitAnd', None);
BitOr = getattr(py_ast, 'BitOr', None);
BitXor = getattr(py_ast, 'BitXor', None);
BoolOp = getattr(py_ast, 'BoolOp', None);
Break = getattr(py_ast, 'Break', None);
Call = getattr(py_ast, 'Call', None);
ClassDef = getattr(py_ast, 'ClassDef', None);
Compare = getattr(py_ast, 'Compare', None);
Constant = getattr(py_ast, 'Constant', None);
Continue = getattr(py_ast, 'Continue', None);
Del = getattr(py_ast, 'Del', None);
Delete = getattr(py_ast, 'Delete', None);
Dict = getattr(py_ast, 'Dict', None);
DictComp = getattr(py_ast, 'DictComp', None);
Div = getattr(py_ast, 'Div', None);
Eq = getattr(py_ast, 'Eq', None);
ExceptHandler = getattr(py_ast, 'ExceptHandler', None);
Expr = getattr(py_ast, 'Expr', None);
Expression = getattr(py_ast, 'Expression', None);
ExtSlice = getattr(py_ast, 'ExtSlice', None);
FloorDiv = getattr(py_ast, 'FloorDiv', None);
For = getattr(py_ast, 'For', None);
FormattedValue = getattr(py_ast, 'FormattedValue', None);
FunctionDef = getattr(py_ast, 'FunctionDef', None);
FunctionType = getattr(py_ast, 'FunctionType', None);
GeneratorExp = getattr(py_ast, 'GeneratorExp', None);
Global = getattr(py_ast, 'Global', None);
Gt = getattr(py_ast, 'Gt', None);
GtE = getattr(py_ast, 'GtE', None);
If = getattr(py_ast, 'If', None);
IfExp = getattr(py_ast, 'IfExp', None);
Import = getattr(py_ast, 'Import', None);
ImportFrom = getattr(py_ast, 'ImportFrom', None);
In = getattr(py_ast, 'In', None);
Index = getattr(py_ast, 'Index', None);
Interactive = getattr(py_ast, 'Interactive', None);
Interpolation = getattr(py_ast, 'Interpolation', None);
Invert = getattr(py_ast, 'Invert', None);
Is = getattr(py_ast, 'Is', None);
IsNot = getattr(py_ast, 'IsNot', None);
JoinedStr = getattr(py_ast, 'JoinedStr', None);
LShift = getattr(py_ast, 'LShift', None);
Lambda = getattr(py_ast, 'Lambda', None);
List = getattr(py_ast, 'List', None);
ListComp = getattr(py_ast, 'ListComp', None);
Load = getattr(py_ast, 'Load', None);
Lt = getattr(py_ast, 'Lt', None);
LtE = getattr(py_ast, 'LtE', None);
MatMult = getattr(py_ast, 'MatMult', None);
Match = getattr(py_ast, 'Match', None);
MatchAs = getattr(py_ast, 'MatchAs', None);
MatchClass = getattr(py_ast, 'MatchClass', None);
MatchMapping = getattr(py_ast, 'MatchMapping', None);
MatchOr = getattr(py_ast, 'MatchOr', None);
MatchSequence = getattr(py_ast, 'MatchSequence', None);
MatchSingleton = getattr(py_ast, 'MatchSingleton', None);
MatchStar = getattr(py_ast, 'MatchStar', None);
MatchValue = getattr(py_ast, 'MatchValue', None);
Mod = getattr(py_ast, 'Mod', None);
Module = getattr(py_ast, 'Module', None);
Mult = getattr(py_ast, 'Mult', None);
Name = getattr(py_ast, 'Name', None);
NamedExpr = getattr(py_ast, 'NamedExpr', None);
NodeTransformer = getattr(py_ast, 'NodeTransformer', None);
NodeVisitor = getattr(py_ast, 'NodeVisitor', None);
Nonlocal = getattr(py_ast, 'Nonlocal', None);
Not = getattr(py_ast, 'Not', None);
NotEq = getattr(py_ast, 'NotEq', None);
NotIn = getattr(py_ast, 'NotIn', None);
Or = getattr(py_ast, 'Or', None);
Param = getattr(py_ast, 'Param', None);
ParamSpec = getattr(py_ast, 'ParamSpec', None);
Pass = getattr(py_ast, 'Pass', None);
Pow = getattr(py_ast, 'Pow', None);
PyCF_ALLOW_TOP_LEVEL_AWAIT = getattr(py_ast, 'PyCF_ALLOW_TOP_LEVEL_AWAIT', None);
PyCF_ONLY_AST = getattr(py_ast, 'PyCF_ONLY_AST', None);
PyCF_OPTIMIZED_AST = getattr(py_ast, 'PyCF_OPTIMIZED_AST', None);
PyCF_TYPE_COMMENTS = getattr(py_ast, 'PyCF_TYPE_COMMENTS', None);
RShift = getattr(py_ast, 'RShift', None);
Raise = getattr(py_ast, 'Raise', None);
Return = getattr(py_ast, 'Return', None);
Set = getattr(py_ast, 'Set', None);
SetComp = getattr(py_ast, 'SetComp', None);
Slice = getattr(py_ast, 'Slice', None);
Starred = getattr(py_ast, 'Starred', None);
Store = getattr(py_ast, 'Store', None);
Sub = getattr(py_ast, 'Sub', None);
Subscript = getattr(py_ast, 'Subscript', None);
Suite = getattr(py_ast, 'Suite', None);
TemplateStr = getattr(py_ast, 'TemplateStr', None);
Try = getattr(py_ast, 'Try', None);
TryStar = getattr(py_ast, 'TryStar', None);
Tuple = getattr(py_ast, 'Tuple', None);
TypeAlias = getattr(py_ast, 'TypeAlias', None);
TypeIgnore = getattr(py_ast, 'TypeIgnore', None);
TypeVar = getattr(py_ast, 'TypeVar', None);
TypeVarTuple = getattr(py_ast, 'TypeVarTuple', None);
UAdd = getattr(py_ast, 'UAdd', None);
USub = getattr(py_ast, 'USub', None);
UnaryOp = getattr(py_ast, 'UnaryOp', None);
While = getattr(py_ast, 'While', None);
With = getattr(py_ast, 'With', None);
Yield = getattr(py_ast, 'Yield', None);
YieldFrom = getattr(py_ast, 'YieldFrom', None);
alias = getattr(py_ast, 'alias', None);
arg = getattr(py_ast, 'arg', None);
arguments = getattr(py_ast, 'arguments', None);
boolop = getattr(py_ast, 'boolop', None);
cmpop = getattr(py_ast, 'cmpop', None);
define compare(*args, **kwargs):
    return py_ast.compare(*args, **kwargs);

comprehension = getattr(py_ast, 'comprehension', None);
define copy_location(*args, **kwargs):
    return py_ast.copy_location(*args, **kwargs);

define dump(*args, **kwargs):
    return py_ast.dump(*args, **kwargs);

excepthandler = getattr(py_ast, 'excepthandler', None);
expr = getattr(py_ast, 'expr', None);
expr_context = getattr(py_ast, 'expr_context', None);
define fix_missing_locations(*args, **kwargs):
    return py_ast.fix_missing_locations(*args, **kwargs);

define get_docstring(*args, **kwargs):
    return py_ast.get_docstring(*args, **kwargs);

define get_source_segment(*args, **kwargs):
    return py_ast.get_source_segment(*args, **kwargs);

define increment_lineno(*args, **kwargs):
    return py_ast.increment_lineno(*args, **kwargs);

define iter_child_nodes(*args, **kwargs):
    return py_ast.iter_child_nodes(*args, **kwargs);

define iter_fields(*args, **kwargs):
    return py_ast.iter_fields(*args, **kwargs);

keyword = getattr(py_ast, 'keyword', None);
define literal_eval(*args, **kwargs):
    return py_ast.literal_eval(*args, **kwargs);

define main(*args, **kwargs):
    return py_ast.main(*args, **kwargs);

match_case = getattr(py_ast, 'match_case', None);
mod = getattr(py_ast, 'mod', None);
operator = getattr(py_ast, 'operator', None);
define parse(*args, **kwargs):
    return py_ast.parse(*args, **kwargs);

pattern = getattr(py_ast, 'pattern', None);
slice = getattr(py_ast, 'slice', None);
stmt = getattr(py_ast, 'stmt', None);
type_ignore = getattr(py_ast, 'type_ignore', None);
type_param = getattr(py_ast, 'type_param', None);
unaryop = getattr(py_ast, 'unaryop', None);
define unparse(*args, **kwargs):
    return py_ast.unparse(*args, **kwargs);

define walk(*args, **kwargs):
    return py_ast.walk(*args, **kwargs);

withitem = getattr(py_ast, 'withitem', None);
