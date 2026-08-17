// SL Package definition for abc
package abc;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('abc')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('abc.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'abc' has no attribute '" + name + "'")



define init():
    pass
