import builtins
import sys
import os

sys.path.append(r"c:\Users\Admin\Desktop\Earth")
from generate_packages import get_custom_tools

def generate_django_sl():
    out = []
    out.append("// SL Package definition for django")
    out.append("package django;")
    out.append("")
    out.append("define __getattr_sl__(name):")
    out.append("    _mod = builtins.__import__('importlib').import_module('django')")
    out.append("    return getattr(_mod, name)")
    out.append("")
    
    out.append("// --- Built-in Python functions ---")
    # Add all built-in functions
    for name in dir(builtins):
        if not name.startswith('_'):
            # Just create a simple wrapper that passes arguments
            # We'll just define it with a single parameter 'a' to avoid Earth language compiler issues
            # We also map it in globals so it can be called.
            # Using Earth language syntax: define funcName(a)
            # If name is a python keyword, earth compiler renames it to name_func, so we just use it safely.
            func_name = name
            out.append(f"define {func_name}_sl(a):")
            out.append(f"    try:")
            out.append(f"        return getattr(builtins, '{name}')(a)")
            out.append(f"    except TypeError:")
            out.append(f"        return getattr(builtins, '{name}')()")
            out.append(f"globals()['{name}'] = {func_name}_sl")
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
    out.append("    pass")
    
    with open(r"c:\Users\Admin\Desktop\Earth\SL_Packages\django.sl", "w", encoding="utf-8") as f:
        f.write("\n".join(out))
    print("Successfully updated django.sl")

if __name__ == "__main__":
    generate_django_sl()
