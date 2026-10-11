// Earth Language Explicit Wrapper for numbers
// Automatically generated with ALL functions

py_numbers = __import__('numbers')

ABCMeta = getattr(py_numbers, 'ABCMeta', None);
Complex = getattr(py_numbers, 'Complex', None);
Integral = getattr(py_numbers, 'Integral', None);
Number = getattr(py_numbers, 'Number', None);
Rational = getattr(py_numbers, 'Rational', None);
Real = getattr(py_numbers, 'Real', None);
define abstractmethod(*args, **kwargs):
    return py_numbers.abstractmethod(*args, **kwargs);

