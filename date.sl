// SL Package definition for date
package date;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('date')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('date.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'date' has no attribute '" + name + "'")



define init():
    pass
