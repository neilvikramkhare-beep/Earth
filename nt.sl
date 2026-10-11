// Earth Language Explicit Wrapper for nt
// Automatically generated with ALL functions

py_nt = __import__('nt')

DirEntry = getattr(py_nt, 'DirEntry', None);
EX_OK = getattr(py_nt, 'EX_OK', None);
F_OK = getattr(py_nt, 'F_OK', None);
O_APPEND = getattr(py_nt, 'O_APPEND', None);
O_BINARY = getattr(py_nt, 'O_BINARY', None);
O_CREAT = getattr(py_nt, 'O_CREAT', None);
O_EXCL = getattr(py_nt, 'O_EXCL', None);
O_NOINHERIT = getattr(py_nt, 'O_NOINHERIT', None);
O_RANDOM = getattr(py_nt, 'O_RANDOM', None);
O_RDONLY = getattr(py_nt, 'O_RDONLY', None);
O_RDWR = getattr(py_nt, 'O_RDWR', None);
O_SEQUENTIAL = getattr(py_nt, 'O_SEQUENTIAL', None);
O_SHORT_LIVED = getattr(py_nt, 'O_SHORT_LIVED', None);
O_TEMPORARY = getattr(py_nt, 'O_TEMPORARY', None);
O_TEXT = getattr(py_nt, 'O_TEXT', None);
O_TRUNC = getattr(py_nt, 'O_TRUNC', None);
O_WRONLY = getattr(py_nt, 'O_WRONLY', None);
P_DETACH = getattr(py_nt, 'P_DETACH', None);
P_NOWAIT = getattr(py_nt, 'P_NOWAIT', None);
P_NOWAITO = getattr(py_nt, 'P_NOWAITO', None);
P_OVERLAY = getattr(py_nt, 'P_OVERLAY', None);
P_WAIT = getattr(py_nt, 'P_WAIT', None);
R_OK = getattr(py_nt, 'R_OK', None);
TMP_MAX = getattr(py_nt, 'TMP_MAX', None);
W_OK = getattr(py_nt, 'W_OK', None);
X_OK = getattr(py_nt, 'X_OK', None);
define abort(*args, **kwargs):
    return py_nt.abort(*args, **kwargs);

define access(*args, **kwargs):
    return py_nt.access(*args, **kwargs);

define chdir(*args, **kwargs):
    return py_nt.chdir(*args, **kwargs);

define chmod(*args, **kwargs):
    return py_nt.chmod(*args, **kwargs);

define close(*args, **kwargs):
    return py_nt.close(*args, **kwargs);

define closerange(*args, **kwargs):
    return py_nt.closerange(*args, **kwargs);

define cpu_count(*args, **kwargs):
    return py_nt.cpu_count(*args, **kwargs);

define device_encoding(*args, **kwargs):
    return py_nt.device_encoding(*args, **kwargs);

define dup(*args, **kwargs):
    return py_nt.dup(*args, **kwargs);

define dup2(*args, **kwargs):
    return py_nt.dup2(*args, **kwargs);

environ = getattr(py_nt, 'environ', None);
error = getattr(py_nt, 'error', None);
define execv(*args, **kwargs):
    return py_nt.execv(*args, **kwargs);

define execve(*args, **kwargs):
    return py_nt.execve(*args, **kwargs);

define fchmod(*args, **kwargs):
    return py_nt.fchmod(*args, **kwargs);

define fspath(*args, **kwargs):
    return py_nt.fspath(*args, **kwargs);

define fstat(*args, **kwargs):
    return py_nt.fstat(*args, **kwargs);

define fsync(*args, **kwargs):
    return py_nt.fsync(*args, **kwargs);

define ftruncate(*args, **kwargs):
    return py_nt.ftruncate(*args, **kwargs);

define get_blocking(*args, **kwargs):
    return py_nt.get_blocking(*args, **kwargs);

define get_handle_inheritable(*args, **kwargs):
    return py_nt.get_handle_inheritable(*args, **kwargs);

define get_inheritable(*args, **kwargs):
    return py_nt.get_inheritable(*args, **kwargs);

define get_terminal_size(*args, **kwargs):
    return py_nt.get_terminal_size(*args, **kwargs);

define getcwd(*args, **kwargs):
    return py_nt.getcwd(*args, **kwargs);

define getcwdb(*args, **kwargs):
    return py_nt.getcwdb(*args, **kwargs);

