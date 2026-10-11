// Earth Language Explicit Wrapper for sqlite3
// Automatically generated with ALL functions

py_sqlite3 = __import__('sqlite3')

Binary = getattr(py_sqlite3, 'Binary', None);
Blob = getattr(py_sqlite3, 'Blob', None);
Connection = getattr(py_sqlite3, 'Connection', None);
Cursor = getattr(py_sqlite3, 'Cursor', None);
DataError = getattr(py_sqlite3, 'DataError', None);
DatabaseError = getattr(py_sqlite3, 'DatabaseError', None);
Date = getattr(py_sqlite3, 'Date', None);
define DateFromTicks(*args, **kwargs):
    return py_sqlite3.DateFromTicks(*args, **kwargs);

Error = getattr(py_sqlite3, 'Error', None);
IntegrityError = getattr(py_sqlite3, 'IntegrityError', None);
InterfaceError = getattr(py_sqlite3, 'InterfaceError', None);
InternalError = getattr(py_sqlite3, 'InternalError', None);
LEGACY_TRANSACTION_CONTROL = getattr(py_sqlite3, 'LEGACY_TRANSACTION_CONTROL', None);
NotSupportedError = getattr(py_sqlite3, 'NotSupportedError', None);
OperationalError = getattr(py_sqlite3, 'OperationalError', None);
PARSE_COLNAMES = getattr(py_sqlite3, 'PARSE_COLNAMES', None);
PARSE_DECLTYPES = getattr(py_sqlite3, 'PARSE_DECLTYPES', None);
PrepareProtocol = getattr(py_sqlite3, 'PrepareProtocol', None);
ProgrammingError = getattr(py_sqlite3, 'ProgrammingError', None);
Row = getattr(py_sqlite3, 'Row', None);
SQLITE_ABORT = getattr(py_sqlite3, 'SQLITE_ABORT', None);
SQLITE_ABORT_ROLLBACK = getattr(py_sqlite3, 'SQLITE_ABORT_ROLLBACK', None);
SQLITE_ALTER_TABLE = getattr(py_sqlite3, 'SQLITE_ALTER_TABLE', None);
SQLITE_ANALYZE = getattr(py_sqlite3, 'SQLITE_ANALYZE', None);
SQLITE_ATTACH = getattr(py_sqlite3, 'SQLITE_ATTACH', None);
SQLITE_AUTH = getattr(py_sqlite3, 'SQLITE_AUTH', None);
SQLITE_AUTH_USER = getattr(py_sqlite3, 'SQLITE_AUTH_USER', None);
SQLITE_BUSY = getattr(py_sqlite3, 'SQLITE_BUSY', None);
SQLITE_BUSY_RECOVERY = getattr(py_sqlite3, 'SQLITE_BUSY_RECOVERY', None);
SQLITE_BUSY_SNAPSHOT = getattr(py_sqlite3, 'SQLITE_BUSY_SNAPSHOT', None);
SQLITE_BUSY_TIMEOUT = getattr(py_sqlite3, 'SQLITE_BUSY_TIMEOUT', None);
SQLITE_CANTOPEN = getattr(py_sqlite3, 'SQLITE_CANTOPEN', None);
SQLITE_CANTOPEN_CONVPATH = getattr(py_sqlite3, 'SQLITE_CANTOPEN_CONVPATH', None);
SQLITE_CANTOPEN_DIRTYWAL = getattr(py_sqlite3, 'SQLITE_CANTOPEN_DIRTYWAL', None);
SQLITE_CANTOPEN_FULLPATH = getattr(py_sqlite3, 'SQLITE_CANTOPEN_FULLPATH', None);
SQLITE_CANTOPEN_ISDIR = getattr(py_sqlite3, 'SQLITE_CANTOPEN_ISDIR', None);
SQLITE_CANTOPEN_NOTEMPDIR = getattr(py_sqlite3, 'SQLITE_CANTOPEN_NOTEMPDIR', None);
SQLITE_CANTOPEN_SYMLINK = getattr(py_sqlite3, 'SQLITE_CANTOPEN_SYMLINK', None);
SQLITE_CONSTRAINT = getattr(py_sqlite3, 'SQLITE_CONSTRAINT', None);
SQLITE_CONSTRAINT_CHECK = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_CHECK', None);
SQLITE_CONSTRAINT_COMMITHOOK = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_COMMITHOOK', None);
SQLITE_CONSTRAINT_FOREIGNKEY = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_FOREIGNKEY', None);
SQLITE_CONSTRAINT_FUNCTION = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_FUNCTION', None);
SQLITE_CONSTRAINT_NOTNULL = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_NOTNULL', None);
SQLITE_CONSTRAINT_PINNED = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_PINNED', None);
SQLITE_CONSTRAINT_PRIMARYKEY = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_PRIMARYKEY', None);
SQLITE_CONSTRAINT_ROWID = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_ROWID', None);
SQLITE_CONSTRAINT_TRIGGER = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_TRIGGER', None);
SQLITE_CONSTRAINT_UNIQUE = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_UNIQUE', None);
SQLITE_CONSTRAINT_VTAB = getattr(py_sqlite3, 'SQLITE_CONSTRAINT_VTAB', None);
SQLITE_CORRUPT = getattr(py_sqlite3, 'SQLITE_CORRUPT', None);
SQLITE_CORRUPT_INDEX = getattr(py_sqlite3, 'SQLITE_CORRUPT_INDEX', None);
SQLITE_CORRUPT_SEQUENCE = getattr(py_sqlite3, 'SQLITE_CORRUPT_SEQUENCE', None);
SQLITE_CORRUPT_VTAB = getattr(py_sqlite3, 'SQLITE_CORRUPT_VTAB', None);
SQLITE_CREATE_INDEX = getattr(py_sqlite3, 'SQLITE_CREATE_INDEX', None);
SQLITE_CREATE_TABLE = getattr(py_sqlite3, 'SQLITE_CREATE_TABLE', None);
SQLITE_CREATE_TEMP_INDEX = getattr(py_sqlite3, 'SQLITE_CREATE_TEMP_INDEX', None);
SQLITE_CREATE_TEMP_TABLE = getattr(py_sqlite3, 'SQLITE_CREATE_TEMP_TABLE', None);
SQLITE_CREATE_TEMP_TRIGGER = getattr(py_sqlite3, 'SQLITE_CREATE_TEMP_TRIGGER', None);
SQLITE_CREATE_TEMP_VIEW = getattr(py_sqlite3, 'SQLITE_CREATE_TEMP_VIEW', None);
SQLITE_CREATE_TRIGGER = getattr(py_sqlite3, 'SQLITE_CREATE_TRIGGER', None);
SQLITE_CREATE_VIEW = getattr(py_sqlite3, 'SQLITE_CREATE_VIEW', None);
SQLITE_CREATE_VTABLE = getattr(py_sqlite3, 'SQLITE_CREATE_VTABLE', None);
SQLITE_DBCONFIG_DEFENSIVE = getattr(py_sqlite3, 'SQLITE_DBCONFIG_DEFENSIVE', None);
SQLITE_DBCONFIG_DQS_DDL = getattr(py_sqlite3, 'SQLITE_DBCONFIG_DQS_DDL', None);
SQLITE_DBCONFIG_DQS_DML = getattr(py_sqlite3, 'SQLITE_DBCONFIG_DQS_DML', None);
SQLITE_DBCONFIG_ENABLE_FKEY = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_FKEY', None);
SQLITE_DBCONFIG_ENABLE_FTS3_TOKENIZER = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_FTS3_TOKENIZER', None);
SQLITE_DBCONFIG_ENABLE_LOAD_EXTENSION = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_LOAD_EXTENSION', None);
SQLITE_DBCONFIG_ENABLE_QPSG = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_QPSG', None);
SQLITE_DBCONFIG_ENABLE_TRIGGER = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_TRIGGER', None);
SQLITE_DBCONFIG_ENABLE_VIEW = getattr(py_sqlite3, 'SQLITE_DBCONFIG_ENABLE_VIEW', None);
SQLITE_DBCONFIG_LEGACY_ALTER_TABLE = getattr(py_sqlite3, 'SQLITE_DBCONFIG_LEGACY_ALTER_TABLE', None);
SQLITE_DBCONFIG_LEGACY_FILE_FORMAT = getattr(py_sqlite3, 'SQLITE_DBCONFIG_LEGACY_FILE_FORMAT', None);
SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE = getattr(py_sqlite3, 'SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE', None);
SQLITE_DBCONFIG_RESET_DATABASE = getattr(py_sqlite3, 'SQLITE_DBCONFIG_RESET_DATABASE', None);
SQLITE_DBCONFIG_TRIGGER_EQP = getattr(py_sqlite3, 'SQLITE_DBCONFIG_TRIGGER_EQP', None);
SQLITE_DBCONFIG_TRUSTED_SCHEMA = getattr(py_sqlite3, 'SQLITE_DBCONFIG_TRUSTED_SCHEMA', None);
SQLITE_DBCONFIG_WRITABLE_SCHEMA = getattr(py_sqlite3, 'SQLITE_DBCONFIG_WRITABLE_SCHEMA', None);
SQLITE_DELETE = getattr(py_sqlite3, 'SQLITE_DELETE', None);
SQLITE_DENY = getattr(py_sqlite3, 'SQLITE_DENY', None);
SQLITE_DETACH = getattr(py_sqlite3, 'SQLITE_DETACH', None);
SQLITE_DONE = getattr(py_sqlite3, 'SQLITE_DONE', None);
SQLITE_DROP_INDEX = getattr(py_sqlite3, 'SQLITE_DROP_INDEX', None);
SQLITE_DROP_TABLE = getattr(py_sqlite3, 'SQLITE_DROP_TABLE', None);
SQLITE_DROP_TEMP_INDEX = getattr(py_sqlite3, 'SQLITE_DROP_TEMP_INDEX', None);
SQLITE_DROP_TEMP_TABLE = getattr(py_sqlite3, 'SQLITE_DROP_TEMP_TABLE', None);
SQLITE_DROP_TEMP_TRIGGER = getattr(py_sqlite3, 'SQLITE_DROP_TEMP_TRIGGER', None);
SQLITE_DROP_TEMP_VIEW = getattr(py_sqlite3, 'SQLITE_DROP_TEMP_VIEW', None);
SQLITE_DROP_TRIGGER = getattr(py_sqlite3, 'SQLITE_DROP_TRIGGER', None);
SQLITE_DROP_VIEW = getattr(py_sqlite3, 'SQLITE_DROP_VIEW', None);
SQLITE_DROP_VTABLE = getattr(py_sqlite3, 'SQLITE_DROP_VTABLE', None);
SQLITE_EMPTY = getattr(py_sqlite3, 'SQLITE_EMPTY', None);
SQLITE_ERROR = getattr(py_sqlite3, 'SQLITE_ERROR', None);
SQLITE_ERROR_MISSING_COLLSEQ = getattr(py_sqlite3, 'SQLITE_ERROR_MISSING_COLLSEQ', None);
SQLITE_ERROR_RETRY = getattr(py_sqlite3, 'SQLITE_ERROR_RETRY', None);
SQLITE_ERROR_SNAPSHOT = getattr(py_sqlite3, 'SQLITE_ERROR_SNAPSHOT', None);
SQLITE_FORMAT = getattr(py_sqlite3, 'SQLITE_FORMAT', None);
SQLITE_FULL = getattr(py_sqlite3, 'SQLITE_FULL', None);
SQLITE_FUNCTION = getattr(py_sqlite3, 'SQLITE_FUNCTION', None);
SQLITE_IGNORE = getattr(py_sqlite3, 'SQLITE_IGNORE', None);
SQLITE_INSERT = getattr(py_sqlite3, 'SQLITE_INSERT', None);
SQLITE_INTERNAL = getattr(py_sqlite3, 'SQLITE_INTERNAL', None);
SQLITE_INTERRUPT = getattr(py_sqlite3, 'SQLITE_INTERRUPT', None);
SQLITE_IOERR = getattr(py_sqlite3, 'SQLITE_IOERR', None);
SQLITE_IOERR_ACCESS = getattr(py_sqlite3, 'SQLITE_IOERR_ACCESS', None);
SQLITE_IOERR_AUTH = getattr(py_sqlite3, 'SQLITE_IOERR_AUTH', None);
SQLITE_IOERR_BEGIN_ATOMIC = getattr(py_sqlite3, 'SQLITE_IOERR_BEGIN_ATOMIC', None);
SQLITE_IOERR_BLOCKED = getattr(py_sqlite3, 'SQLITE_IOERR_BLOCKED', None);
SQLITE_IOERR_CHECKRESERVEDLOCK = getattr(py_sqlite3, 'SQLITE_IOERR_CHECKRESERVEDLOCK', None);
SQLITE_IOERR_CLOSE = getattr(py_sqlite3, 'SQLITE_IOERR_CLOSE', None);
SQLITE_IOERR_COMMIT_ATOMIC = getattr(py_sqlite3, 'SQLITE_IOERR_COMMIT_ATOMIC', None);
SQLITE_IOERR_CONVPATH = getattr(py_sqlite3, 'SQLITE_IOERR_CONVPATH', None);
SQLITE_IOERR_CORRUPTFS = getattr(py_sqlite3, 'SQLITE_IOERR_CORRUPTFS', None);
SQLITE_IOERR_DATA = getattr(py_sqlite3, 'SQLITE_IOERR_DATA', None);
SQLITE_IOERR_DELETE = getattr(py_sqlite3, 'SQLITE_IOERR_DELETE', None);
SQLITE_IOERR_DELETE_NOENT = getattr(py_sqlite3, 'SQLITE_IOERR_DELETE_NOENT', None);
SQLITE_IOERR_DIR_CLOSE = getattr(py_sqlite3, 'SQLITE_IOERR_DIR_CLOSE', None);
SQLITE_IOERR_DIR_FSYNC = getattr(py_sqlite3, 'SQLITE_IOERR_DIR_FSYNC', None);
SQLITE_IOERR_FSTAT = getattr(py_sqlite3, 'SQLITE_IOERR_FSTAT', None);
SQLITE_IOERR_FSYNC = getattr(py_sqlite3, 'SQLITE_IOERR_FSYNC', None);
SQLITE_IOERR_GETTEMPPATH = getattr(py_sqlite3, 'SQLITE_IOERR_GETTEMPPATH', None);
SQLITE_IOERR_LOCK = getattr(py_sqlite3, 'SQLITE_IOERR_LOCK', None);
SQLITE_IOERR_MMAP = getattr(py_sqlite3, 'SQLITE_IOERR_MMAP', None);
SQLITE_IOERR_NOMEM = getattr(py_sqlite3, 'SQLITE_IOERR_NOMEM', None);
SQLITE_IOERR_RDLOCK = getattr(py_sqlite3, 'SQLITE_IOERR_RDLOCK', None);
SQLITE_IOERR_READ = getattr(py_sqlite3, 'SQLITE_IOERR_READ', None);
SQLITE_IOERR_ROLLBACK_ATOMIC = getattr(py_sqlite3, 'SQLITE_IOERR_ROLLBACK_ATOMIC', None);
SQLITE_IOERR_SEEK = getattr(py_sqlite3, 'SQLITE_IOERR_SEEK', None);
SQLITE_IOERR_SHMLOCK = getattr(py_sqlite3, 'SQLITE_IOERR_SHMLOCK', None);
SQLITE_IOERR_SHMMAP = getattr(py_sqlite3, 'SQLITE_IOERR_SHMMAP', None);
SQLITE_IOERR_SHMOPEN = getattr(py_sqlite3, 'SQLITE_IOERR_SHMOPEN', None);
SQLITE_IOERR_SHMSIZE = getattr(py_sqlite3, 'SQLITE_IOERR_SHMSIZE', None);
SQLITE_IOERR_SHORT_READ = getattr(py_sqlite3, 'SQLITE_IOERR_SHORT_READ', None);
SQLITE_IOERR_TRUNCATE = getattr(py_sqlite3, 'SQLITE_IOERR_TRUNCATE', None);
SQLITE_IOERR_UNLOCK = getattr(py_sqlite3, 'SQLITE_IOERR_UNLOCK', None);
SQLITE_IOERR_VNODE = getattr(py_sqlite3, 'SQLITE_IOERR_VNODE', None);
SQLITE_IOERR_WRITE = getattr(py_sqlite3, 'SQLITE_IOERR_WRITE', None);
SQLITE_LIMIT_ATTACHED = getattr(py_sqlite3, 'SQLITE_LIMIT_ATTACHED', None);
SQLITE_LIMIT_COLUMN = getattr(py_sqlite3, 'SQLITE_LIMIT_COLUMN', None);
SQLITE_LIMIT_COMPOUND_SELECT = getattr(py_sqlite3, 'SQLITE_LIMIT_COMPOUND_SELECT', None);
SQLITE_LIMIT_EXPR_DEPTH = getattr(py_sqlite3, 'SQLITE_LIMIT_EXPR_DEPTH', None);
SQLITE_LIMIT_FUNCTION_ARG = getattr(py_sqlite3, 'SQLITE_LIMIT_FUNCTION_ARG', None);
SQLITE_LIMIT_LENGTH = getattr(py_sqlite3, 'SQLITE_LIMIT_LENGTH', None);
SQLITE_LIMIT_LIKE_PATTERN_LENGTH = getattr(py_sqlite3, 'SQLITE_LIMIT_LIKE_PATTERN_LENGTH', None);
SQLITE_LIMIT_SQL_LENGTH = getattr(py_sqlite3, 'SQLITE_LIMIT_SQL_LENGTH', None);
SQLITE_LIMIT_TRIGGER_DEPTH = getattr(py_sqlite3, 'SQLITE_LIMIT_TRIGGER_DEPTH', None);
SQLITE_LIMIT_VARIABLE_NUMBER = getattr(py_sqlite3, 'SQLITE_LIMIT_VARIABLE_NUMBER', None);
SQLITE_LIMIT_VDBE_OP = getattr(py_sqlite3, 'SQLITE_LIMIT_VDBE_OP', None);
SQLITE_LIMIT_WORKER_THREADS = getattr(py_sqlite3, 'SQLITE_LIMIT_WORKER_THREADS', None);
SQLITE_LOCKED = getattr(py_sqlite3, 'SQLITE_LOCKED', None);
SQLITE_LOCKED_SHAREDCACHE = getattr(py_sqlite3, 'SQLITE_LOCKED_SHAREDCACHE', None);
SQLITE_LOCKED_VTAB = getattr(py_sqlite3, 'SQLITE_LOCKED_VTAB', None);
SQLITE_MISMATCH = getattr(py_sqlite3, 'SQLITE_MISMATCH', None);
SQLITE_MISUSE = getattr(py_sqlite3, 'SQLITE_MISUSE', None);
SQLITE_NOLFS = getattr(py_sqlite3, 'SQLITE_NOLFS', None);
SQLITE_NOMEM = getattr(py_sqlite3, 'SQLITE_NOMEM', None);
SQLITE_NOTADB = getattr(py_sqlite3, 'SQLITE_NOTADB', None);
SQLITE_NOTFOUND = getattr(py_sqlite3, 'SQLITE_NOTFOUND', None);
SQLITE_NOTICE = getattr(py_sqlite3, 'SQLITE_NOTICE', None);
SQLITE_NOTICE_RECOVER_ROLLBACK = getattr(py_sqlite3, 'SQLITE_NOTICE_RECOVER_ROLLBACK', None);
SQLITE_NOTICE_RECOVER_WAL = getattr(py_sqlite3, 'SQLITE_NOTICE_RECOVER_WAL', None);
SQLITE_OK = getattr(py_sqlite3, 'SQLITE_OK', None);
SQLITE_OK_LOAD_PERMANENTLY = getattr(py_sqlite3, 'SQLITE_OK_LOAD_PERMANENTLY', None);
SQLITE_OK_SYMLINK = getattr(py_sqlite3, 'SQLITE_OK_SYMLINK', None);
SQLITE_PERM = getattr(py_sqlite3, 'SQLITE_PERM', None);
SQLITE_PRAGMA = getattr(py_sqlite3, 'SQLITE_PRAGMA', None);
SQLITE_PROTOCOL = getattr(py_sqlite3, 'SQLITE_PROTOCOL', None);
SQLITE_RANGE = getattr(py_sqlite3, 'SQLITE_RANGE', None);
SQLITE_READ = getattr(py_sqlite3, 'SQLITE_READ', None);
SQLITE_READONLY = getattr(py_sqlite3, 'SQLITE_READONLY', None);
SQLITE_READONLY_CANTINIT = getattr(py_sqlite3, 'SQLITE_READONLY_CANTINIT', None);
SQLITE_READONLY_CANTLOCK = getattr(py_sqlite3, 'SQLITE_READONLY_CANTLOCK', None);
SQLITE_READONLY_DBMOVED = getattr(py_sqlite3, 'SQLITE_READONLY_DBMOVED', None);
SQLITE_READONLY_DIRECTORY = getattr(py_sqlite3, 'SQLITE_READONLY_DIRECTORY', None);
SQLITE_READONLY_RECOVERY = getattr(py_sqlite3, 'SQLITE_READONLY_RECOVERY', None);
SQLITE_READONLY_ROLLBACK = getattr(py_sqlite3, 'SQLITE_READONLY_ROLLBACK', None);
SQLITE_RECURSIVE = getattr(py_sqlite3, 'SQLITE_RECURSIVE', None);
SQLITE_REINDEX = getattr(py_sqlite3, 'SQLITE_REINDEX', None);
SQLITE_ROW = getattr(py_sqlite3, 'SQLITE_ROW', None);
SQLITE_SAVEPOINT = getattr(py_sqlite3, 'SQLITE_SAVEPOINT', None);
SQLITE_SCHEMA = getattr(py_sqlite3, 'SQLITE_SCHEMA', None);
SQLITE_SELECT = getattr(py_sqlite3, 'SQLITE_SELECT', None);
SQLITE_TOOBIG = getattr(py_sqlite3, 'SQLITE_TOOBIG', None);
SQLITE_TRANSACTION = getattr(py_sqlite3, 'SQLITE_TRANSACTION', None);
SQLITE_UPDATE = getattr(py_sqlite3, 'SQLITE_UPDATE', None);
SQLITE_WARNING = getattr(py_sqlite3, 'SQLITE_WARNING', None);
SQLITE_WARNING_AUTOINDEX = getattr(py_sqlite3, 'SQLITE_WARNING_AUTOINDEX', None);
Time = getattr(py_sqlite3, 'Time', None);
define TimeFromTicks(*args, **kwargs):
    return py_sqlite3.TimeFromTicks(*args, **kwargs);

