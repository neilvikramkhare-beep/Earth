// SL Package definition for colorsys
package colorsys;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('colorsys')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('colorsys.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'colorsys' has no attribute '" + name + "'")



define init():
    pass
