import sys
import re
import builtins
import traceback
import math
import os
import time
import random
import datetime
import platform
import json
import hashlib
from pathlib import Path

PYTHON_KEYWORDS = {
    'False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await',
    'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except',
    'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is',
    'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return',
    'try', 'while', 'with', 'yield'
}

def translate_sl(source_text):
    lines = []
    last_indent = ''
    prev_ended_with_colon = False
    
    for raw in source_text.splitlines():
        line = raw.rstrip()
        trimmed = line.strip()
        if not trimmed:
            lines.append('')
            continue

        if trimmed.startswith('import '):
            current_indent = line[: len(line) - len(line.lstrip())]
            indent = current_indent
            imports = trimmed[7:].rstrip(';').split(',')
            valid_imports = []
            for imp in imports:
                imp = imp.strip()
                valid_imports.append(imp)
            if valid_imports:
                lines.append(f"{indent}__import_sl__({repr(valid_imports)})")
                last_indent = indent
            prev_ended_with_colon = False
            continue

        if trimmed.startswith('from '):
            current_indent = line[: len(line) - len(line.lstrip())]
            indent = current_indent
            m = re.match(r'^from\s+(.*?)\s+import\s+(.*)$', trimmed.rstrip(';'))
            if m:
                module = m.group(1).strip()
                names = [n.strip() for n in m.group(2).split(',')]
                lines.append(f"{indent}__from_import_sl__({repr(module)}, {repr(names)})")
                last_indent = indent
            prev_ended_with_colon = False
            continue

        if trimmed.startswith('//'):
            lines.append('# ' + line[line.find('//')+2:])
            continue
            
        if trimmed.startswith('package '):
            lines.append('# ' + line)
            continue

        if trimmed.startswith('define '):
            indent = line[: len(line) - len(line.lstrip())]
            content = trimmed[len('define '):]
            if content.startswith('class '):
                line = f"{indent}{content}"
            else:
                m = re.match(r'^([A-Za-z_][A-Za-z0-9_ ]*)(?:\((.*)\))?\s*:?(.*)$', content)
                if m:
                    name = m.group(1).strip().replace(' ', '')
                    if name in PYTHON_KEYWORDS:
                        name = name + '_func'
                    raw_params = (m.group(2) or '').strip()
                    suffix = m.group(3) or ''
                    
                    if raw_params:
                        param_list = [p.strip() for p in raw_params.split(',')]
                        new_params = []
                        for i, p in enumerate(param_list):
                            if i > 0 and '=' not in p:
                                new_params.append(f"{p}=None")
                            else:
                                new_params.append(p)
                        params_str = ', '.join(new_params)
                        line = f"{indent}def {name}({params_str}):{suffix}"
                    else:
                        line = f"{indent}def {name}():{suffix}"
                else:
                    line = f"{indent}def {content}"
                    if not line.endswith(':'):
                        line += ':'
            lines.append(line)
            last_indent = line[:len(line) - len(line.lstrip())]
            prev_ended_with_colon = line.rstrip().endswith(':')
            continue

        line = line.rstrip(';')
        line = line.replace('&&', ' and ').replace('||', ' or ')
        line = re.sub(r'(?<![=!<>])!(?=[A-Za-z0-9_\(\[])', 'not ', line)
        
        # Convert len(...)/2 to integer division len(...)//2
        line = re.sub(r'len\((.*?)\)/2', r'len(\1)//2', line)
        line = re.sub(r'len\((.*?)\)/ 2', r'len(\1)//2', line)
        
        # Convert .push(...) calls to .append(...) for list methods
        line = re.sub(r'\.push\(', '.append(', line)
        
        # Replace calls to reserved keyword function names
        for kw in PYTHON_KEYWORDS:
            line = re.sub(rf'\b{kw}\(', f'{kw}_func(', line)

        # Handle return var op= expr -> var op= expr; return var
        m_ret = re.match(r'^(\s*)return\s+([A-Za-z_][A-Za-z0-9_]*)\s*(\^=|\|=|\&=|<<=|>>=)\s*(.*)$', line)
        if m_ret:
            indent, var, op, expr = m_ret.groups()
            lines.append(f"{indent}{var} {op} {expr}")
            lines.append(f"{indent}return {var}")
            continue

        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)\^=', r'\1 = \1 ^', line)
        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)\|=', r'\1 = \1 |', line)
        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)&=', r'\1 = \1 &', line)
        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)<<=', r'\1 = \1 <<', line)
        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)>>=', r'\1 = \1 >>', line)
        line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*?)\?([^:]+):([^;]+)', r'\2 if \1 else \3', line)
        line = re.sub(r'(?<![A-Za-z0-9_])([A-Za-z_][A-Za-z0-9_]*)\s*=\s*\{', r'\1 = {', line)
        lines.append(line)
        
        # update state for indentation
        if line.strip() and not line.strip().startswith('#'):
            last_indent = line[:len(line) - len(line.lstrip())]
            prev_ended_with_colon = line.rstrip().endswith(':')

    return '\n'.join(lines)

