// Earth Language JS Wrapper for util
import js_interop

define execute(code):
    js_code = "const util = require('util');\n" + code;
    return js_interop.execute_js(js_code);
