// SL Package definition for digest
package digest;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('digest')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('digest.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'digest' has no attribute '" + name + "'")



define init():
    pass
