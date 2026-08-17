// SL Package definition for events
package events;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('events')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('events.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'events' has no attribute '" + name + "'")



define init():
    pass
