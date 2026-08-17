// SL Package definition for importlib
package importlib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('importlib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('importlib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'importlib' has no attribute '" + name + "'")



define init():
    pass
