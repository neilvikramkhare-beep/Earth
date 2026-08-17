import builtins
import sys
import os
import glob

sys.path.append(r"c:\Users\Admin\Desktop\Earth")
from generate_packages import get_custom_tools

def generate_missing():
    directory = r"c:\Users\Admin\Desktop\Earth\SL_Packages"
    existing = set()
    for f in glob.glob(os.path.join(directory, "*.sl")):
        name = os.path.basename(f)[:-3]
        existing.add(name)

    # Get standard modules (Python 3.10+)
    if hasattr(sys, 'stdlib_module_names'):
        stdlib = set(sys.stdlib_module_names)
    else:
        # Fallback list if sys doesn't have it
        import distutils.sysconfig as sysconfig
        stdlib = set()

    # Exclude private modules (starting with _)
    missing = [m for m in stdlib if m not in existing and not m.startswith('_') and not m.startswith('test')]
    missing.sort()

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
    for pkg in missing:
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
    with open("missing_packages.txt", "w", encoding="utf-8") as f:
        f.write("\n".join(missing))

    print(f"Generated {len(missing)} missing standard library packages.")

if __name__ == "__main__":
    generate_missing()
