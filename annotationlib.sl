// SL Package definition for annotationlib
package annotationlib;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('annotationlib')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('annotationlib.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'annotationlib' has no attribute '" + name + "'")



define init():
    pass
