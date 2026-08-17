// SL Package definition for iostream
package iostream;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('iostream')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('iostream.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'iostream' has no attribute '" + name + "'")



define init():
    pass
