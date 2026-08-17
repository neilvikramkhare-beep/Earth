// SL Package definition for genericpath
package genericpath;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('genericpath')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('genericpath.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'genericpath' has no attribute '" + name + "'")



define init():
    pass
