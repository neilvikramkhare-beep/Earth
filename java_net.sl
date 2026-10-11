// Earth Language Java Wrapper for java.net
import java_interop

define execute(code):
    java_code = "import java.net.*;\n" + code;
    return java_interop.execute_java(java_code);
