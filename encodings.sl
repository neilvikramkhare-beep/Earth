// SL Package definition for encodings
package encodings;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('encodings')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('encodings.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'encodings' has no attribute '" + name + "'")



define init():
    pass
