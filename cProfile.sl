// SL Package definition for cProfile
package cProfile;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('cProfile')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('cProfile.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'cProfile' has no attribute '" + name + "'")



define init():
    pass
