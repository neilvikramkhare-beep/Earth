// SL Package definition for filecmp
package filecmp;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('filecmp')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('filecmp.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'filecmp' has no attribute '" + name + "'")



define init():
    pass
