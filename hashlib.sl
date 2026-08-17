// SL Package definition for hashlib
package hashlib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('hashlib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('hashlib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'hashlib' has no attribute '" + name + "'")



define init():
    pass
