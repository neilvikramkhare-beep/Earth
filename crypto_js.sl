// Earth Language JS Wrapper for crypto
import js_interop

define execute(code):
    js_code = "const crypto = require('crypto');\n" + code;
    return js_interop.execute_js(js_code);
