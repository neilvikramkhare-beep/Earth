// SL Package definition for ctypes
package ctypes;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('ctypes')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('ctypes.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'ctypes' has no attribute '" + name + "'")



define init():
    pass
