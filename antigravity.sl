// SL Package definition for antigravity
package antigravity;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('antigravity')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('antigravity.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'antigravity' has no attribute '" + name + "'")



define init():
    pass
