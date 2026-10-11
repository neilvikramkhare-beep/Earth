// Earth Language Explicit Wrapper for gc
// Automatically generated with ALL functions

py_gc = __import__('gc')

DEBUG_COLLECTABLE = getattr(py_gc, 'DEBUG_COLLECTABLE', None);
DEBUG_LEAK = getattr(py_gc, 'DEBUG_LEAK', None);
DEBUG_SAVEALL = getattr(py_gc, 'DEBUG_SAVEALL', None);
DEBUG_STATS = getattr(py_gc, 'DEBUG_STATS', None);
DEBUG_UNCOLLECTABLE = getattr(py_gc, 'DEBUG_UNCOLLECTABLE', None);
callbacks = getattr(py_gc, 'callbacks', None);
define collect(*args, **kwargs):
    return py_gc.collect(*args, **kwargs);

define disable(*args, **kwargs):
    return py_gc.disable(*args, **kwargs);

define enable(*args, **kwargs):
    return py_gc.enable(*args, **kwargs);

define freeze(*args, **kwargs):
    return py_gc.freeze(*args, **kwargs);

garbage = getattr(py_gc, 'garbage', None);
define get_count(*args, **kwargs):
    return py_gc.get_count(*args, **kwargs);

define get_debug(*args, **kwargs):
    return py_gc.get_debug(*args, **kwargs);

define get_freeze_count(*args, **kwargs):
    return py_gc.get_freeze_count(*args, **kwargs);

define get_objects(*args, **kwargs):
    return py_gc.get_objects(*args, **kwargs);

define get_referents(*args, **kwargs):
    return py_gc.get_referents(*args, **kwargs);

define get_referrers(*args, **kwargs):
    return py_gc.get_referrers(*args, **kwargs);

define get_stats(*args, **kwargs):
    return py_gc.get_stats(*args, **kwargs);

define get_threshold(*args, **kwargs):
    return py_gc.get_threshold(*args, **kwargs);

define is_finalized(*args, **kwargs):
    return py_gc.is_finalized(*args, **kwargs);

define is_tracked(*args, **kwargs):
    return py_gc.is_tracked(*args, **kwargs);

define isenabled(*args, **kwargs):
    return py_gc.isenabled(*args, **kwargs);

define set_debug(*args, **kwargs):
    return py_gc.set_debug(*args, **kwargs);

define set_threshold(*args, **kwargs):
    return py_gc.set_threshold(*args, **kwargs);

define unfreeze(*args, **kwargs):
    return py_gc.unfreeze(*args, **kwargs);

