import os
import sys
import subprocess
from pathlib import Path

EARTH_DIR = Path(r"c:\Users\Admin\Desktop\Earth")
SL_PACKAGES_DIR = EARTH_DIR / "SL_Packages"

def run_sl_file(file_path):
    print(f"\n======================================")
    print(f"Executing SL File: {file_path.name}")
    print(f"======================================")
    subprocess.run([sys.executable, "earth_compiler.py", str(file_path)], cwd=str(EARTH_DIR))

def run_java_file(file_path):
    print(f"\n======================================")
    print(f"Compiling & Executing Java File: {file_path.name}")
    print(f"======================================")
    # Compile
    comp_res = subprocess.run(["javac", file_path.name], cwd=str(EARTH_DIR))
    if comp_res.returncode == 0:
        # Run
        class_name = file_path.stem
        subprocess.run(["java", class_name], cwd=str(EARTH_DIR))
    else:
        print(f"Compilation failed for {file_path.name}")

def main():
    print("Starting Global Execution of Earth...")
    
    # 1. Run main SL scripts
    for sl_file in ["script.sl", "Exceptions.sl", "sample.sl"]:
        path = EARTH_DIR / sl_file
        if path.exists():
            run_sl_file(path)
            
    # 2. Run Java files
    for java_file in ["ScriptAlgorithms.java"]:
        path = EARTH_DIR / java_file
        if path.exists():
            run_java_file(path)
            
    # 3. Run all SL Packages
    if SL_PACKAGES_DIR.exists():
        print(f"\n======================================")
        print(f"Executing SL Packages in {SL_PACKAGES_DIR.name}")
        print(f"======================================")
        for pkg_file in SL_PACKAGES_DIR.glob("*.sl"):
            if pkg_file.name not in ["argparse.sl", "Exceptions.sl"]:
                subprocess.run([sys.executable, "earth_compiler.py", str(pkg_file)], cwd=str(EARTH_DIR))

    print("\nGlobal Execution Complete!")

if __name__ == "__main__":
    main()
