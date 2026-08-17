// SL Package definition for dis
package dis;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('dis')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('dis.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'dis' has no attribute '" + name + "'")



define init():
    pass
