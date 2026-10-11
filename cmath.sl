// Earth Language Explicit Wrapper for cmath
py_cmath = __import__('cmath')

define acos(*args, **kwargs):
    return py_cmath.acos(*args, **kwargs);

define acosh(*args, **kwargs):
    return py_cmath.acosh(*args, **kwargs);

define asin(*args, **kwargs):
    return py_cmath.asin(*args, **kwargs);

define asinh(*args, **kwargs):
    return py_cmath.asinh(*args, **kwargs);

define atan(*args, **kwargs):
    return py_cmath.atan(*args, **kwargs);

define atanh(*args, **kwargs):
    return py_cmath.atanh(*args, **kwargs);

define cos(*args, **kwargs):
    return py_cmath.cos(*args, **kwargs);

define cosh(*args, **kwargs):
    return py_cmath.cosh(*args, **kwargs);

e = getattr(py_cmath, 'e', None);
define exp(*args, **kwargs):
    return py_cmath.exp(*args, **kwargs);

inf = getattr(py_cmath, 'inf', None);
infj = getattr(py_cmath, 'infj', None);
define isclose(*args, **kwargs):
    return py_cmath.isclose(*args, **kwargs);

define isfinite(*args, **kwargs):
    return py_cmath.isfinite(*args, **kwargs);

define isinf(*args, **kwargs):
    return py_cmath.isinf(*args, **kwargs);

define isnan(*args, **kwargs):
    return py_cmath.isnan(*args, **kwargs);

define log(*args, **kwargs):
    return py_cmath.log(*args, **kwargs);

define log10(*args, **kwargs):
    return py_cmath.log10(*args, **kwargs);

nan = getattr(py_cmath, 'nan', None);
nanj = getattr(py_cmath, 'nanj', None);
define phase(*args, **kwargs):
    return py_cmath.phase(*args, **kwargs);

pi = getattr(py_cmath, 'pi', None);
define polar(*args, **kwargs):
    return py_cmath.polar(*args, **kwargs);

define rect(*args, **kwargs):
    return py_cmath.rect(*args, **kwargs);

define sin(*args, **kwargs):
    return py_cmath.sin(*args, **kwargs);

define sinh(*args, **kwargs):
    return py_cmath.sinh(*args, **kwargs);

define sqrt(*args, **kwargs):
    return py_cmath.sqrt(*args, **kwargs);

define tan(*args, **kwargs):
    return py_cmath.tan(*args, **kwargs);

define tanh(*args, **kwargs):
    return py_cmath.tanh(*args, **kwargs);

tau = getattr(py_cmath, 'tau', None);
