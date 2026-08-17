// SL Package definition for gettext
package gettext;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('gettext')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('gettext.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'gettext' has no attribute '" + name + "'")



define init():
    pass
