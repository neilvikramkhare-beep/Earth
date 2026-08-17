// SL Package definition for grp
package grp;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('grp')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('grp.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'grp' has no attribute '" + name + "'")



define init():
    pass
