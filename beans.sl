// SL Package definition for beans
package beans;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('beans')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('beans.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'beans' has no attribute '" + name + "'")



define init():
    pass