define getlogin(*args, **kwargs):
    return py_nt.getlogin(*args, **kwargs);

define getpid(*args, **kwargs):
    return py_nt.getpid(*args, **kwargs);

define getppid(*args, **kwargs):
    return py_nt.getppid(*args, **kwargs);

define isatty(*args, **kwargs):
    return py_nt.isatty(*args, **kwargs);

define kill(*args, **kwargs):
    return py_nt.kill(*args, **kwargs);

define lchmod(*args, **kwargs):
    return py_nt.lchmod(*args, **kwargs);

define link(*args, **kwargs):
    return py_nt.link(*args, **kwargs);

define listdir(*args, **kwargs):
    return py_nt.listdir(*args, **kwargs);

define listdrives(*args, **kwargs):
    return py_nt.listdrives(*args, **kwargs);

define listmounts(*args, **kwargs):
    return py_nt.listmounts(*args, **kwargs);

define listvolumes(*args, **kwargs):
    return py_nt.listvolumes(*args, **kwargs);

define lseek(*args, **kwargs):
    return py_nt.lseek(*args, **kwargs);

define lstat(*args, **kwargs):
    return py_nt.lstat(*args, **kwargs);

define mkdir(*args, **kwargs):
    return py_nt.mkdir(*args, **kwargs);

define open(*args, **kwargs):
    return py_nt.open(*args, **kwargs);

define pipe(*args, **kwargs):
    return py_nt.pipe(*args, **kwargs);

define putenv(*args, **kwargs):
    return py_nt.putenv(*args, **kwargs);

define read(*args, **kwargs):
    return py_nt.read(*args, **kwargs);

define readinto(*args, **kwargs):
    return py_nt.readinto(*args, **kwargs);

define readlink(*args, **kwargs):
    return py_nt.readlink(*args, **kwargs);

define remove(*args, **kwargs):
    return py_nt.remove(*args, **kwargs);

define rename(*args, **kwargs):
    return py_nt.rename(*args, **kwargs);

define replace(*args, **kwargs):
    return py_nt.replace(*args, **kwargs);

define rmdir(*args, **kwargs):
    return py_nt.rmdir(*args, **kwargs);

define scandir(*args, **kwargs):
    return py_nt.scandir(*args, **kwargs);

define set_blocking(*args, **kwargs):
    return py_nt.set_blocking(*args, **kwargs);

define set_handle_inheritable(*args, **kwargs):
    return py_nt.set_handle_inheritable(*args, **kwargs);

define set_inheritable(*args, **kwargs):
    return py_nt.set_inheritable(*args, **kwargs);

define spawnv(*args, **kwargs):
    return py_nt.spawnv(*args, **kwargs);

define spawnve(*args, **kwargs):
    return py_nt.spawnve(*args, **kwargs);

define startfile(*args, **kwargs):
    return py_nt.startfile(*args, **kwargs);

define stat(*args, **kwargs):
    return py_nt.stat(*args, **kwargs);

stat_result = getattr(py_nt, 'stat_result', None);
statvfs_result = getattr(py_nt, 'statvfs_result', None);
define strerror(*args, **kwargs):
    return py_nt.strerror(*args, **kwargs);

define symlink(*args, **kwargs):
    return py_nt.symlink(*args, **kwargs);

define system(*args, **kwargs):
    return py_nt.system(*args, **kwargs);

terminal_size = getattr(py_nt, 'terminal_size', None);
define times(*args, **kwargs):
    return py_nt.times(*args, **kwargs);

times_result = getattr(py_nt, 'times_result', None);
define truncate(*args, **kwargs):
    return py_nt.truncate(*args, **kwargs);

define umask(*args, **kwargs):
    return py_nt.umask(*args, **kwargs);

uname_result = getattr(py_nt, 'uname_result', None);
define unlink(*args, **kwargs):
    return py_nt.unlink(*args, **kwargs);

define unsetenv(*args, **kwargs):
    return py_nt.unsetenv(*args, **kwargs);

define urandom(*args, **kwargs):
    return py_nt.urandom(*args, **kwargs);

define utime(*args, **kwargs):
    return py_nt.utime(*args, **kwargs);

define waitpid(*args, **kwargs):
    return py_nt.waitpid(*args, **kwargs);

define waitstatus_to_exitcode(*args, **kwargs):
    return py_nt.waitstatus_to_exitcode(*args, **kwargs);

define write(*args, **kwargs):
    return py_nt.write(*args, **kwargs);

