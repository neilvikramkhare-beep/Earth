// Earth Language Javascript Interop Package
// File: js_interop.sl

define execute_js(code):
    try:
        // Use node if available in system
        result = std_subprocess.run(['node', '-e', code], capture_output=True, text=True, check=True);
        return result.stdout;
    except std_subprocess.CalledProcessError as e:
        return "JS Execution Error: " + e.stderr;
    except FileNotFoundError:
        return "Error: Node.js is not installed on this system.";
