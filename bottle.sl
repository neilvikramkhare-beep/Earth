// Earth Language Explicit Wrapper for bottle
py_bottle = __import__('bottle')

AiohttpServer = getattr(py_bottle, 'AiohttpServer', None);
AiohttpUVLoopServer = getattr(py_bottle, 'AiohttpUVLoopServer', None);
AppEngineServer = getattr(py_bottle, 'AppEngineServer', None);
AppStack = getattr(py_bottle, 'AppStack', None);
AsyncioServerAdapter = getattr(py_bottle, 'AsyncioServerAdapter', None);
AutoServer = getattr(py_bottle, 'AutoServer', None);
BaseRequest = getattr(py_bottle, 'BaseRequest', None);
BaseResponse = getattr(py_bottle, 'BaseResponse', None);
BaseTemplate = getattr(py_bottle, 'BaseTemplate', None);
BjoernServer = getattr(py_bottle, 'BjoernServer', None);
Bottle = getattr(py_bottle, 'Bottle', None);
BottleException = getattr(py_bottle, 'BottleException', None);
BytesIO = getattr(py_bottle, 'BytesIO', None);
CGIServer = getattr(py_bottle, 'CGIServer', None);
CheetahTemplate = getattr(py_bottle, 'CheetahTemplate', None);
CherootServer = getattr(py_bottle, 'CherootServer', None);
CherryPyServer = getattr(py_bottle, 'CherryPyServer', None);
ConfigDict = getattr(py_bottle, 'ConfigDict', None);
CookieError = getattr(py_bottle, 'CookieError', None);
DEBUG = getattr(py_bottle, 'DEBUG', None);
DictMixin = getattr(py_bottle, 'DictMixin', None);
DictProperty = getattr(py_bottle, 'DictProperty', None);
DieselServer = getattr(py_bottle, 'DieselServer', None);
ERROR_PAGE_TEMPLATE = getattr(py_bottle, 'ERROR_PAGE_TEMPLATE', None);
EventletServer = getattr(py_bottle, 'EventletServer', None);
FapwsServer = getattr(py_bottle, 'FapwsServer', None);
FileCheckerThread = getattr(py_bottle, 'FileCheckerThread', None);
FileUpload = getattr(py_bottle, 'FileUpload', None);
FlupFCGIServer = getattr(py_bottle, 'FlupFCGIServer', None);
FormsDict = getattr(py_bottle, 'FormsDict', None);
FunctionType = getattr(py_bottle, 'FunctionType', None);
GeventServer = getattr(py_bottle, 'GeventServer', None);
GunicornServer = getattr(py_bottle, 'GunicornServer', None);
HTTPError = getattr(py_bottle, 'HTTPError', None);
HTTPResponse = getattr(py_bottle, 'HTTPResponse', None);
HTTP_CODES = getattr(py_bottle, 'HTTP_CODES', None);
HeaderDict = getattr(py_bottle, 'HeaderDict', None);
HeaderProperty = getattr(py_bottle, 'HeaderProperty', None);
JSONPlugin = getattr(py_bottle, 'JSONPlugin', None);
Jinja2Template = getattr(py_bottle, 'Jinja2Template', None);
LocalRequest = getattr(py_bottle, 'LocalRequest', None);
LocalResponse = getattr(py_bottle, 'LocalResponse', None);
MakoTemplate = getattr(py_bottle, 'MakoTemplate', None);
MeinheldServer = getattr(py_bottle, 'MeinheldServer', None);
Morsel = getattr(py_bottle, 'Morsel', None);
MultiDict = getattr(py_bottle, 'MultiDict', None);
MultipartError = getattr(py_bottle, 'MultipartError', None);
NORUN = getattr(py_bottle, 'NORUN', None);
define NamedTemporaryFile(*args, **kwargs):
    return py_bottle.NamedTemporaryFile(*args, **kwargs);

