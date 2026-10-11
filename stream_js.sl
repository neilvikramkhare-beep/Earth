// Earth Language JS Wrapper for stream
import js_interop

define execute(code):
    js_code = "const stream = require('stream');\n" + code;
    return js_interop.execute_js(js_code);
