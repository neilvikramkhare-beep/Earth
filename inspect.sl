// SL Package definition for inspect
package inspect;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('inspect')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('inspect.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'inspect' has no attribute '" + name + "'")



define init():
    pass
