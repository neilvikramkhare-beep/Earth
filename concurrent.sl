// SL Package definition for concurrent
package concurrent;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('concurrent')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('concurrent.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'concurrent' has no attribute '" + name + "'")



define init():
    pass
