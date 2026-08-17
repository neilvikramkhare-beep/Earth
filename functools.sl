// SL Package definition for functools
package functools;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('functools')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('functools.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'functools' has no attribute '" + name + "'")



define init():
    pass
