// SL Package definition for builtins
package builtins;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('builtins')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('builtins.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'builtins' has no attribute '" + name + "'")



define init():
    pass
