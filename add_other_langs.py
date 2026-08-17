import builtins
import sys
import os
import glob

sys.path.append(r"c:\Users\Admin\Desktop\Earth")
from generate_packages import get_custom_tools

def generate_other_langs():
    directory = r"c:\Users\Admin\Desktop\Earth\SL_Packages"
    existing = set()
    for f in glob.glob(os.path.join(directory, "*.sl")):
        name = os.path.basename(f)[:-3]
        existing.add(name)

    cpp_packages = ['iostream', 'vector', 'string', 'cmath', 'algorithm', 'map', 'set', 'thread', 'mutex', 'memory']
    java_packages = ['java.util', 'java.io', 'java.math', 'java.time', 'java.net']
    node_packages = ['fs', 'path', 'events', 'crypto', 'child_process'] 
    csharp_packages = ['System', 'System.IO', 'System.Collections.Generic', 'System.Linq', 'System.Threading', 'System.Net', 'System.Text']
    go_packages = ['fmt', 'net_http', 'strings', 'strconv', 'sync'] 
    ruby_packages = ['fileutils', 'yaml', 'date', 'uri', 'digest'] 
    php_packages = ['PDO', 'mysqli', 'DateTime', 'Curl']
    rust_packages = ['std.io', 'std.fs', 'std.vec', 'std.string', 'std.thread', 'std.sync', 'std.collections', 'std.net']

    all_other_packages = cpp_packages + java_packages + node_packages + csharp_packages + go_packages + ruby_packages + php_packages + rust_packages

    missing = [m for m in all_other_packages if m not in existing]
    
    # Precompute built-ins block
    builtins_block = []
    builtins_block.append("// --- Built-in Python functions ---")
    for name in dir(builtins):
        if not name.startswith('_') and name not in ['globals', 'locals', 'vars']:
            func_name = name
            builtins_block.append(f"define builtin_{func_name}(a=None):")
            builtins_block.append(f"    try:")
            builtins_block.append(f"        return getattr(builtins, '{name}')(a)")
            builtins_block.append(f"    except TypeError:")
            builtins_block.append(f"        return getattr(builtins, '{name}')()")
            builtins_block.append(f"globals()['{name}'] = builtin_{func_name}")
            builtins_block.append("")
    builtins_str = "\n".join(builtins_block)

    # Precompute custom tools block
    custom_tools_block = []
    custom_tools_block.append("// --- All the other languages (Graphical Links) ---")
    other_langs = ['tkinter', 'PyQt', 'awt', 'swing', 'fx', 'spring', 'javaee', 'turtle', 'matplotlib', 'seaborn', 'opencv-python', 'pillow']
    for lang in other_langs:
        tools = get_custom_tools(lang)
        if tools:
            custom_tools_block.append(f"// Language: {lang}")
            custom_tools_block.append(tools.strip())
            custom_tools_block.append("")
    custom_tools_str = "\n".join(custom_tools_block)

    # Generate files
    for pkg in all_other_packages:
        out = []
        out.append(f"// SL Package definition for {pkg}")
        out.append(f"package {pkg};")
        out.append("")
        out.append("define __getattr_sl__(name):")
        out.append(f"    _mod = builtins.__import__('importlib').import_module('{pkg}')")
        out.append("    return getattr(_mod, name)")
        out.append("")
        out.append(builtins_str)
        out.append(custom_tools_str)
        out.append("define init():")
        out.append("    pass")
        
        file_path = os.path.join(directory, f"{pkg}.sl")
        with open(file_path, "w", encoding="utf-8") as f:
            f.write("\n".join(out))

    # Output list of missing packages for the assistant to report
    with open("added_other_langs.txt", "w", encoding="utf-8") as f:
        f.write("\n".join(missing))

    print(f"Generated {len(all_other_packages)} other languages packages.")

if __name__ == "__main__":
    generate_other_langs()
