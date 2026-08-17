// SL Package definition for compression
package compression;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('compression')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('compression.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'compression' has no attribute '" + name + "'")



define init():
    pass
