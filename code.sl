// SL Package definition for code
package code;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('code')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('code.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'code' has no attribute '" + name + "'")



define init():
    pass
