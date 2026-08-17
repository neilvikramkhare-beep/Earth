// SL Package definition for glob
package glob;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('glob')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('glob.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'glob' has no attribute '" + name + "'")



define init():
    pass
