// Earth Language Explicit Wrapper for stat
// Automatically generated with ALL functions

py_stat = __import__('stat')

FILE_ATTRIBUTE_ARCHIVE = getattr(py_stat, 'FILE_ATTRIBUTE_ARCHIVE', None);
FILE_ATTRIBUTE_COMPRESSED = getattr(py_stat, 'FILE_ATTRIBUTE_COMPRESSED', None);
FILE_ATTRIBUTE_DEVICE = getattr(py_stat, 'FILE_ATTRIBUTE_DEVICE', None);
FILE_ATTRIBUTE_DIRECTORY = getattr(py_stat, 'FILE_ATTRIBUTE_DIRECTORY', None);
FILE_ATTRIBUTE_ENCRYPTED = getattr(py_stat, 'FILE_ATTRIBUTE_ENCRYPTED', None);
FILE_ATTRIBUTE_HIDDEN = getattr(py_stat, 'FILE_ATTRIBUTE_HIDDEN', None);
FILE_ATTRIBUTE_INTEGRITY_STREAM = getattr(py_stat, 'FILE_ATTRIBUTE_INTEGRITY_STREAM', None);
FILE_ATTRIBUTE_NORMAL = getattr(py_stat, 'FILE_ATTRIBUTE_NORMAL', None);
FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = getattr(py_stat, 'FILE_ATTRIBUTE_NOT_CONTENT_INDEXED', None);
FILE_ATTRIBUTE_NO_SCRUB_DATA = getattr(py_stat, 'FILE_ATTRIBUTE_NO_SCRUB_DATA', None);
FILE_ATTRIBUTE_OFFLINE = getattr(py_stat, 'FILE_ATTRIBUTE_OFFLINE', None);
FILE_ATTRIBUTE_READONLY = getattr(py_stat, 'FILE_ATTRIBUTE_READONLY', None);
FILE_ATTRIBUTE_REPARSE_POINT = getattr(py_stat, 'FILE_ATTRIBUTE_REPARSE_POINT', None);
FILE_ATTRIBUTE_SPARSE_FILE = getattr(py_stat, 'FILE_ATTRIBUTE_SPARSE_FILE', None);
FILE_ATTRIBUTE_SYSTEM = getattr(py_stat, 'FILE_ATTRIBUTE_SYSTEM', None);
FILE_ATTRIBUTE_TEMPORARY = getattr(py_stat, 'FILE_ATTRIBUTE_TEMPORARY', None);
FILE_ATTRIBUTE_VIRTUAL = getattr(py_stat, 'FILE_ATTRIBUTE_VIRTUAL', None);
IO_REPARSE_TAG_APPEXECLINK = getattr(py_stat, 'IO_REPARSE_TAG_APPEXECLINK', None);
IO_REPARSE_TAG_MOUNT_POINT = getattr(py_stat, 'IO_REPARSE_TAG_MOUNT_POINT', None);
IO_REPARSE_TAG_SYMLINK = getattr(py_stat, 'IO_REPARSE_TAG_SYMLINK', None);
SF_APPEND = getattr(py_stat, 'SF_APPEND', None);
SF_ARCHIVED = getattr(py_stat, 'SF_ARCHIVED', None);
SF_DATALESS = getattr(py_stat, 'SF_DATALESS', None);
SF_FIRMLINK = getattr(py_stat, 'SF_FIRMLINK', None);
SF_IMMUTABLE = getattr(py_stat, 'SF_IMMUTABLE', None);
SF_NOUNLINK = getattr(py_stat, 'SF_NOUNLINK', None);
SF_RESTRICTED = getattr(py_stat, 'SF_RESTRICTED', None);
SF_SETTABLE = getattr(py_stat, 'SF_SETTABLE', None);
SF_SNAPSHOT = getattr(py_stat, 'SF_SNAPSHOT', None);
ST_ATIME = getattr(py_stat, 'ST_ATIME', None);
ST_CTIME = getattr(py_stat, 'ST_CTIME', None);
ST_DEV = getattr(py_stat, 'ST_DEV', None);
ST_GID = getattr(py_stat, 'ST_GID', None);
ST_INO = getattr(py_stat, 'ST_INO', None);
ST_MODE = getattr(py_stat, 'ST_MODE', None);
ST_MTIME = getattr(py_stat, 'ST_MTIME', None);
ST_NLINK = getattr(py_stat, 'ST_NLINK', None);
ST_SIZE = getattr(py_stat, 'ST_SIZE', None);
ST_UID = getattr(py_stat, 'ST_UID', None);
S_ENFMT = getattr(py_stat, 'S_ENFMT', None);
S_IEXEC = getattr(py_stat, 'S_IEXEC', None);
S_IFBLK = getattr(py_stat, 'S_IFBLK', None);
S_IFCHR = getattr(py_stat, 'S_IFCHR', None);
S_IFDIR = getattr(py_stat, 'S_IFDIR', None);
S_IFDOOR = getattr(py_stat, 'S_IFDOOR', None);
S_IFIFO = getattr(py_stat, 'S_IFIFO', None);
S_IFLNK = getattr(py_stat, 'S_IFLNK', None);
define S_IFMT(*args, **kwargs):
    return py_stat.S_IFMT(*args, **kwargs);

