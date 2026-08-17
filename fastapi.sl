// SL Package definition for fastapi
package fastapi;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fastapi')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fastapi.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fastapi' has no attribute '" + name + "'")



define init():
    pass
