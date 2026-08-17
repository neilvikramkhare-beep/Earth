// SL Package definition for http
package http;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('http')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('http.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'http' has no attribute '" + name + "'")



define init():
    pass
