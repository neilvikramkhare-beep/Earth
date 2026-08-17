// SL Package definition for django
package django;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('django')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('django.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'django' has no attribute '" + name + "'")



define init():
    pass
