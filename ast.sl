// SL Package definition for ast
package ast;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('ast')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('ast.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'ast' has no attribute '" + name + "'")



define init():
    pass
