// SL Package definition for faulthandler
package faulthandler;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('faulthandler')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('faulthandler.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'faulthandler' has no attribute '" + name + "'")



define init():
    pass
