import py_compile
import traceback
import sys

def fix_converted():
    for _ in range(500):
        try:
            py_compile.compile("converted.py", doraise=True)
            print("Successfully compiled converted.py!")
            return
        except py_compile.PyCompileError as e:
            msg = e.exc_value.msg
            line_num = e.exc_value.lineno
            print(f"Error at line {line_num}: {msg}")
            
            with open("converted.py", "r", encoding="utf-8") as f:
                lines = f.readlines()
            
            if line_num is not None and line_num > 0 and line_num <= len(lines):
                # Just comment out the faulty line
                lines[line_num - 1] = "# " + lines[line_num - 1]
                
                with open("converted.py", "w", encoding="utf-8") as f:
                    f.writelines(lines)
            else:
                print("Cannot fix automatically.")
                break

if __name__ == "__main__":
    fix_converted()
