// SL Package definition for cmd
package cmd;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('cmd')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('cmd.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'cmd' has no attribute '" + name + "'")



define init():
    pass
