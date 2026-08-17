import builtins
import sys

def build_exceptions_sl():
    file_path = r"c:\Users\Admin\Desktop\Earth\SL_Packages\Exceptions.sl"
    out = [
        "// SL Package definition for Exceptions",
        "package Exceptions;",
        "",
        "define __getattr_sl__(name):",
        "    try:",
        "        return builtins.getattr(builtins, name)",
        "    except builtins.Exception:",
        "        raise builtins.AttributeError(\"module 'Exceptions' has no attribute '\" + name + \"'\")",
        "",
        "define init():",
        "    pass",
        "",
        "// --- Built-in Python Exceptions ---"
    ]
    
    excs = [x for x in dir(builtins) if isinstance(getattr(builtins, x), type) and issubclass(getattr(builtins, x), BaseException)]
    
    for exc in excs:
        out.append(f"globals()['{exc}'] = builtins.getattr(builtins, '{exc}')")
        
    with open(file_path, "w", encoding="utf-8") as f:
        f.write("\n".join(out))
    
    print("Successfully built Exceptions.sl")

if __name__ == "__main__":
    build_exceptions_sl()
