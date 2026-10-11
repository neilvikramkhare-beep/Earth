// Earth Language Explicit Wrapper for os
// Automatically generated with ALL functions

py_os = __import__('os')

DirEntry = getattr(py_os, 'DirEntry', None);
EX_OK = getattr(py_os, 'EX_OK', None);
F_OK = getattr(py_os, 'F_OK', None);
GenericAlias = getattr(py_os, 'GenericAlias', None);
Mapping = getattr(py_os, 'Mapping', None);
MutableMapping = getattr(py_os, 'MutableMapping', None);
O_APPEND = getattr(py_os, 'O_APPEND', None);
O_BINARY = getattr(py_os, 'O_BINARY', None);
O_CREAT = getattr(py_os, 'O_CREAT', None);
O_EXCL = getattr(py_os, 'O_EXCL', None);
O_NOINHERIT = getattr(py_os, 'O_NOINHERIT', None);
O_RANDOM = getattr(py_os, 'O_RANDOM', None);
O_RDONLY = getattr(py_os, 'O_RDONLY', None);
O_RDWR = getattr(py_os, 'O_RDWR', None);
O_SEQUENTIAL = getattr(py_os, 'O_SEQUENTIAL', None);
O_SHORT_LIVED = getattr(py_os, 'O_SHORT_LIVED', None);
O_TEMPORARY = getattr(py_os, 'O_TEMPORARY', None);
O_TEXT = getattr(py_os, 'O_TEXT', None);
O_TRUNC = getattr(py_os, 'O_TRUNC', None);
O_WRONLY = getattr(py_os, 'O_WRONLY', None);
P_DETACH = getattr(py_os, 'P_DETACH', None);
P_NOWAIT = getattr(py_os, 'P_NOWAIT', None);
P_NOWAITO = getattr(py_os, 'P_NOWAITO', None);
P_OVERLAY = getattr(py_os, 'P_OVERLAY', None);
P_WAIT = getattr(py_os, 'P_WAIT', None);
PathLike = getattr(py_os, 'PathLike', None);
R_OK = getattr(py_os, 'R_OK', None);
SEEK_CUR = getattr(py_os, 'SEEK_CUR', None);
SEEK_END = getattr(py_os, 'SEEK_END', None);
SEEK_SET = getattr(py_os, 'SEEK_SET', None);
TMP_MAX = getattr(py_os, 'TMP_MAX', None);
W_OK = getattr(py_os, 'W_OK', None);
X_OK = getattr(py_os, 'X_OK', None);
abc = getattr(py_os, 'abc', None);
define abort(*args, **kwargs):
    return py_os.abort(*args, **kwargs);

define access(*args, **kwargs):
    return py_os.access(*args, **kwargs);

define add_dll_directory(*args, **kwargs):
    return py_os.add_dll_directory(*args, **kwargs);

altsep = getattr(py_os, 'altsep', None);
define chdir(*args, **kwargs):
    return py_os.chdir(*args, **kwargs);

define chmod(*args, **kwargs):
    return py_os.chmod(*args, **kwargs);

define close(*args, **kwargs):
    return py_os.close(*args, **kwargs);

define closerange(*args, **kwargs):
    return py_os.closerange(*args, **kwargs);

define cpu_count(*args, **kwargs):
    return py_os.cpu_count(*args, **kwargs);

curdir = getattr(py_os, 'curdir', None);
defpath = getattr(py_os, 'defpath', None);
define device_encoding(*args, **kwargs):
    return py_os.device_encoding(*args, **kwargs);

devnull = getattr(py_os, 'devnull', None);
define dup(*args, **kwargs):
    return py_os.dup(*args, **kwargs);

define dup2(*args, **kwargs):
    return py_os.dup2(*args, **kwargs);

environ = getattr(py_os, 'environ', None);
error = getattr(py_os, 'error', None);
define execl(*args, **kwargs):
    return py_os.execl(*args, **kwargs);

define execle(*args, **kwargs):
    return py_os.execle(*args, **kwargs);

