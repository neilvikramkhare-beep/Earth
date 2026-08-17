// SL Package definition for atexit
package atexit;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('atexit')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('atexit.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'atexit' has no attribute '" + name + "'")



define init():
    pass
