// SL Package definition for child_process
package child_process;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('child_process')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('child_process.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'child_process' has no attribute '" + name + "'")



define init():
    pass
