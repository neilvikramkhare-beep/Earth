// SL Package definition for heapq
package heapq;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('heapq')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('heapq.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'heapq' has no attribute '" + name + "'")



define init():
    pass
