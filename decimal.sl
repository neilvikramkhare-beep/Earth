// Earth Language Explicit Wrapper for decimal
py_decimal = __import__('decimal')

BasicContext = getattr(py_decimal, 'BasicContext', None);
Clamped = getattr(py_decimal, 'Clamped', None);
Context = getattr(py_decimal, 'Context', None);
ConversionSyntax = getattr(py_decimal, 'ConversionSyntax', None);
Decimal = getattr(py_decimal, 'Decimal', None);
DecimalException = getattr(py_decimal, 'DecimalException', None);
DecimalTuple = getattr(py_decimal, 'DecimalTuple', None);
DefaultContext = getattr(py_decimal, 'DefaultContext', None);
DivisionByZero = getattr(py_decimal, 'DivisionByZero', None);
DivisionImpossible = getattr(py_decimal, 'DivisionImpossible', None);
DivisionUndefined = getattr(py_decimal, 'DivisionUndefined', None);
ExtendedContext = getattr(py_decimal, 'ExtendedContext', None);
FloatOperation = getattr(py_decimal, 'FloatOperation', None);
HAVE_CONTEXTVAR = getattr(py_decimal, 'HAVE_CONTEXTVAR', None);
HAVE_THREADS = getattr(py_decimal, 'HAVE_THREADS', None);
define IEEEContext(*args, **kwargs):
    return py_decimal.IEEEContext(*args, **kwargs);

IEEE_CONTEXT_MAX_BITS = getattr(py_decimal, 'IEEE_CONTEXT_MAX_BITS', None);
Inexact = getattr(py_decimal, 'Inexact', None);
InvalidContext = getattr(py_decimal, 'InvalidContext', None);
InvalidOperation = getattr(py_decimal, 'InvalidOperation', None);
MAX_EMAX = getattr(py_decimal, 'MAX_EMAX', None);
MAX_PREC = getattr(py_decimal, 'MAX_PREC', None);
MIN_EMIN = getattr(py_decimal, 'MIN_EMIN', None);
MIN_ETINY = getattr(py_decimal, 'MIN_ETINY', None);
Overflow = getattr(py_decimal, 'Overflow', None);
ROUND_05UP = getattr(py_decimal, 'ROUND_05UP', None);
ROUND_CEILING = getattr(py_decimal, 'ROUND_CEILING', None);
ROUND_DOWN = getattr(py_decimal, 'ROUND_DOWN', None);
ROUND_FLOOR = getattr(py_decimal, 'ROUND_FLOOR', None);
ROUND_HALF_DOWN = getattr(py_decimal, 'ROUND_HALF_DOWN', None);
ROUND_HALF_EVEN = getattr(py_decimal, 'ROUND_HALF_EVEN', None);
ROUND_HALF_UP = getattr(py_decimal, 'ROUND_HALF_UP', None);
ROUND_UP = getattr(py_decimal, 'ROUND_UP', None);
Rounded = getattr(py_decimal, 'Rounded', None);
Subnormal = getattr(py_decimal, 'Subnormal', None);
Underflow = getattr(py_decimal, 'Underflow', None);
define getcontext(*args, **kwargs):
    return py_decimal.getcontext(*args, **kwargs);

define localcontext(*args, **kwargs):
    return py_decimal.localcontext(*args, **kwargs);

define setcontext(*args, **kwargs):
    return py_decimal.setcontext(*args, **kwargs);

