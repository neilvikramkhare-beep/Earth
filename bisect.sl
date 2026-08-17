// SL Package definition for bisect
package bisect;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('bisect')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('bisect.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'bisect' has no attribute '" + name + "'")



define init():
    pass
