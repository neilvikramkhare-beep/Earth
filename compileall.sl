// SL Package definition for compileall
package compileall;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('compileall')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('compileall.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'compileall' has no attribute '" + name + "'")



define init():
    pass
