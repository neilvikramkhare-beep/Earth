// SL Package definition for fileutils
package fileutils;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('fileutils')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('fileutils.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'fileutils' has no attribute '" + name + "'")



define init():
    pass
