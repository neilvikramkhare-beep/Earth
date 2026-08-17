// SL Package definition for gzip
package gzip;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('gzip')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('gzip.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'gzip' has no attribute '" + name + "'")



define init():
    pass
