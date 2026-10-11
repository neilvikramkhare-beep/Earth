// Earth Language JS Wrapper for child_process
import js_interop

define execute(code):
    js_code = "const child_process = require('child_process');\n" + code;
    return js_interop.execute_js(js_code);
