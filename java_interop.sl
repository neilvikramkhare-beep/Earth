// Earth Language Java Interop Package
// File: java_interop.sl

define execute_java(code, class_name="EarthJavaInterop"):
    // Write code to file
    java_file = class_name + ".java";
    with open(java_file, 'w') as f:
        f.write(code);
        
    try:
        // Compile and run Java code
        std_subprocess.run(['javac', '--release', '17', java_file], check=True, capture_output=True, text=True);
        result = std_subprocess.run(['java', class_name], capture_output=True, text=True, check=True);
        
        // Clean up files
        std_os.remove(java_file);
        std_os.remove(class_name + ".class");
        
        return result.stdout;
    except std_subprocess.CalledProcessError as e:
        return "Java Execution Error: " + str(e.stderr or e);
    except FileNotFoundError:
        return "Error: Java (javac/java) is not installed or not in PATH.";
