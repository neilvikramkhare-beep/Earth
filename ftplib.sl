// SL Package definition for ftplib
package ftplib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('ftplib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('ftplib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'ftplib' has no attribute '" + name + "'")



define init():
    pass
