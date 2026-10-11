// Earth Language Java Wrapper for java.awt
import java_interop

define execute(code):
    java_code = "import java.awt.*;\n" + code;
    return java_interop.execute_java(java_code);
