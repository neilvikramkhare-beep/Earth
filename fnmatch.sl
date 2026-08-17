// SL Package definition for fnmatch
package fnmatch;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fnmatch')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fnmatch.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fnmatch' has no attribute '" + name + "'")



define init():
    pass
