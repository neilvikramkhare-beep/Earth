// SL Package definition for configparser
package configparser;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('configparser')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('configparser.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'configparser' has no attribute '" + name + "'")



define init():
    pass
