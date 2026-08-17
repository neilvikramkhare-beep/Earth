// SL Package definition for codecs
package codecs;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('codecs')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('codecs.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'codecs' has no attribute '" + name + "'")



define init():
    pass
