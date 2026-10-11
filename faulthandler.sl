// Earth Language Explicit Wrapper for faulthandler
// Automatically generated with ALL functions

py_faulthandler = __import__('faulthandler')

define cancel_dump_traceback_later(*args, **kwargs):
    return py_faulthandler.cancel_dump_traceback_later(*args, **kwargs);

define disable(*args, **kwargs):
    return py_faulthandler.disable(*args, **kwargs);

define dump_c_stack(*args, **kwargs):
    return py_faulthandler.dump_c_stack(*args, **kwargs);

define dump_traceback(*args, **kwargs):
    return py_faulthandler.dump_traceback(*args, **kwargs);

define dump_traceback_later(*args, **kwargs):
    return py_faulthandler.dump_traceback_later(*args, **kwargs);

define enable(*args, **kwargs):
    return py_faulthandler.enable(*args, **kwargs);

define is_enabled(*args, **kwargs):
    return py_faulthandler.is_enabled(*args, **kwargs);