S_IFPORT = getattr(py_stat, 'S_IFPORT', None);
S_IFREG = getattr(py_stat, 'S_IFREG', None);
S_IFSOCK = getattr(py_stat, 'S_IFSOCK', None);
S_IFWHT = getattr(py_stat, 'S_IFWHT', None);
define S_IMODE(*args, **kwargs):
    return py_stat.S_IMODE(*args, **kwargs);

S_IREAD = getattr(py_stat, 'S_IREAD', None);
S_IRGRP = getattr(py_stat, 'S_IRGRP', None);
S_IROTH = getattr(py_stat, 'S_IROTH', None);
S_IRUSR = getattr(py_stat, 'S_IRUSR', None);
S_IRWXG = getattr(py_stat, 'S_IRWXG', None);
S_IRWXO = getattr(py_stat, 'S_IRWXO', None);
S_IRWXU = getattr(py_stat, 'S_IRWXU', None);
define S_ISBLK(*args, **kwargs):
    return py_stat.S_ISBLK(*args, **kwargs);

define S_ISCHR(*args, **kwargs):
    return py_stat.S_ISCHR(*args, **kwargs);

define S_ISDIR(*args, **kwargs):
    return py_stat.S_ISDIR(*args, **kwargs);

define S_ISDOOR(*args, **kwargs):
    return py_stat.S_ISDOOR(*args, **kwargs);

define S_ISFIFO(*args, **kwargs):
    return py_stat.S_ISFIFO(*args, **kwargs);

S_ISGID = getattr(py_stat, 'S_ISGID', None);
define S_ISLNK(*args, **kwargs):
    return py_stat.S_ISLNK(*args, **kwargs);

define S_ISPORT(*args, **kwargs):
    return py_stat.S_ISPORT(*args, **kwargs);

define S_ISREG(*args, **kwargs):
    return py_stat.S_ISREG(*args, **kwargs);

define S_ISSOCK(*args, **kwargs):
    return py_stat.S_ISSOCK(*args, **kwargs);

S_ISUID = getattr(py_stat, 'S_ISUID', None);
S_ISVTX = getattr(py_stat, 'S_ISVTX', None);
define S_ISWHT(*args, **kwargs):
    return py_stat.S_ISWHT(*args, **kwargs);

S_IWGRP = getattr(py_stat, 'S_IWGRP', None);
S_IWOTH = getattr(py_stat, 'S_IWOTH', None);
S_IWRITE = getattr(py_stat, 'S_IWRITE', None);
S_IWUSR = getattr(py_stat, 'S_IWUSR', None);
S_IXGRP = getattr(py_stat, 'S_IXGRP', None);
S_IXOTH = getattr(py_stat, 'S_IXOTH', None);
S_IXUSR = getattr(py_stat, 'S_IXUSR', None);
UF_APPEND = getattr(py_stat, 'UF_APPEND', None);
UF_COMPRESSED = getattr(py_stat, 'UF_COMPRESSED', None);
UF_DATAVAULT = getattr(py_stat, 'UF_DATAVAULT', None);
UF_HIDDEN = getattr(py_stat, 'UF_HIDDEN', None);
UF_IMMUTABLE = getattr(py_stat, 'UF_IMMUTABLE', None);
UF_NODUMP = getattr(py_stat, 'UF_NODUMP', None);
UF_NOUNLINK = getattr(py_stat, 'UF_NOUNLINK', None);
UF_OPAQUE = getattr(py_stat, 'UF_OPAQUE', None);
UF_SETTABLE = getattr(py_stat, 'UF_SETTABLE', None);
UF_TRACKED = getattr(py_stat, 'UF_TRACKED', None);
define filemode(*args, **kwargs):
    return py_stat.filemode(*args, **kwargs);

