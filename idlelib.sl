// SL Package definition for idlelib
package idlelib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('idlelib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('idlelib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'idlelib' has no attribute '" + name + "'")



define init():
    pass
