// SL Package definition for bottle
package bottle;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('bottle')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('bottle.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'bottle' has no attribute '" + name + "'")



define init():
    pass
