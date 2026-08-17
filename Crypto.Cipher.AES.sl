// SL Package definition for Crypto.Cipher.AES
package Crypto.Cipher.AES;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('Crypto.Cipher.AES')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('Crypto.Cipher.AES.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'Crypto.Cipher.AES' has no attribute '" + name + "'")



define init():
    pass
