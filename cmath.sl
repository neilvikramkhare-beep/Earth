// SL Package definition for cmath
package cmath;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('cmath')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('cmath.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'cmath' has no attribute '" + name + "'")



define init():
    pass
