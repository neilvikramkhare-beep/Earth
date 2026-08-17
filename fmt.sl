// SL Package definition for fmt
package fmt;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fmt')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fmt.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fmt' has no attribute '" + name + "'")



define init():
    pass
