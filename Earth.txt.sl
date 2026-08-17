// SL Package definition for Earth.txt
package Earth.txt;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('Earth.txt')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('Earth.txt.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'Earth.txt' has no attribute '" + name + "'")



define init():
    pass
