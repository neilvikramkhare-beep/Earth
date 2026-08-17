// SL Package definition for base64
package base64;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('base64')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('base64.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'base64' has no attribute '" + name + "'")



define init():
    pass
