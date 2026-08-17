// SL Package definition for cryptography.fernet.Fernet
package cryptography.fernet.Fernet;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('cryptography.fernet.Fernet')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('cryptography.fernet.Fernet.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'cryptography.fernet.Fernet' has no attribute '" + name + "'")



define init():
    pass
