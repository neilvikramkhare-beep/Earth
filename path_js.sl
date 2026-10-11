// Earth Language JS Wrapper for path
import js_interop

define execute(code):
    js_code = "const path = require('path');\n" + code;
    return js_interop.execute_js(js_code);
