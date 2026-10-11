// Earth Language Explicit Wrapper for collections
py_collections = __import__('collections')

ChainMap = getattr(py_collections, 'ChainMap', None);
Counter = getattr(py_collections, 'Counter', None);
OrderedDict = getattr(py_collections, 'OrderedDict', None);
UserDict = getattr(py_collections, 'UserDict', None);
UserList = getattr(py_collections, 'UserList', None);
UserString = getattr(py_collections, 'UserString', None);
abc = getattr(py_collections, 'abc', None);
defaultdict = getattr(py_collections, 'defaultdict', None);
deque = getattr(py_collections, 'deque', None);
heapq = getattr(py_collections, 'heapq', None);
define namedtuple(*args, **kwargs):
    return py_collections.namedtuple(*args, **kwargs);

