// Earth Language Dynamic Wrapper for celery
import python_interop

define get_native_module():
    return python_interop.import_python_module('celery');
