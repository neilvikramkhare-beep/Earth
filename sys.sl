// Earth Language Explicit Wrapper for sys
// Automatically generated with ALL functions

py_sys = __import__('sys')

define activate_stack_trampoline(*args, **kwargs):
    return py_sys.activate_stack_trampoline(*args, **kwargs);

define addaudithook(*args, **kwargs):
    return py_sys.addaudithook(*args, **kwargs);

api_version = getattr(py_sys, 'api_version', None);
argv = getattr(py_sys, 'argv', None);
define audit(*args, **kwargs):
    return py_sys.audit(*args, **kwargs);

base_exec_prefix = getattr(py_sys, 'base_exec_prefix', None);
base_prefix = getattr(py_sys, 'base_prefix', None);
define breakpointhook(*args, **kwargs):
    return py_sys.breakpointhook(*args, **kwargs);

builtin_module_names = getattr(py_sys, 'builtin_module_names', None);
byteorder = getattr(py_sys, 'byteorder', None);
define call_tracing(*args, **kwargs):
    return py_sys.call_tracing(*args, **kwargs);

copyright = getattr(py_sys, 'copyright', None);
define deactivate_stack_trampoline(*args, **kwargs):
    return py_sys.deactivate_stack_trampoline(*args, **kwargs);

define displayhook(*args, **kwargs):
    return py_sys.displayhook(*args, **kwargs);

dllhandle = getattr(py_sys, 'dllhandle', None);
dont_write_bytecode = getattr(py_sys, 'dont_write_bytecode', None);
define exc_info(*args, **kwargs):
    return py_sys.exc_info(*args, **kwargs);

define excepthook(*args, **kwargs):
    return py_sys.excepthook(*args, **kwargs);

define exception(*args, **kwargs):
    return py_sys.exception(*args, **kwargs);

exec_prefix = getattr(py_sys, 'exec_prefix', None);
executable = getattr(py_sys, 'executable', None);
define exit(*args, **kwargs):
    return py_sys.exit(*args, **kwargs);

flags = getattr(py_sys, 'flags', None);
float_info = getattr(py_sys, 'float_info', None);
float_repr_style = getattr(py_sys, 'float_repr_style', None);
define get_asyncgen_hooks(*args, **kwargs):
    return py_sys.get_asyncgen_hooks(*args, **kwargs);

define get_coroutine_origin_tracking_depth(*args, **kwargs):
    return py_sys.get_coroutine_origin_tracking_depth(*args, **kwargs);

define get_int_max_str_digits(*args, **kwargs):
    return py_sys.get_int_max_str_digits(*args, **kwargs);

define getallocatedblocks(*args, **kwargs):
    return py_sys.getallocatedblocks(*args, **kwargs);

define getdefaultencoding(*args, **kwargs):
    return py_sys.getdefaultencoding(*args, **kwargs);

define getfilesystemencodeerrors(*args, **kwargs):
    return py_sys.getfilesystemencodeerrors(*args, **kwargs);

define getfilesystemencoding(*args, **kwargs):
    return py_sys.getfilesystemencoding(*args, **kwargs);

define getprofile(*args, **kwargs):
    return py_sys.getprofile(*args, **kwargs);

define getrecursionlimit(*args, **kwargs):
    return py_sys.getrecursionlimit(*args, **kwargs);

define getrefcount(*args, **kwargs):
    return py_sys.getrefcount(*args, **kwargs);

define getsizeof(*args, **kwargs):
    return py_sys.getsizeof(*args, **kwargs);

define getswitchinterval(*args, **kwargs):
    return py_sys.getswitchinterval(*args, **kwargs);

define gettrace(*args, **kwargs):
    return py_sys.gettrace(*args, **kwargs);

define getunicodeinternedsize(*args, **kwargs):
    return py_sys.getunicodeinternedsize(*args, **kwargs);

define getwindowsversion(*args, **kwargs):
    return py_sys.getwindowsversion(*args, **kwargs);

hash_info = getattr(py_sys, 'hash_info', None);
hexversion = getattr(py_sys, 'hexversion', None);
implementation = getattr(py_sys, 'implementation', None);
int_info = getattr(py_sys, 'int_info', None);
define intern(*args, **kwargs):
    return py_sys.intern(*args, **kwargs);

define is_finalizing(*args, **kwargs):
    return py_sys.is_finalizing(*args, **kwargs);

define is_remote_debug_enabled(*args, **kwargs):
    return py_sys.is_remote_debug_enabled(*args, **kwargs);

define is_stack_trampoline_active(*args, **kwargs):
    return py_sys.is_stack_trampoline_active(*args, **kwargs);

maxsize = getattr(py_sys, 'maxsize', None);
maxunicode = getattr(py_sys, 'maxunicode', None);
meta_path = getattr(py_sys, 'meta_path', None);
modules = getattr(py_sys, 'modules', None);
monitoring = getattr(py_sys, 'monitoring', None);
orig_argv = getattr(py_sys, 'orig_argv', None);
path = getattr(py_sys, 'path', None);
path_hooks = getattr(py_sys, 'path_hooks', None);
path_importer_cache = getattr(py_sys, 'path_importer_cache', None);
platform = getattr(py_sys, 'platform', None);
platlibdir = getattr(py_sys, 'platlibdir', None);
prefix = getattr(py_sys, 'prefix', None);
pycache_prefix = getattr(py_sys, 'pycache_prefix', None);
define remote_exec(*args, **kwargs):
    return py_sys.remote_exec(*args, **kwargs);

define set_asyncgen_hooks(*args, **kwargs):
    return py_sys.set_asyncgen_hooks(*args, **kwargs);

define set_coroutine_origin_tracking_depth(*args, **kwargs):
    return py_sys.set_coroutine_origin_tracking_depth(*args, **kwargs);

define set_int_max_str_digits(*args, **kwargs):
    return py_sys.set_int_max_str_digits(*args, **kwargs);

define setprofile(*args, **kwargs):
    return py_sys.setprofile(*args, **kwargs);

define setrecursionlimit(*args, **kwargs):
    return py_sys.setrecursionlimit(*args, **kwargs);

define setswitchinterval(*args, **kwargs):
    return py_sys.setswitchinterval(*args, **kwargs);

define settrace(*args, **kwargs):
    return py_sys.settrace(*args, **kwargs);

stderr = getattr(py_sys, 'stderr', None);
stdin = getattr(py_sys, 'stdin', None);
stdlib_module_names = getattr(py_sys, 'stdlib_module_names', None);
stdout = getattr(py_sys, 'stdout', None);
thread_info = getattr(py_sys, 'thread_info', None);
define unraisablehook(*args, **kwargs):
    return py_sys.unraisablehook(*args, **kwargs);

version = getattr(py_sys, 'version', None);
version_info = getattr(py_sys, 'version_info', None);
warnoptions = getattr(py_sys, 'warnoptions', None);
winver = getattr(py_sys, 'winver', None);
