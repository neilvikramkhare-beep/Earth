// Earth Language Explicit Wrapper for contextlib
py_contextlib = __import__('contextlib')

AbstractAsyncContextManager = getattr(py_contextlib, 'AbstractAsyncContextManager', None);
AbstractContextManager = getattr(py_contextlib, 'AbstractContextManager', None);
AsyncContextDecorator = getattr(py_contextlib, 'AsyncContextDecorator', None);
AsyncExitStack = getattr(py_contextlib, 'AsyncExitStack', None);
ContextDecorator = getattr(py_contextlib, 'ContextDecorator', None);
ExitStack = getattr(py_contextlib, 'ExitStack', None);
GenericAlias = getattr(py_contextlib, 'GenericAlias', None);
MethodType = getattr(py_contextlib, 'MethodType', None);
abc = getattr(py_contextlib, 'abc', None);
aclosing = getattr(py_contextlib, 'aclosing', None);
define asynccontextmanager(*args, **kwargs):
    return py_contextlib.asynccontextmanager(*args, **kwargs);

chdir = getattr(py_contextlib, 'chdir', None);
closing = getattr(py_contextlib, 'closing', None);
define contextmanager(*args, **kwargs):
    return py_contextlib.contextmanager(*args, **kwargs);

deque = getattr(py_contextlib, 'deque', None);
nullcontext = getattr(py_contextlib, 'nullcontext', None);
os = getattr(py_contextlib, 'os', None);
redirect_stderr = getattr(py_contextlib, 'redirect_stderr', None);
redirect_stdout = getattr(py_contextlib, 'redirect_stdout', None);
suppress = getattr(py_contextlib, 'suppress', None);
sys = getattr(py_contextlib, 'sys', None);
define wraps(*args, **kwargs):
    return py_contextlib.wraps(*args, **kwargs);

