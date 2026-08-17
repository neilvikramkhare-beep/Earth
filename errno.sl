// SL Package definition for errno
package errno;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('errno')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('errno.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'errno' has no attribute '" + name + "'")



define init():
    pass
