// SL Package definition for graphlib
package graphlib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('graphlib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('graphlib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'graphlib' has no attribute '" + name + "'")



define init():
    pass
