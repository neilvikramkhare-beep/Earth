// Earth Language Explicit Wrapper for doctest
// Automatically generated with ALL functions

py_doctest = __import__('doctest')

ANSIColors = getattr(py_doctest, 'ANSIColors', None);
BLANKLINE_MARKER = getattr(py_doctest, 'BLANKLINE_MARKER', None);
COMPARISON_FLAGS = getattr(py_doctest, 'COMPARISON_FLAGS', None);
DONT_ACCEPT_BLANKLINE = getattr(py_doctest, 'DONT_ACCEPT_BLANKLINE', None);
DONT_ACCEPT_TRUE_FOR_1 = getattr(py_doctest, 'DONT_ACCEPT_TRUE_FOR_1', None);
DebugRunner = getattr(py_doctest, 'DebugRunner', None);
DocFileCase = getattr(py_doctest, 'DocFileCase', None);
define DocFileSuite(*args, **kwargs):
    return py_doctest.DocFileSuite(*args, **kwargs);

define DocFileTest(*args, **kwargs):
    return py_doctest.DocFileTest(*args, **kwargs);

DocTest = getattr(py_doctest, 'DocTest', None);
DocTestCase = getattr(py_doctest, 'DocTestCase', None);
DocTestFailure = getattr(py_doctest, 'DocTestFailure', None);
DocTestFinder = getattr(py_doctest, 'DocTestFinder', None);
DocTestParser = getattr(py_doctest, 'DocTestParser', None);
DocTestRunner = getattr(py_doctest, 'DocTestRunner', None);
define DocTestSuite(*args, **kwargs):
    return py_doctest.DocTestSuite(*args, **kwargs);

ELLIPSIS = getattr(py_doctest, 'ELLIPSIS', None);
ELLIPSIS_MARKER = getattr(py_doctest, 'ELLIPSIS_MARKER', None);
Example = getattr(py_doctest, 'Example', None);
FAIL_FAST = getattr(py_doctest, 'FAIL_FAST', None);
IGNORE_EXCEPTION_DETAIL = getattr(py_doctest, 'IGNORE_EXCEPTION_DETAIL', None);
IncrementalNewlineDecoder = getattr(py_doctest, 'IncrementalNewlineDecoder', None);
NORMALIZE_WHITESPACE = getattr(py_doctest, 'NORMALIZE_WHITESPACE', None);
OPTIONFLAGS_BY_NAME = getattr(py_doctest, 'OPTIONFLAGS_BY_NAME', None);
OutputChecker = getattr(py_doctest, 'OutputChecker', None);
REPORTING_FLAGS = getattr(py_doctest, 'REPORTING_FLAGS', None);
REPORT_CDIFF = getattr(py_doctest, 'REPORT_CDIFF', None);
REPORT_NDIFF = getattr(py_doctest, 'REPORT_NDIFF', None);
REPORT_ONLY_FIRST_FAILURE = getattr(py_doctest, 'REPORT_ONLY_FIRST_FAILURE', None);
REPORT_UDIFF = getattr(py_doctest, 'REPORT_UDIFF', None);
SKIP = getattr(py_doctest, 'SKIP', None);
SkipDocTestCase = getattr(py_doctest, 'SkipDocTestCase', None);
StringIO = getattr(py_doctest, 'StringIO', None);
TestResults = getattr(py_doctest, 'TestResults', None);
UnexpectedException = getattr(py_doctest, 'UnexpectedException', None);
define can_colorize(*args, **kwargs):
    return py_doctest.can_colorize(*args, **kwargs);

define debug(*args, **kwargs):
    return py_doctest.debug(*args, **kwargs);

define debug_script(*args, **kwargs):
    return py_doctest.debug_script(*args, **kwargs);

define debug_src(*args, **kwargs):
    return py_doctest.debug_src(*args, **kwargs);

difflib = getattr(py_doctest, 'difflib', None);
functools = getattr(py_doctest, 'functools', None);
inspect = getattr(py_doctest, 'inspect', None);
linecache = getattr(py_doctest, 'linecache', None);
master = getattr(py_doctest, 'master', None);
define namedtuple(*args, **kwargs):
    return py_doctest.namedtuple(*args, **kwargs);

os = getattr(py_doctest, 'os', None);
pdb = getattr(py_doctest, 'pdb', None);
re = getattr(py_doctest, 're', None);
define register_optionflag(*args, **kwargs):
    return py_doctest.register_optionflag(*args, **kwargs);

define run_docstring_examples(*args, **kwargs):
    return py_doctest.run_docstring_examples(*args, **kwargs);

define script_from_examples(*args, **kwargs):
    return py_doctest.script_from_examples(*args, **kwargs);

define set_unittest_reportflags(*args, **kwargs):
    return py_doctest.set_unittest_reportflags(*args, **kwargs);

sys = getattr(py_doctest, 'sys', None);
define testfile(*args, **kwargs):
    return py_doctest.testfile(*args, **kwargs);

define testmod(*args, **kwargs):
    return py_doctest.testmod(*args, **kwargs);

define testsource(*args, **kwargs):
    return py_doctest.testsource(*args, **kwargs);

traceback = getattr(py_doctest, 'traceback', None);
unittest = getattr(py_doctest, 'unittest', None);
