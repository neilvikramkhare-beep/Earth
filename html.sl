// SL Package definition for html
package html;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('html')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('html.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'html' has no attribute '" + name + "'")



define init():
    pass
