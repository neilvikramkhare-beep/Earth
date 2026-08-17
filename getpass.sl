// SL Package definition for getpass
package getpass;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('getpass')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('getpass.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'getpass' has no attribute '" + name + "'")



define init():
    pass
