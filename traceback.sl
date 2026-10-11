// Earth Language Explicit Wrapper for traceback
// Automatically generated with ALL functions

py_traceback = __import__('traceback')

BUILTIN_EXCEPTION_LIMIT = getattr(py_traceback, 'BUILTIN_EXCEPTION_LIMIT', None);
FrameSummary = getattr(py_traceback, 'FrameSummary', None);
StackSummary = getattr(py_traceback, 'StackSummary', None);
TracebackException = getattr(py_traceback, 'TracebackException', None);
define clear_frames(*args, **kwargs):
    return py_traceback.clear_frames(*args, **kwargs);

codeop = getattr(py_traceback, 'codeop', None);
collections = getattr(py_traceback, 'collections', None);
define extract_stack(*args, **kwargs):
    return py_traceback.extract_stack(*args, **kwargs);

define extract_tb(*args, **kwargs):
    return py_traceback.extract_tb(*args, **kwargs);

define format_exc(*args, **kwargs):
    return py_traceback.format_exc(*args, **kwargs);

define format_exception(*args, **kwargs):
    return py_traceback.format_exception(*args, **kwargs);

define format_exception_only(*args, **kwargs):
    return py_traceback.format_exception_only(*args, **kwargs);

define format_list(*args, **kwargs):
    return py_traceback.format_list(*args, **kwargs);

define format_stack(*args, **kwargs):
    return py_traceback.format_stack(*args, **kwargs);

define format_tb(*args, **kwargs):
    return py_traceback.format_tb(*args, **kwargs);

io = getattr(py_traceback, 'io', None);
itertools = getattr(py_traceback, 'itertools', None);
keyword = getattr(py_traceback, 'keyword', None);
linecache = getattr(py_traceback, 'linecache', None);
define print_exc(*args, **kwargs):
    return py_traceback.print_exc(*args, **kwargs);

define print_exception(*args, **kwargs):
    return py_traceback.print_exception(*args, **kwargs);

define print_last(*args, **kwargs):
    return py_traceback.print_last(*args, **kwargs);

define print_list(*args, **kwargs):
    return py_traceback.print_list(*args, **kwargs);

define print_stack(*args, **kwargs):
    return py_traceback.print_stack(*args, **kwargs);

define print_tb(*args, **kwargs):
    return py_traceback.print_tb(*args, **kwargs);

suppress = getattr(py_traceback, 'suppress', None);
sys = getattr(py_traceback, 'sys', None);
textwrap = getattr(py_traceback, 'textwrap', None);
tokenize = getattr(py_traceback, 'tokenize', None);
define walk_stack(*args, **kwargs):
    return py_traceback.walk_stack(*args, **kwargs);

define walk_tb(*args, **kwargs):
    return py_traceback.walk_tb(*args, **kwargs);

warnings = getattr(py_traceback, 'warnings', None);
