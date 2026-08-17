// SL Package definition for contextvars
package contextvars;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('contextvars')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('contextvars.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'contextvars' has no attribute '" + name + "'")



define init():
    pass
