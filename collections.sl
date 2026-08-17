// SL Package definition for collections
package collections;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('collections')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('collections.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'collections' has no attribute '" + name + "'")



define init():
    pass
