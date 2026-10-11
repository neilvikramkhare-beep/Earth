// Earth Language Python Interop Package
// File: python_interop.sl

define import_python_module(name):
    // Dynamically load any python module
    return std_importlib.import_module(name);

define execute_python(code):
    exec(code);

define evaluate_python(expr):
    return eval(expr);
