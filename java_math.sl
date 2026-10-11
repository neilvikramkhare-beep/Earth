// Earth Language Java Wrapper for java.math
import java_interop

define execute(code):
    java_code = "import java.math.*;\n" + code;
    return java_interop.execute_java(java_code);
