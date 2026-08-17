// SL Package definition for catboost
package catboost;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('catboost')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('catboost.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'catboost' has no attribute '" + name + "'")



define init():
    pass
