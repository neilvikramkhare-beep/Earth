import builtins
import sys
import os

sys.path.append(r"c:\Users\Admin\Desktop\Earth")
from generate_packages import get_custom_tools

def modify_argparse_sl():
    file_path = r"c:\Users\Admin\Desktop\Earth\SL_Packages\argparse.sl"
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Split to avoid redefining init()
    parts = content.split("define init():")
    base_content = parts[0].strip()
    
    out = [base_content]
    
    out.append("")
    out.append("// --- Built-in Python functions ---")
    for name in dir(builtins):
        if not name.startswith('_'):
            func_name = name
            out.append(f"define builtin_{func_name}(*args):")
            out.append(f"    try:")
            out.append(f"        return builtins.getattr(builtins, '{name}')(*args)")
            out.append(f"    except builtins.TypeError:")
            out.append(f"        return builtins.getattr(builtins, '{name}')()")
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
    print("Successfully updated argparse.sl")

if __name__ == "__main__":
    modify_argparse_sl()
