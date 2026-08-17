// SL Package definition for bs4
package bs4;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('bs4')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('bs4.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'bs4' has no attribute '" + name + "'")



define init():
    pass
