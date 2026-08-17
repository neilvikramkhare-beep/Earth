// SL Package definition for dbm
package dbm;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('dbm')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('dbm.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'dbm' has no attribute '" + name + "'")



define init():
    pass
