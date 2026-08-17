// SL Package definition for fs
package fs;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fs')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fs.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fs' has no attribute '" + name + "'")



define init():
    pass
