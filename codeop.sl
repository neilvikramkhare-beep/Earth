// SL Package definition for codeop
package codeop;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('codeop')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('codeop.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'codeop' has no attribute '" + name + "'")



define init():
    pass
