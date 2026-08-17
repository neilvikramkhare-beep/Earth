// SL Package definition for io
package io;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('io')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('io.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'io' has no attribute '" + name + "'")



define init():
    pass
