// SL Package definition for hmac
package hmac;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('hmac')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('hmac.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'hmac' has no attribute '" + name + "'")



define init():
    pass
