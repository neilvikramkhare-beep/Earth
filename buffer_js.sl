// Earth Language JS Wrapper for buffer
import js_interop

define execute(code):
    js_code = "const buffer = require('buffer');\n" + code;
    return js_interop.execute_js(js_code);
