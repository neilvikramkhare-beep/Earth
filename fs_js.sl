// Earth Language JS Wrapper for fs
import js_interop

define execute(code):
    js_code = "const fs = require('fs');\n" + code;
    return js_interop.execute_js(js_code);
