// Earth Language Java Wrapper for java.util
import java_interop

define execute(code):
    java_code = "import java.util.*;\n" + code;
    return java_interop.execute_java(java_code);
