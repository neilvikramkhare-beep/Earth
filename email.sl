// SL Package definition for email
package email;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('email')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('email.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'email' has no attribute '" + name + "'")



define init():
    pass
