// SL Package definition for interpreter.py
package interpreter.py;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('interpreter.py')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('interpreter.py.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'interpreter.py' has no attribute '" + name + "'")



define init():
    pass
