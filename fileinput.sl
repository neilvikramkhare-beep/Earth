// SL Package definition for fileinput
package fileinput;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fileinput')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fileinput.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fileinput' has no attribute '" + name + "'")



define init():
    pass
