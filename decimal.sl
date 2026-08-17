// SL Package definition for decimal
package decimal;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('decimal')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('decimal.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'decimal' has no attribute '" + name + "'")



define init():
    pass
