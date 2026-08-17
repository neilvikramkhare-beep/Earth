import sys
import os
from pathlib import Path

# Add the current directory to sys.path so earth_compiler can be imported
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

import earth_compiler

def main():
    # PyInstaller extracts bundled files to sys._MEIPASS
    meipass = getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__)))
    
    # We expect the target script to be bundled as 'bundled_script.sl'
    bundled_script = Path(meipass) / "bundled_script.sl"
    
    if not bundled_script.exists():
        print("Error: Bundled script not found.")
        sys.exit(1)
        
    # Execute it using earth_compiler
    earth_compiler.compile_and_run(str(bundled_script))

if __name__ == "__main__":
    main()
