// Earth Language Explicit Wrapper for itertools
// Automatically generated with ALL functions

py_itertools = __import__('itertools')

accumulate = getattr(py_itertools, 'accumulate', None);
batched = getattr(py_itertools, 'batched', None);
chain = getattr(py_itertools, 'chain', None);
combinations = getattr(py_itertools, 'combinations', None);
combinations_with_replacement = getattr(py_itertools, 'combinations_with_replacement', None);
compress = getattr(py_itertools, 'compress', None);
count = getattr(py_itertools, 'count', None);
cycle = getattr(py_itertools, 'cycle', None);
dropwhile = getattr(py_itertools, 'dropwhile', None);
filterfalse = getattr(py_itertools, 'filterfalse', None);
groupby = getattr(py_itertools, 'groupby', None);
islice = getattr(py_itertools, 'islice', None);
pairwise = getattr(py_itertools, 'pairwise', None);
permutations = getattr(py_itertools, 'permutations', None);
product = getattr(py_itertools, 'product', None);
repeat = getattr(py_itertools, 'repeat', None);
starmap = getattr(py_itertools, 'starmap', None);
takewhile = getattr(py_itertools, 'takewhile', None);
define tee(*args, **kwargs):
    return py_itertools.tee(*args, **kwargs);

zip_longest = getattr(py_itertools, 'zip_longest', None);
