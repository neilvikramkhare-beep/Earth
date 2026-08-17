// SL Package definition for dataclasses
package dataclasses;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('dataclasses')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('dataclasses.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'dataclasses' has no attribute '" + name + "'")



define init():
    pass
