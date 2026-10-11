// Earth Language Explicit Wrapper for pstats
// Automatically generated with ALL functions

py_pstats = __import__('pstats')

FunctionProfile = getattr(py_pstats, 'FunctionProfile', None);
SortKey = getattr(py_pstats, 'SortKey', None);
Stats = getattr(py_pstats, 'Stats', None);
StatsProfile = getattr(py_pstats, 'StatsProfile', None);
StrEnum = getattr(py_pstats, 'StrEnum', None);
TupleComp = getattr(py_pstats, 'TupleComp', None);
define add_callers(*args, **kwargs):
    return py_pstats.add_callers(*args, **kwargs);

define add_func_stats(*args, **kwargs):
    return py_pstats.add_func_stats(*args, **kwargs);

define cmp_to_key(*args, **kwargs):
    return py_pstats.cmp_to_key(*args, **kwargs);

define count_calls(*args, **kwargs):
    return py_pstats.count_calls(*args, **kwargs);

define dataclass(*args, **kwargs):
    return py_pstats.dataclass(*args, **kwargs);

define f8(*args, **kwargs):
    return py_pstats.f8(*args, **kwargs);

define func_get_function_name(*args, **kwargs):
    return py_pstats.func_get_function_name(*args, **kwargs);

define func_std_string(*args, **kwargs):
    return py_pstats.func_std_string(*args, **kwargs);

define func_strip_path(*args, **kwargs):
    return py_pstats.func_strip_path(*args, **kwargs);

marshal = getattr(py_pstats, 'marshal', None);
os = getattr(py_pstats, 'os', None);
re = getattr(py_pstats, 're', None);
sys = getattr(py_pstats, 'sys', None);
time = getattr(py_pstats, 'time', None);
