// SL Package definition for gc
package gc;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('gc')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('gc.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'gc' has no attribute '" + name + "'")



define init():
    pass
