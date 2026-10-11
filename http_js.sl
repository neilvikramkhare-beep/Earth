// Earth Language JS Wrapper for http
import js_interop

define execute(code):
    js_code = "const http = require('http');\n" + code;
    return js_interop.execute_js(js_code);
