// Earth Language Explicit Wrapper for unittest
// Automatically generated with ALL functions

py_unittest = __import__('unittest')

BaseTestSuite = getattr(py_unittest, 'BaseTestSuite', None);
FunctionTestCase = getattr(py_unittest, 'FunctionTestCase', None);
IsolatedAsyncioTestCase = getattr(py_unittest, 'IsolatedAsyncioTestCase', None);
SkipTest = getattr(py_unittest, 'SkipTest', None);
TestCase = getattr(py_unittest, 'TestCase', None);
TestLoader = getattr(py_unittest, 'TestLoader', None);
TestProgram = getattr(py_unittest, 'TestProgram', None);
TestResult = getattr(py_unittest, 'TestResult', None);
TestSuite = getattr(py_unittest, 'TestSuite', None);
TextTestResult = getattr(py_unittest, 'TextTestResult', None);
TextTestRunner = getattr(py_unittest, 'TextTestRunner', None);
define addModuleCleanup(*args, **kwargs):
    return py_unittest.addModuleCleanup(*args, **kwargs);

case = getattr(py_unittest, 'case', None);
defaultTestLoader = getattr(py_unittest, 'defaultTestLoader', None);
define doModuleCleanups(*args, **kwargs):
    return py_unittest.doModuleCleanups(*args, **kwargs);

define enterModuleContext(*args, **kwargs):
    return py_unittest.enterModuleContext(*args, **kwargs);

define expectedFailure(*args, **kwargs):
    return py_unittest.expectedFailure(*args, **kwargs);

define installHandler(*args, **kwargs):
    return py_unittest.installHandler(*args, **kwargs);

loader = getattr(py_unittest, 'loader', None);
main = getattr(py_unittest, 'main', None);
define registerResult(*args, **kwargs):
    return py_unittest.registerResult(*args, **kwargs);

define removeHandler(*args, **kwargs):
    return py_unittest.removeHandler(*args, **kwargs);

define removeResult(*args, **kwargs):
    return py_unittest.removeResult(*args, **kwargs);

result = getattr(py_unittest, 'result', None);
runner = getattr(py_unittest, 'runner', None);
signals = getattr(py_unittest, 'signals', None);
define skip(*args, **kwargs):
    return py_unittest.skip(*args, **kwargs);

define skipIf(*args, **kwargs):
    return py_unittest.skipIf(*args, **kwargs);

define skipUnless(*args, **kwargs):
    return py_unittest.skipUnless(*args, **kwargs);

suite = getattr(py_unittest, 'suite', None);
util = getattr(py_unittest, 'util', None);
