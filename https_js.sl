// Earth Language JS Wrapper for https
import js_interop

define execute(code):
    js_code = "const https = require('https');\n" + code;
    return js_interop.execute_js(js_code);
