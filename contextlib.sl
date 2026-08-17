// SL Package definition for contextlib
package contextlib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('contextlib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('contextlib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'contextlib' has no attribute '" + name + "'")



define init():
    pass