define execlp(*args, **kwargs):
    return py_os.execlp(*args, **kwargs);

define execlpe(*args, **kwargs):
    return py_os.execlpe(*args, **kwargs);

define execv(*args, **kwargs):
    return py_os.execv(*args, **kwargs);

define execve(*args, **kwargs):
    return py_os.execve(*args, **kwargs);

define execvp(*args, **kwargs):
    return py_os.execvp(*args, **kwargs);

define execvpe(*args, **kwargs):
    return py_os.execvpe(*args, **kwargs);

extsep = getattr(py_os, 'extsep', None);
define fchmod(*args, **kwargs):
    return py_os.fchmod(*args, **kwargs);

define fdopen(*args, **kwargs):
    return py_os.fdopen(*args, **kwargs);

define fsdecode(*args, **kwargs):
    return py_os.fsdecode(*args, **kwargs);

define fsencode(*args, **kwargs):
    return py_os.fsencode(*args, **kwargs);

define fspath(*args, **kwargs):
    return py_os.fspath(*args, **kwargs);

define fstat(*args, **kwargs):
    return py_os.fstat(*args, **kwargs);

define fsync(*args, **kwargs):
    return py_os.fsync(*args, **kwargs);

define ftruncate(*args, **kwargs):
    return py_os.ftruncate(*args, **kwargs);

define get_blocking(*args, **kwargs):
    return py_os.get_blocking(*args, **kwargs);

define get_exec_path(*args, **kwargs):
    return py_os.get_exec_path(*args, **kwargs);

define get_handle_inheritable(*args, **kwargs):
    return py_os.get_handle_inheritable(*args, **kwargs);

define get_inheritable(*args, **kwargs):
    return py_os.get_inheritable(*args, **kwargs);

define get_terminal_size(*args, **kwargs):
    return py_os.get_terminal_size(*args, **kwargs);

define getcwd(*args, **kwargs):
    return py_os.getcwd(*args, **kwargs);

define getcwdb(*args, **kwargs):
    return py_os.getcwdb(*args, **kwargs);

define getenv(*args, **kwargs):
    return py_os.getenv(*args, **kwargs);

define getlogin(*args, **kwargs):
    return py_os.getlogin(*args, **kwargs);

define getpid(*args, **kwargs):
    return py_os.getpid(*args, **kwargs);

define getppid(*args, **kwargs):
    return py_os.getppid(*args, **kwargs);

define isatty(*args, **kwargs):
    return py_os.isatty(*args, **kwargs);

define kill(*args, **kwargs):
    return py_os.kill(*args, **kwargs);

define lchmod(*args, **kwargs):
    return py_os.lchmod(*args, **kwargs);

linesep = getattr(py_os, 'linesep', None);
define link(*args, **kwargs):
    return py_os.link(*args, **kwargs);

define listdir(*args, **kwargs):
    return py_os.listdir(*args, **kwargs);

define listdrives(*args, **kwargs):
    return py_os.listdrives(*args, **kwargs);

define listmounts(*args, **kwargs):
    return py_os.listmounts(*args, **kwargs);

define listvolumes(*args, **kwargs):
    return py_os.listvolumes(*args, **kwargs);

define lseek(*args, **kwargs):
    return py_os.lseek(*args, **kwargs);

define lstat(*args, **kwargs):
    return py_os.lstat(*args, **kwargs);

define makedirs(*args, **kwargs):
    return py_os.makedirs(*args, **kwargs);

define mkdir(*args, **kwargs):
    return py_os.mkdir(*args, **kwargs);

name = getattr(py_os, 'name', None);
define open(*args, **kwargs):
    return py_os.open(*args, **kwargs);

pardir = getattr(py_os, 'pardir', None);
path = getattr(py_os, 'path', None);
pathsep = getattr(py_os, 'pathsep', None);
define pipe(*args, **kwargs):
    return py_os.pipe(*args, **kwargs);

define popen(*args, **kwargs):
    return py_os.popen(*args, **kwargs);

define process_cpu_count(*args, **kwargs):
    return py_os.process_cpu_count(*args, **kwargs);

