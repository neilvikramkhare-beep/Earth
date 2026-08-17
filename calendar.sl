// SL Package definition for calendar
package calendar;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('calendar')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('calendar.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'calendar' has no attribute '" + name + "'")



define init():
    pass
