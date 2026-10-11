// Earth Language Dynamic Wrapper for curses
import python_interop

define get_native_module():
    return python_interop.import_python_module('curses');
