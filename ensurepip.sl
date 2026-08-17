// SL Package definition for ensurepip
package ensurepip;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('ensurepip')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('ensurepip.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'ensurepip' has no attribute '" + name + "'")



define init():
    pass