Timestamp = getattr(py_sqlite3, 'Timestamp', None);
define TimestampFromTicks(*args, **kwargs):
    return py_sqlite3.TimestampFromTicks(*args, **kwargs);

Warning = getattr(py_sqlite3, 'Warning', None);
define adapt(*args, **kwargs):
    return py_sqlite3.adapt(*args, **kwargs);

adapters = getattr(py_sqlite3, 'adapters', None);
apilevel = getattr(py_sqlite3, 'apilevel', None);
collections = getattr(py_sqlite3, 'collections', None);
define complete_statement(*args, **kwargs):
    return py_sqlite3.complete_statement(*args, **kwargs);

define connect(*args, **kwargs):
    return py_sqlite3.connect(*args, **kwargs);

converters = getattr(py_sqlite3, 'converters', None);
datetime = getattr(py_sqlite3, 'datetime', None);
dbapi2 = getattr(py_sqlite3, 'dbapi2', None);
define enable_callback_tracebacks(*args, **kwargs):
    return py_sqlite3.enable_callback_tracebacks(*args, **kwargs);

paramstyle = getattr(py_sqlite3, 'paramstyle', None);
define register_adapter(*args, **kwargs):
    return py_sqlite3.register_adapter(*args, **kwargs);

define register_converter(*args, **kwargs):
    return py_sqlite3.register_converter(*args, **kwargs);

sqlite_version = getattr(py_sqlite3, 'sqlite_version', None);
sqlite_version_info = getattr(py_sqlite3, 'sqlite_version_info', None);
threadsafety = getattr(py_sqlite3, 'threadsafety', None);
time = getattr(py_sqlite3, 'time', None);
