// SL Package definition for celery
package celery;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('celery')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('celery.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'celery' has no attribute '" + name + "'")



define init():
    pass
