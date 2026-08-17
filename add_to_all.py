import builtins
import sys
import os
import glob

sys.path.append(r"c:\Users\Admin\Desktop\Earth")
from generate_packages import get_custom_tools

def modify_all_sl_files():
    directory = r"c:\Users\Admin\Desktop\Earth\SL_Packages"
    sl_files = glob.glob(os.path.join(directory, "*.sl"))
    
    count = 0
    for file_path in sl_files:
        with open(file_path, "r", encoding="utf-8") as f:
            content = f.read()

        # Check if already modified
        if "// --- Built-in Python functions ---" in content:
            continue
            
        parts = content.split("define init():")
        base_content = parts[0].strip()
        
        out = [base_content]
        
        out.append("")
        out.append("// --- Built-in Python functions ---")
        for name in dir(builtins):
            if not name.startswith('_'):
                func_name = name
                out.append(f"define builtin_{func_name}(a):")
                out.append(f"    try:")
                out.append(f"        return getattr(builtins, '{name}')(a)")
                out.append(f"    except TypeError:")
                out.append(f"        return getattr(builtins, '{name}')()")
                out.append(f"globals()['{name}'] = builtin_{func_name}")
                out.append("")

        out.append("// --- All the other languages (Graphical Links) ---")
        other_langs = [
            'tkinter', 'PyQt', 'awt', 'swing', 'fx',
            'spring', 'javaee', 'turtle', 'matplotlib', 'seaborn',
            'opencv-python', 'pillow'
        ]
        
        for lang in other_langs:
            tools = get_custom_tools(lang)
            if tools:
                out.append(f"// Language: {lang}")
                out.append(tools.strip())
                out.append("")
                
        out.append("define init():")
        if len(parts) > 1 and parts[1].strip():
            out.append("    " + parts[1].strip())
        else:
            out.append("    pass")
        
        with open(file_path, "w", encoding="utf-8") as f:
            f.write("\n".join(out))
            
        count += 1
        
    print(f"Successfully updated {count} .sl files")

if __name__ == "__main__":
    modify_all_sl_files()
