// SL Package definition for copyreg
package copyreg;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('copyreg')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('copyreg.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'copyreg' has no attribute '" + name + "'")



define init():
    pass
