// Earth Language Explicit Wrapper for winreg
// Automatically generated with ALL functions

py_winreg = __import__('winreg')

define CloseKey(*args, **kwargs):
    return py_winreg.CloseKey(*args, **kwargs);

define ConnectRegistry(*args, **kwargs):
    return py_winreg.ConnectRegistry(*args, **kwargs);

define CreateKey(*args, **kwargs):
    return py_winreg.CreateKey(*args, **kwargs);

define CreateKeyEx(*args, **kwargs):
    return py_winreg.CreateKeyEx(*args, **kwargs);

define DeleteKey(*args, **kwargs):
    return py_winreg.DeleteKey(*args, **kwargs);

define DeleteKeyEx(*args, **kwargs):
    return py_winreg.DeleteKeyEx(*args, **kwargs);

define DeleteValue(*args, **kwargs):
    return py_winreg.DeleteValue(*args, **kwargs);

define DisableReflectionKey(*args, **kwargs):
    return py_winreg.DisableReflectionKey(*args, **kwargs);

define EnableReflectionKey(*args, **kwargs):
    return py_winreg.EnableReflectionKey(*args, **kwargs);

define EnumKey(*args, **kwargs):
    return py_winreg.EnumKey(*args, **kwargs);

define EnumValue(*args, **kwargs):
    return py_winreg.EnumValue(*args, **kwargs);

define ExpandEnvironmentStrings(*args, **kwargs):
    return py_winreg.ExpandEnvironmentStrings(*args, **kwargs);

define FlushKey(*args, **kwargs):
    return py_winreg.FlushKey(*args, **kwargs);

HKEYType = getattr(py_winreg, 'HKEYType', None);
HKEY_CLASSES_ROOT = getattr(py_winreg, 'HKEY_CLASSES_ROOT', None);
HKEY_CURRENT_CONFIG = getattr(py_winreg, 'HKEY_CURRENT_CONFIG', None);
HKEY_CURRENT_USER = getattr(py_winreg, 'HKEY_CURRENT_USER', None);
HKEY_DYN_DATA = getattr(py_winreg, 'HKEY_DYN_DATA', None);
HKEY_LOCAL_MACHINE = getattr(py_winreg, 'HKEY_LOCAL_MACHINE', None);
HKEY_PERFORMANCE_DATA = getattr(py_winreg, 'HKEY_PERFORMANCE_DATA', None);
HKEY_USERS = getattr(py_winreg, 'HKEY_USERS', None);
KEY_ALL_ACCESS = getattr(py_winreg, 'KEY_ALL_ACCESS', None);
KEY_CREATE_LINK = getattr(py_winreg, 'KEY_CREATE_LINK', None);
KEY_CREATE_SUB_KEY = getattr(py_winreg, 'KEY_CREATE_SUB_KEY', None);
KEY_ENUMERATE_SUB_KEYS = getattr(py_winreg, 'KEY_ENUMERATE_SUB_KEYS', None);
KEY_EXECUTE = getattr(py_winreg, 'KEY_EXECUTE', None);
KEY_NOTIFY = getattr(py_winreg, 'KEY_NOTIFY', None);
KEY_QUERY_VALUE = getattr(py_winreg, 'KEY_QUERY_VALUE', None);
KEY_READ = getattr(py_winreg, 'KEY_READ', None);
KEY_SET_VALUE = getattr(py_winreg, 'KEY_SET_VALUE', None);
KEY_WOW64_32KEY = getattr(py_winreg, 'KEY_WOW64_32KEY', None);
KEY_WOW64_64KEY = getattr(py_winreg, 'KEY_WOW64_64KEY', None);
KEY_WRITE = getattr(py_winreg, 'KEY_WRITE', None);
define LoadKey(*args, **kwargs):
    return py_winreg.LoadKey(*args, **kwargs);

define OpenKey(*args, **kwargs):
    return py_winreg.OpenKey(*args, **kwargs);

define OpenKeyEx(*args, **kwargs):
    return py_winreg.OpenKeyEx(*args, **kwargs);

define QueryInfoKey(*args, **kwargs):
    return py_winreg.QueryInfoKey(*args, **kwargs);

define QueryReflectionKey(*args, **kwargs):
    return py_winreg.QueryReflectionKey(*args, **kwargs);

