// Earth Language Explicit Wrapper for cherrypy
py_cherrypy = __import__('cherrypy')

Application = getattr(py_cherrypy, 'Application', None);
CherryPyException = getattr(py_cherrypy, 'CherryPyException', None);
HTTPError = getattr(py_cherrypy, 'HTTPError', None);
HTTPRedirect = getattr(py_cherrypy, 'HTTPRedirect', None);
InternalRedirect = getattr(py_cherrypy, 'InternalRedirect', None);
NotFound = getattr(py_cherrypy, 'NotFound', None);
Tool = getattr(py_cherrypy, 'Tool', None);
checker = getattr(py_cherrypy, 'checker', None);
config = getattr(py_cherrypy, 'config', None);
dispatch = getattr(py_cherrypy, 'dispatch', None);
engine = getattr(py_cherrypy, 'engine', None);
define expose(*args, **kwargs):
    return py_cherrypy.expose(*args, **kwargs);

importlib_metadata = getattr(py_cherrypy, 'importlib_metadata', None);
lib = getattr(py_cherrypy, 'lib', None);
log = getattr(py_cherrypy, 'log', None);
define popargs(*args, **kwargs):
    return py_cherrypy.popargs(*args, **kwargs);

process = getattr(py_cherrypy, 'process', None);
define quickstart(*args, **kwargs):
    return py_cherrypy.quickstart(*args, **kwargs);

request = getattr(py_cherrypy, 'request', None);
response = getattr(py_cherrypy, 'response', None);
server = getattr(py_cherrypy, 'server', None);
serving = getattr(py_cherrypy, 'serving', None);
thread_data = getattr(py_cherrypy, 'thread_data', None);
tools = getattr(py_cherrypy, 'tools', None);
tree = getattr(py_cherrypy, 'tree', None);
define url(*args, **kwargs):
    return py_cherrypy.url(*args, **kwargs);

wsgi = getattr(py_cherrypy, 'wsgi', None);
