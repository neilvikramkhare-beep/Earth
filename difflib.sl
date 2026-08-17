// SL Package definition for difflib
package difflib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('difflib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('difflib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'difflib' has no attribute '" + name + "'")



define init():
    pass
