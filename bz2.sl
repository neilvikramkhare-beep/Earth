// SL Package definition for bz2
package bz2;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('bz2')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('bz2.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'bz2' has no attribute '" + name + "'")



define init():
    pass
