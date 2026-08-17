// SL Package definition for bdb
package bdb;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('bdb')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('bdb.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'bdb' has no attribute '" + name + "'")



define init():
    pass