def get_base_namespace(source_path):
    namespace = {
        '__name__': '__main__',
        '__file__': str(source_path.resolve()),
        'name': 5,
        'builtins': builtins,
        'math': math,
        'os': os,
        'sys': sys,
        'time': time,
        'random': random,
        'datetime': datetime,
        'platform': platform,
        'json': json,
        'hashlib': hashlib,
        'array': list
    }
    
    # Smart input wrapper to support all data types automatically
    import ast
    _orig_input = input
    def smart_input(prompt=''):
        val = _orig_input(prompt)
        try:
            # Attempt to safely evaluate the string into a native data type
            return ast.literal_eval(val)
        except Exception:
            # Fallback to returning the raw string if it's not a parsable data type
            return val
    builtins.input = smart_input
    sys.setrecursionlimit(10000)

    def __import_sl__(modules):
        import importlib
        for mod in modules:
            found = False
            for search_dir in [Path("SL_Packages"), Path("Algorithms")]:
                compiler_dir = Path(getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__))))
                sl_file = compiler_dir / search_dir / f"{mod}.sl"
                if sl_file.exists():
                    pkg_source = sl_file.read_text(encoding='utf-8')
                    pkg_code = translate_sl(pkg_source)
                    mod_namespace = {'__name__': mod, 'builtins': builtins}
                    exec(pkg_code, mod_namespace)
                    if 'init' in mod_namespace:
                        mod_namespace['init']()
                    
                    class SLModule:
                        def __getattr__(self, name):
                            if '__getattr_sl__' in self.__dict__:
                                return self.__dict__['__getattr_sl__'](name)
                            raise AttributeError(f"module '{mod}' has no attribute '{name}'")
                    mod_obj = SLModule()
                    mod_obj.__dict__.update(mod_namespace)
                    
                    parts = mod.split('.')
                    if len(parts) == 1:
                        namespace[mod] = mod_obj
                    else:
                        top = parts[0]
                        if top not in namespace:
                            class DummyModule: pass
                            namespace[top] = DummyModule()
                        curr = namespace[top]
                        for part in parts[1:-1]:
                            if not hasattr(curr, part):
                                setattr(curr, part, DummyModule())
                            curr = getattr(curr, part)
                        setattr(curr, parts[-1], mod_obj)
                        namespace[mod] = mod_obj
                        
                    found = True
                    break
            if not found:
                try:
                    imported = importlib.import_module(mod)
                    parts = mod.split('.')
                    if len(parts) == 1:
                        namespace[mod] = imported
                    else:
                        top = parts[0]
                        if top not in namespace:
                            namespace[top] = importlib.import_module(top)
                        namespace[mod] = imported
                except ImportError:
                    pass

    def __from_import_sl__(module, names):
        import importlib
        mod_obj = None
        for search_dir in [Path("SL_Packages"), Path("Algorithms")]:
            compiler_dir = Path(getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__))))
            sl_file = compiler_dir / search_dir / f"{module}.sl"
            if sl_file.exists():
                pkg_source = sl_file.read_text(encoding='utf-8')
                pkg_code = translate_sl(pkg_source)
                mod_namespace = {'__name__': module, 'builtins': builtins}
                exec(pkg_code, mod_namespace)
                if 'init' in mod_namespace:
                    mod_namespace['init']()
                class SLModule:
                    def __getattr__(self, name):
                        if '__getattr_sl__' in self.__dict__:
                            return self.__dict__['__getattr_sl__'](name)
                        raise AttributeError(f"module '{module}' has no attribute '{name}'")
                mod_obj = SLModule()
                mod_obj.__dict__.update(mod_namespace)
                break
        
        if mod_obj is None:
            try:
                mod_obj = importlib.import_module(module)
            except ImportError:
                return

        if names == ['*']:
            if isinstance(mod_obj, type(sys)): # python module
                for k in dir(mod_obj):
                    if not k.startswith('_'):
                        namespace[k] = getattr(mod_obj, k)
            else: # SL module
                for k, v in mod_obj.__dict__.items():
                    if not k.startswith('_'):
                        namespace[k] = v
        else:
            for name in names:
                if hasattr(mod_obj, name):
                    namespace[name] = getattr(mod_obj, name)
                elif isinstance(mod_obj, dict) and name in mod_obj:
                    namespace[name] = mod_obj[name]

    namespace['__import_sl__'] = __import_sl__
    namespace['__from_import_sl__'] = __from_import_sl__
    return namespace

def compile_and_run(file_path):
    source_path = Path(file_path)
    if not source_path.exists():
        print(f"Error: Could not find file '{file_path}'")
        return

    print(f"--- Compiling and Running {file_path} ---")
    source = source_path.read_text(encoding='utf-8')
    code = translate_sl(source)
    namespace = get_base_namespace(source_path)

    try:
        exec(code, namespace)
        print(f"--- Finished {file_path} Successfully ---")
    except Exception as exc:
        print(f'Execution failed: {exc.__class__.__name__}: {exc}')
        traceback.print_exc()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python earth_compiler.py <file.sl>")
    else:
        compile_and_run(sys.argv[1])