PasteServer = getattr(py_bottle, 'PasteServer', None);
PluginError = getattr(py_bottle, 'PluginError', None);
Request = getattr(py_bottle, 'Request', None);
ResourceManager = getattr(py_bottle, 'ResourceManager', None);
Response = getattr(py_bottle, 'Response', None);
Route = getattr(py_bottle, 'Route', None);
RouteBuildError = getattr(py_bottle, 'RouteBuildError', None);
RouteError = getattr(py_bottle, 'RouteError', None);
RouteReset = getattr(py_bottle, 'RouteReset', None);
RouteSyntaxError = getattr(py_bottle, 'RouteSyntaxError', None);
Router = getattr(py_bottle, 'Router', None);
RouterUnknownModeError = getattr(py_bottle, 'RouterUnknownModeError', None);
ServerAdapter = getattr(py_bottle, 'ServerAdapter', None);
SimpleCookie = getattr(py_bottle, 'SimpleCookie', None);
SimpleTemplate = getattr(py_bottle, 'SimpleTemplate', None);
StplParser = getattr(py_bottle, 'StplParser', None);
StplSyntaxError = getattr(py_bottle, 'StplSyntaxError', None);
TEMPLATES = getattr(py_bottle, 'TEMPLATES', None);
TEMPLATE_PATH = getattr(py_bottle, 'TEMPLATE_PATH', None);
TemplateError = getattr(py_bottle, 'TemplateError', None);
TemplatePlugin = getattr(py_bottle, 'TemplatePlugin', None);
TornadoServer = getattr(py_bottle, 'TornadoServer', None);
TwistedServer = getattr(py_bottle, 'TwistedServer', None);
UTC = getattr(py_bottle, 'UTC', None);
UrlSplitResult = getattr(py_bottle, 'UrlSplitResult', None);
WSGIFileWrapper = getattr(py_bottle, 'WSGIFileWrapper', None);
WSGIHeaderDict = getattr(py_bottle, 'WSGIHeaderDict', None);
WSGIRefServer = getattr(py_bottle, 'WSGIRefServer', None);
WaitressServer = getattr(py_bottle, 'WaitressServer', None);
define abort(*args, **kwargs):
    return py_bottle.abort(*args, **kwargs);

app = getattr(py_bottle, 'app', None);
apps = getattr(py_bottle, 'apps', None);
define auth_basic(*args, **kwargs):
    return py_bottle.auth_basic(*args, **kwargs);

base64 = getattr(py_bottle, 'base64', None);
basestring = getattr(py_bottle, 'basestring', None);
cached_property = getattr(py_bottle, 'cached_property', None);
calendar = getattr(py_bottle, 'calendar', None);
define callable(*args, **kwargs):
    return py_bottle.callable(*args, **kwargs);

cheetah_template = getattr(py_bottle, 'cheetah_template', None);
cheetah_view = getattr(py_bottle, 'cheetah_view', None);
configparser = getattr(py_bottle, 'configparser', None);
define cookie_decode(*args, **kwargs):
    return py_bottle.cookie_decode(*args, **kwargs);

define cookie_encode(*args, **kwargs):
    return py_bottle.cookie_encode(*args, **kwargs);

define cookie_is_encoded(*args, **kwargs):
    return py_bottle.cookie_is_encoded(*args, **kwargs);

datedate = getattr(py_bottle, 'datedate', None);
datetime = getattr(py_bottle, 'datetime', None);
define debug(*args, **kwargs):
    return py_bottle.debug(*args, **kwargs);

default_app = getattr(py_bottle, 'default_app', None);
define delete(*args, **kwargs):
    return py_bottle.delete(*args, **kwargs);

define depr(*args, **kwargs):
    return py_bottle.depr(*args, **kwargs);

email = getattr(py_bottle, 'email', None);
define error(*args, **kwargs):
    return py_bottle.error(*args, **kwargs);

ext = getattr(py_bottle, 'ext', None);
define format_exc(*args, **kwargs):
    return py_bottle.format_exc(*args, **kwargs);

functools = getattr(py_bottle, 'functools', None);
define get(*args, **kwargs):
    return py_bottle.get(*args, **kwargs);

define getargspec(*args, **kwargs):
    return py_bottle.getargspec(*args, **kwargs);

define getfullargspec(*args, **kwargs):
    return py_bottle.getfullargspec(*args, **kwargs);

hashlib = getattr(py_bottle, 'hashlib', None);
hmac = getattr(py_bottle, 'hmac', None);
define hook(*args, **kwargs):
    return py_bottle.hook(*args, **kwargs);

define html_escape(*args, **kwargs):
    return py_bottle.html_escape(*args, **kwargs);

define html_quote(*args, **kwargs):
    return py_bottle.html_quote(*args, **kwargs);

define http_date(*args, **kwargs):
    return py_bottle.http_date(*args, **kwargs);

httplib = getattr(py_bottle, 'httplib', None);
imap = getattr(py_bottle, 'imap', None);
define install(*args, **kwargs):
    return py_bottle.install(*args, **kwargs);

itertools = getattr(py_bottle, 'itertools', None);
jinja2_template = getattr(py_bottle, 'jinja2_template', None);
jinja2_view = getattr(py_bottle, 'jinja2_view', None);
define json_dumps(*args, **kwargs):
    return py_bottle.json_dumps(*args, **kwargs);

