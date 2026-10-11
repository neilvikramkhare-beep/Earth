// Earth Language Java Wrapper for java.beans
import java_interop

define execute(code):
    java_code = "import java.beans.*;\n" + code;
    return java_interop.execute_java(java_code);
