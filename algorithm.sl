// SL Package definition for algorithm
package algorithm;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('algorithm')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('algorithm.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'algorithm' has no attribute '" + name + "'")



define init():
    pass
