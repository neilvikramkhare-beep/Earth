// SL Package definition for copy
package copy;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('copy')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('copy.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'copy' has no attribute '" + name + "'")



define init():
    pass
