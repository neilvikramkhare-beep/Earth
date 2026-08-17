// SL Package definition for getopt
package getopt;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('getopt')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('getopt.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'getopt' has no attribute '" + name + "'")



define init():
    pass
