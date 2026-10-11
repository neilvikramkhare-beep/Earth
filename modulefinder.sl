// Earth Language Explicit Wrapper for modulefinder
// Automatically generated with ALL functions

py_modulefinder = __import__('modulefinder')

define AddPackagePath(*args, **kwargs):
    return py_modulefinder.AddPackagePath(*args, **kwargs);

Module = getattr(py_modulefinder, 'Module', None);
ModuleFinder = getattr(py_modulefinder, 'ModuleFinder', None);
define ReplacePackage(*args, **kwargs):
    return py_modulefinder.ReplacePackage(*args, **kwargs);

dis = getattr(py_modulefinder, 'dis', None);
importlib = getattr(py_modulefinder, 'importlib', None);
io = getattr(py_modulefinder, 'io', None);
marshal = getattr(py_modulefinder, 'marshal', None);
os = getattr(py_modulefinder, 'os', None);
packagePathMap = getattr(py_modulefinder, 'packagePathMap', None);
replacePackageMap = getattr(py_modulefinder, 'replacePackageMap', None);
sys = getattr(py_modulefinder, 'sys', None);
define test(*args, **kwargs):
    return py_modulefinder.test(*args, **kwargs);

