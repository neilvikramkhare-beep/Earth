// Earth Language Explicit Wrapper for dbm
py_dbm = __import__('dbm')

error = getattr(py_dbm, 'error', None);
io = getattr(py_dbm, 'io', None);
ndbm = getattr(py_dbm, 'ndbm', None);
define open(*args, **kwargs):
    return py_dbm.open(*args, **kwargs);

os = getattr(py_dbm, 'os', None);
struct = getattr(py_dbm, 'struct', None);
sys = getattr(py_dbm, 'sys', None);
define whichdb(*args, **kwargs):
    return py_dbm.whichdb(*args, **kwargs);

