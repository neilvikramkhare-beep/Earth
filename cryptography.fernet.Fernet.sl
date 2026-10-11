// Earth Language Dynamic Wrapper for cryptography.fernet.Fernet
import python_interop

define get_native_module():
    return python_interop.import_python_module('cryptography.fernet.Fernet');
