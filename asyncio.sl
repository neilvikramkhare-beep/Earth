// SL Package definition for asyncio
package asyncio;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('asyncio')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('asyncio.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'asyncio' has no attribute '" + name + "'")



define init():
    pass