define QueryValue(*args, **kwargs):
    return py_winreg.QueryValue(*args, **kwargs);

define QueryValueEx(*args, **kwargs):
    return py_winreg.QueryValueEx(*args, **kwargs);

REG_BINARY = getattr(py_winreg, 'REG_BINARY', None);
REG_CREATED_NEW_KEY = getattr(py_winreg, 'REG_CREATED_NEW_KEY', None);
REG_DWORD = getattr(py_winreg, 'REG_DWORD', None);
REG_DWORD_BIG_ENDIAN = getattr(py_winreg, 'REG_DWORD_BIG_ENDIAN', None);
REG_DWORD_LITTLE_ENDIAN = getattr(py_winreg, 'REG_DWORD_LITTLE_ENDIAN', None);
REG_EXPAND_SZ = getattr(py_winreg, 'REG_EXPAND_SZ', None);
REG_FULL_RESOURCE_DESCRIPTOR = getattr(py_winreg, 'REG_FULL_RESOURCE_DESCRIPTOR', None);
REG_LEGAL_CHANGE_FILTER = getattr(py_winreg, 'REG_LEGAL_CHANGE_FILTER', None);
REG_LEGAL_OPTION = getattr(py_winreg, 'REG_LEGAL_OPTION', None);
REG_LINK = getattr(py_winreg, 'REG_LINK', None);
REG_MULTI_SZ = getattr(py_winreg, 'REG_MULTI_SZ', None);
REG_NONE = getattr(py_winreg, 'REG_NONE', None);
REG_NOTIFY_CHANGE_ATTRIBUTES = getattr(py_winreg, 'REG_NOTIFY_CHANGE_ATTRIBUTES', None);
REG_NOTIFY_CHANGE_LAST_SET = getattr(py_winreg, 'REG_NOTIFY_CHANGE_LAST_SET', None);
REG_NOTIFY_CHANGE_NAME = getattr(py_winreg, 'REG_NOTIFY_CHANGE_NAME', None);
REG_NOTIFY_CHANGE_SECURITY = getattr(py_winreg, 'REG_NOTIFY_CHANGE_SECURITY', None);
REG_NO_LAZY_FLUSH = getattr(py_winreg, 'REG_NO_LAZY_FLUSH', None);
REG_OPENED_EXISTING_KEY = getattr(py_winreg, 'REG_OPENED_EXISTING_KEY', None);
REG_OPTION_BACKUP_RESTORE = getattr(py_winreg, 'REG_OPTION_BACKUP_RESTORE', None);
REG_OPTION_CREATE_LINK = getattr(py_winreg, 'REG_OPTION_CREATE_LINK', None);
REG_OPTION_NON_VOLATILE = getattr(py_winreg, 'REG_OPTION_NON_VOLATILE', None);
REG_OPTION_OPEN_LINK = getattr(py_winreg, 'REG_OPTION_OPEN_LINK', None);
REG_OPTION_RESERVED = getattr(py_winreg, 'REG_OPTION_RESERVED', None);
REG_OPTION_VOLATILE = getattr(py_winreg, 'REG_OPTION_VOLATILE', None);
REG_QWORD = getattr(py_winreg, 'REG_QWORD', None);
REG_QWORD_LITTLE_ENDIAN = getattr(py_winreg, 'REG_QWORD_LITTLE_ENDIAN', None);
REG_REFRESH_HIVE = getattr(py_winreg, 'REG_REFRESH_HIVE', None);
REG_RESOURCE_LIST = getattr(py_winreg, 'REG_RESOURCE_LIST', None);
REG_RESOURCE_REQUIREMENTS_LIST = getattr(py_winreg, 'REG_RESOURCE_REQUIREMENTS_LIST', None);
REG_SZ = getattr(py_winreg, 'REG_SZ', None);
REG_WHOLE_HIVE_VOLATILE = getattr(py_winreg, 'REG_WHOLE_HIVE_VOLATILE', None);
define SaveKey(*args, **kwargs):
    return py_winreg.SaveKey(*args, **kwargs);

define SetValue(*args, **kwargs):
    return py_winreg.SetValue(*args, **kwargs);

define SetValueEx(*args, **kwargs):
    return py_winreg.SetValueEx(*args, **kwargs);

error = getattr(py_winreg, 'error', None);
