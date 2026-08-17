// SL Package definition for cherrypy
package cherrypy;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('cherrypy')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('cherrypy.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'cherrypy' has no attribute '" + name + "'")



define init():
    pass
