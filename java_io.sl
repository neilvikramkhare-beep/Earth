// Earth Language Java Wrapper for java.io
import java_interop

define execute(code):
    java_code = "import java.io.*;\n" + code;
    return java_interop.execute_java(java_code);