define json_lds(*args, **kwargs):
    return py_bottle.json_lds(*args, **kwargs);

define json_loads(*args, **kwargs):
    return py_bottle.json_loads(*args, **kwargs);

lazy_attribute = getattr(py_bottle, 'lazy_attribute', None);
define load(*args, **kwargs):
    return py_bottle.load(*args, **kwargs);

define load_app(*args, **kwargs):
    return py_bottle.load_app(*args, **kwargs);

local = getattr(py_bottle, 'local', None);
define main(*args, **kwargs):
    return py_bottle.main(*args, **kwargs);

define make_default_app_wrapper(*args, **kwargs):
    return py_bottle.make_default_app_wrapper(*args, **kwargs);

define makelist(*args, **kwargs):
    return py_bottle.makelist(*args, **kwargs);

mako_template = getattr(py_bottle, 'mako_template', None);
mako_view = getattr(py_bottle, 'mako_view', None);
mimetypes = getattr(py_bottle, 'mimetypes', None);
define mount(*args, **kwargs):
    return py_bottle.mount(*args, **kwargs);

new_module = getattr(py_bottle, 'new_module', None);
define normalize(*args, **kwargs):
    return py_bottle.normalize(*args, **kwargs);

os = getattr(py_bottle, 'os', None);
define parse_auth(*args, **kwargs):
    return py_bottle.parse_auth(*args, **kwargs);

define parse_date(*args, **kwargs):
    return py_bottle.parse_date(*args, **kwargs);

define parse_range_header(*args, **kwargs):
    return py_bottle.parse_range_header(*args, **kwargs);

define patch(*args, **kwargs):
    return py_bottle.patch(*args, **kwargs);

define path_shift(*args, **kwargs):
    return py_bottle.path_shift(*args, **kwargs);

pickle = getattr(py_bottle, 'pickle', None);
define post(*args, **kwargs):
    return py_bottle.post(*args, **kwargs);

define print_exc(*args, **kwargs):
    return py_bottle.print_exc(*args, **kwargs);

print_function = getattr(py_bottle, 'print_function', None);
define put(*args, **kwargs):
    return py_bottle.put(*args, **kwargs);

py = getattr(py_bottle, 'py', None);
py3k = getattr(py_bottle, 'py3k', None);
re = getattr(py_bottle, 're', None);
define redirect(*args, **kwargs):
    return py_bottle.redirect(*args, **kwargs);

request = getattr(py_bottle, 'request', None);
response = getattr(py_bottle, 'response', None);
define route(*args, **kwargs):
    return py_bottle.route(*args, **kwargs);

define run(*args, **kwargs):
    return py_bottle.run(*args, **kwargs);

server_names = getattr(py_bottle, 'server_names', None);
define static_file(*args, **kwargs):
    return py_bottle.static_file(*args, **kwargs);

sys = getattr(py_bottle, 'sys', None);
tempfile = getattr(py_bottle, 'tempfile', None);
define template(*args, **kwargs):
    return py_bottle.template(*args, **kwargs);

thread = getattr(py_bottle, 'thread', None);
threading = getattr(py_bottle, 'threading', None);
time = getattr(py_bottle, 'time', None);
timedelta = getattr(py_bottle, 'timedelta', None);
timezone = getattr(py_bottle, 'timezone', None);
define tob(*args, **kwargs):
    return py_bottle.tob(*args, **kwargs);

define tonat(*args, **kwargs):
    return py_bottle.tonat(*args, **kwargs);

define touni(*args, **kwargs):
    return py_bottle.touni(*args, **kwargs);

unicode = getattr(py_bottle, 'unicode', None);
define uninstall(*args, **kwargs):
    return py_bottle.uninstall(*args, **kwargs);

define update_wrapper(*args, **kwargs):
    return py_bottle.update_wrapper(*args, **kwargs);

define url(*args, **kwargs):
    return py_bottle.url(*args, **kwargs);

define urlencode(*args, **kwargs):
    return py_bottle.urlencode(*args, **kwargs);

define urljoin(*args, **kwargs):
    return py_bottle.urljoin(*args, **kwargs);

define urlquote(*args, **kwargs):
    return py_bottle.urlquote(*args, **kwargs);

urlunquote = getattr(py_bottle, 'urlunquote', None);
define view(*args, **kwargs):
    return py_bottle.view(*args, **kwargs);

warnings = getattr(py_bottle, 'warnings', None);
weakref = getattr(py_bottle, 'weakref', None);
define yieldroutes(*args, **kwargs):
    return py_bottle.yieldroutes(*args, **kwargs);

