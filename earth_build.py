import sys
import os
import shutil
import subprocess
from pathlib import Path

def main():
    if len(sys.argv) < 2:
        print("Usage: python earth_build.py <script.sl> [--windowed]")
        sys.exit(1)
        
    script_path = Path(sys.argv[1])
    if not script_path.exists():
        print(f"Error: Script '{script_path}' not found.")
        sys.exit(1)
        
    windowed = "--windowed" in sys.argv
    base_name = script_path.stem
    
    # We copy the target script to 'bundled_script.sl' temporarily
    # so the runner_template knows exactly what file to look for.
    bundled_script_path = Path("bundled_script.sl")
    shutil.copy2(script_path, bundled_script_path)
    
    print(f"Building standalone executable for {script_path.name}...")
    
    cmd = [
        "pyinstaller",
        "--noconfirm",
        "--onefile",
        "--name", base_name,
        "--add-data", "bundled_script.sl;.",
        "--add-data", "SL_Packages;SL_Packages",
        "--hidden-import", "earth_compiler",
    ]
    
    if windowed:
        cmd.append("--windowed")
        
    cmd.append("runner_template.py")
    
    # Run PyInstaller
    subprocess.run(cmd)
    
    # Clean up the temporary bundled script
    if bundled_script_path.exists():
        bundled_script_path.unlink()
        
    out_exe = Path("dist") / f"{base_name}.exe"
    
    # Create build_output directory
    build_output_dir = Path("build_output")
    if not build_output_dir.exists():
        build_output_dir.mkdir()
        
    final_exe = build_output_dir / f"{base_name}.exe"
    
    if out_exe.exists():
        shutil.copy2(out_exe, final_exe)
        print("====================================")
        print(f"Build Complete! Executable saved to:")
        print(final_exe.absolute())
        print("====================================")
    else:
        print("Build failed. See PyInstaller output above.")

if __name__ == "__main__":
    main()
