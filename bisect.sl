// Earth Language Explicit Wrapper for bisect
py_bisect = __import__('bisect')

define bisect(*args, **kwargs):
    return py_bisect.bisect(*args, **kwargs);

define bisect_left(*args, **kwargs):
    return py_bisect.bisect_left(*args, **kwargs);

define bisect_right(*args, **kwargs):
    return py_bisect.bisect_right(*args, **kwargs);

define insort(*args, **kwargs):
    return py_bisect.insort(*args, **kwargs);

define insort_left(*args, **kwargs):
    return py_bisect.insort_left(*args, **kwargs);

define insort_right(*args, **kwargs):
    return py_bisect.insort_right(*args, **kwargs);

