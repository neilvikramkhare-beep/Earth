// SL Package definition for Curl
package Curl;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('Curl')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('Curl.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'Curl' has no attribute '" + name + "'")



define init():
    pass
