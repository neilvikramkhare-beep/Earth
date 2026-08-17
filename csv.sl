// SL Package definition for csv
package csv;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('csv')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('csv.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'csv' has no attribute '" + name + "'")



define init():
    pass
