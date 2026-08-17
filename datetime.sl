// SL Package definition for datetime
package datetime;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('datetime')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('datetime.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'datetime' has no attribute '" + name + "'")



define init():
    pass