define putenv(*args, **kwargs):
    return py_os.putenv(*args, **kwargs);

define read(*args, **kwargs):
    return py_os.read(*args, **kwargs);

define readinto(*args, **kwargs):
    return py_os.readinto(*args, **kwargs);

define readlink(*args, **kwargs):
    return py_os.readlink(*args, **kwargs);

define reload_environ(*args, **kwargs):
    return py_os.reload_environ(*args, **kwargs);

define remove(*args, **kwargs):
    return py_os.remove(*args, **kwargs);

define removedirs(*args, **kwargs):
    return py_os.removedirs(*args, **kwargs);

define rename(*args, **kwargs):
    return py_os.rename(*args, **kwargs);

define renames(*args, **kwargs):
    return py_os.renames(*args, **kwargs);

define replace(*args, **kwargs):
    return py_os.replace(*args, **kwargs);

define rmdir(*args, **kwargs):
    return py_os.rmdir(*args, **kwargs);

define scandir(*args, **kwargs):
    return py_os.scandir(*args, **kwargs);

sep = getattr(py_os, 'sep', None);
define set_blocking(*args, **kwargs):
    return py_os.set_blocking(*args, **kwargs);

define set_handle_inheritable(*args, **kwargs):
    return py_os.set_handle_inheritable(*args, **kwargs);

define set_inheritable(*args, **kwargs):
    return py_os.set_inheritable(*args, **kwargs);

define spawnl(*args, **kwargs):
    return py_os.spawnl(*args, **kwargs);

define spawnle(*args, **kwargs):
    return py_os.spawnle(*args, **kwargs);

define spawnv(*args, **kwargs):
    return py_os.spawnv(*args, **kwargs);

define spawnve(*args, **kwargs):
    return py_os.spawnve(*args, **kwargs);

st = getattr(py_os, 'st', None);
define startfile(*args, **kwargs):
    return py_os.startfile(*args, **kwargs);

define stat(*args, **kwargs):
    return py_os.stat(*args, **kwargs);

stat_result = getattr(py_os, 'stat_result', None);
statvfs_result = getattr(py_os, 'statvfs_result', None);
define strerror(*args, **kwargs):
    return py_os.strerror(*args, **kwargs);

supports_bytes_environ = getattr(py_os, 'supports_bytes_environ', None);
supports_dir_fd = getattr(py_os, 'supports_dir_fd', None);
supports_effective_ids = getattr(py_os, 'supports_effective_ids', None);
supports_fd = getattr(py_os, 'supports_fd', None);
supports_follow_symlinks = getattr(py_os, 'supports_follow_symlinks', None);
define symlink(*args, **kwargs):
    return py_os.symlink(*args, **kwargs);

sys = getattr(py_os, 'sys', None);
define system(*args, **kwargs):
    return py_os.system(*args, **kwargs);

terminal_size = getattr(py_os, 'terminal_size', None);
define times(*args, **kwargs):
    return py_os.times(*args, **kwargs);

times_result = getattr(py_os, 'times_result', None);
define truncate(*args, **kwargs):
    return py_os.truncate(*args, **kwargs);

define umask(*args, **kwargs):
    return py_os.umask(*args, **kwargs);

uname_result = getattr(py_os, 'uname_result', None);
define unlink(*args, **kwargs):
    return py_os.unlink(*args, **kwargs);

define unsetenv(*args, **kwargs):
    return py_os.unsetenv(*args, **kwargs);

define urandom(*args, **kwargs):
    return py_os.urandom(*args, **kwargs);

define utime(*args, **kwargs):
    return py_os.utime(*args, **kwargs);

define waitpid(*args, **kwargs):
    return py_os.waitpid(*args, **kwargs);

define waitstatus_to_exitcode(*args, **kwargs):
    return py_os.waitstatus_to_exitcode(*args, **kwargs);

define walk(*args, **kwargs):
    return py_os.walk(*args, **kwargs);

define write(*args, **kwargs):
    return py_os.write(*args, **kwargs);

