// Earth Language Explicit Wrapper for logging
// Automatically generated with ALL functions

py_logging = __import__('logging')

BASIC_FORMAT = getattr(py_logging, 'BASIC_FORMAT', None);
BufferingFormatter = getattr(py_logging, 'BufferingFormatter', None);
CRITICAL = getattr(py_logging, 'CRITICAL', None);
DEBUG = getattr(py_logging, 'DEBUG', None);
ERROR = getattr(py_logging, 'ERROR', None);
FATAL = getattr(py_logging, 'FATAL', None);
FileHandler = getattr(py_logging, 'FileHandler', None);
Filter = getattr(py_logging, 'Filter', None);
Filterer = getattr(py_logging, 'Filterer', None);
Formatter = getattr(py_logging, 'Formatter', None);
GenericAlias = getattr(py_logging, 'GenericAlias', None);
Handler = getattr(py_logging, 'Handler', None);
INFO = getattr(py_logging, 'INFO', None);
LogRecord = getattr(py_logging, 'LogRecord', None);
Logger = getattr(py_logging, 'Logger', None);
LoggerAdapter = getattr(py_logging, 'LoggerAdapter', None);
Manager = getattr(py_logging, 'Manager', None);
NOTSET = getattr(py_logging, 'NOTSET', None);
NullHandler = getattr(py_logging, 'NullHandler', None);
PercentStyle = getattr(py_logging, 'PercentStyle', None);
PlaceHolder = getattr(py_logging, 'PlaceHolder', None);
RootLogger = getattr(py_logging, 'RootLogger', None);
StrFormatStyle = getattr(py_logging, 'StrFormatStyle', None);
StreamHandler = getattr(py_logging, 'StreamHandler', None);
StringTemplateStyle = getattr(py_logging, 'StringTemplateStyle', None);
Template = getattr(py_logging, 'Template', None);
WARN = getattr(py_logging, 'WARN', None);
WARNING = getattr(py_logging, 'WARNING', None);
define addLevelName(*args, **kwargs):
    return py_logging.addLevelName(*args, **kwargs);

atexit = getattr(py_logging, 'atexit', None);
define basicConfig(*args, **kwargs):
    return py_logging.basicConfig(*args, **kwargs);

define captureWarnings(*args, **kwargs):
    return py_logging.captureWarnings(*args, **kwargs);

collections = getattr(py_logging, 'collections', None);
define critical(*args, **kwargs):
    return py_logging.critical(*args, **kwargs);

define currentframe(*args, **kwargs):
    return py_logging.currentframe(*args, **kwargs);

define debug(*args, **kwargs):
    return py_logging.debug(*args, **kwargs);

define disable(*args, **kwargs):
    return py_logging.disable(*args, **kwargs);

define error(*args, **kwargs):
    return py_logging.error(*args, **kwargs);

define exception(*args, **kwargs):
    return py_logging.exception(*args, **kwargs);

define fatal(*args, **kwargs):
    return py_logging.fatal(*args, **kwargs);

define getHandlerByName(*args, **kwargs):
    return py_logging.getHandlerByName(*args, **kwargs);

define getHandlerNames(*args, **kwargs):
    return py_logging.getHandlerNames(*args, **kwargs);

define getLevelName(*args, **kwargs):
    return py_logging.getLevelName(*args, **kwargs);

define getLevelNamesMapping(*args, **kwargs):
    return py_logging.getLevelNamesMapping(*args, **kwargs);

define getLogRecordFactory(*args, **kwargs):
    return py_logging.getLogRecordFactory(*args, **kwargs);

define getLogger(*args, **kwargs):
    return py_logging.getLogger(*args, **kwargs);

define getLoggerClass(*args, **kwargs):
    return py_logging.getLoggerClass(*args, **kwargs);

define info(*args, **kwargs):
    return py_logging.info(*args, **kwargs);

io = getattr(py_logging, 'io', None);
lastResort = getattr(py_logging, 'lastResort', None);
define log(*args, **kwargs):
    return py_logging.log(*args, **kwargs);

logAsyncioTasks = getattr(py_logging, 'logAsyncioTasks', None);
logMultiprocessing = getattr(py_logging, 'logMultiprocessing', None);
logProcesses = getattr(py_logging, 'logProcesses', None);
logThreads = getattr(py_logging, 'logThreads', None);
define makeLogRecord(*args, **kwargs):
    return py_logging.makeLogRecord(*args, **kwargs);

os = getattr(py_logging, 'os', None);
raiseExceptions = getattr(py_logging, 'raiseExceptions', None);
re = getattr(py_logging, 're', None);
root = getattr(py_logging, 'root', None);
define setLogRecordFactory(*args, **kwargs):
    return py_logging.setLogRecordFactory(*args, **kwargs);

define setLoggerClass(*args, **kwargs):
    return py_logging.setLoggerClass(*args, **kwargs);

define shutdown(*args, **kwargs):
    return py_logging.shutdown(*args, **kwargs);

sys = getattr(py_logging, 'sys', None);
threading = getattr(py_logging, 'threading', None);
time = getattr(py_logging, 'time', None);
traceback = getattr(py_logging, 'traceback', None);
define warn(*args, **kwargs):
    return py_logging.warn(*args, **kwargs);

define warning(*args, **kwargs):
    return py_logging.warning(*args, **kwargs);

warnings = getattr(py_logging, 'warnings', None);
weakref = getattr(py_logging, 'weakref', None);
