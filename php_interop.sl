// Earth Language PHP Interop Package
// File: php_interop.sl

define execute_php(code):
    try:
        // Use PHP if available in system
        result = std_subprocess.run(['php', '-r', code], capture_output=True, text=True, check=True);
        return result.stdout;
    except std_subprocess.CalledProcessError as e:
        return "PHP Execution Error: " + e.stderr;
    except FileNotFoundError:
        return "Error: PHP is not installed on this system.";
