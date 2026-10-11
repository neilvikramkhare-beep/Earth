// Earth Language Explicit Wrapper for socketserver
// Automatically generated with ALL functions

py_socketserver = __import__('socketserver')

BaseRequestHandler = getattr(py_socketserver, 'BaseRequestHandler', None);
BaseServer = getattr(py_socketserver, 'BaseServer', None);
BufferedIOBase = getattr(py_socketserver, 'BufferedIOBase', None);
DatagramRequestHandler = getattr(py_socketserver, 'DatagramRequestHandler', None);
StreamRequestHandler = getattr(py_socketserver, 'StreamRequestHandler', None);
TCPServer = getattr(py_socketserver, 'TCPServer', None);
ThreadingMixIn = getattr(py_socketserver, 'ThreadingMixIn', None);
ThreadingTCPServer = getattr(py_socketserver, 'ThreadingTCPServer', None);
ThreadingUDPServer = getattr(py_socketserver, 'ThreadingUDPServer', None);
UDPServer = getattr(py_socketserver, 'UDPServer', None);
os = getattr(py_socketserver, 'os', None);
selectors = getattr(py_socketserver, 'selectors', None);
socket = getattr(py_socketserver, 'socket', None);
sys = getattr(py_socketserver, 'sys', None);
threading = getattr(py_socketserver, 'threading', None);
define time(*args, **kwargs):
    return py_socketserver.time(*args, **kwargs);

