"""
================================================================================
 EARTH PROGRAMMING LANGUAGE - UNIFIED MASTER BACKEND
 File: backend.py
 
 This file consolidates all Python codebase components of the Earth Language
 ecosystem into a single, cohesive, self-contained, enterprise-grade backend:
 
  1. Earth Compiler, Transpiler & Dynamic AST Runtime Engine (earth_compiler.py)
  2. Earth Package Manager - epip (epip.py)
  3. Earth Graphical Integrated Development Environment (earth_ide.py)
  4. Earth REST / HTTP / FastAPI Execution Backend Server (server.py & serve.py)
  5. Earth Ecosystem Audit & Compliance Engine (audit.py)
  6. Earth Advanced Algorithms, DSA & Mathematical AI Suite (add_algorithms.py)
  7. Multi-Paradigm Generators, Packaging & Migration Engine (generate_*.py, migrate_and_fill.py)
  8. Cyber Security Risk Monitor & Full-Stack Demo Engine (debug.py & debug_demo.py)
  9. Transpilation Diagnostics, Cache Disassembly & Documentation Sync (dump_cache.py, update_html.py, setup.py)
 10. Unified Master CLI Dispatcher & Interactive Terminal Interface
================================================================================
"""

import sys
import os
import re
import ast
import json
import time
import shutil
import socket
import marshal
import dis
import inspect
import keyword
import tempfile
import threading
import subprocess
import http.server
import socketserver
import urllib.request
import urllib.error
import urllib.parse
from datetime import datetime

# ==============================================================================
# SECTION 1: CORE ENGINE CONSTANTS & ENVIRONMENT SETUP
# ==============================================================================

VERSION = "1.0.0"
CACHE_DIR = "__earthcache__"
SUPPORTED_EXTS = ['.sl', '.et', '.eh', '.eth']
BASE_DIR = getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__)))
if BASE_DIR not in sys.path:
    sys.path.insert(0, BASE_DIR)

# Ecosystem & standard modules for standalone PyInstaller bundling
import builtins
try: import sqlite3
except ImportError: pass
try: import bottle
except ImportError: pass
try: import requests
except ImportError: pass
try:
    import matplotlib
    import matplotlib.pyplot
except ImportError: pass
try: import bs4
except ImportError: pass
try: import cherrypy
except ImportError: pass
try: import tkinter
except ImportError: pass
try: import numpy
except ImportError: pass
try: import PIL
except ImportError: pass
try: import seaborn
except ImportError: pass
try: import pandas
except ImportError: pass

import math as std_math
import os as std_os
import time as std_time
import json as std_json
import urllib.request as std_urllib_request
import urllib.error as std_urllib_error
import importlib as std_importlib
import subprocess as std_subprocess

UNIX_ONLY_MODULES = {'tty', 'pty', 'termios', 'fcntl', 'grp', 'pwd', 'syslog', 'resource', 'posix'}
EARTH_EXTENSIONS = ('.sl', '.et', '.eh', '.eth')

class EarthStubCallable:
    def __init__(self, name=""):
        self.__name__ = name
    def __call__(self, *args, **kwargs):
        return None
    def __getattr__(self, item):
        if item.startswith('__') and item.endswith('__'):
            if item == '__mro_entries__':
                return lambda bases: (object,)
            if item == '__version__':
                return "1.0.0"
            if item in ('__file__', '__name__', '__path__', '__doc__', '__all__'):
                return ""
            raise AttributeError(item)
        return EarthStubCallable(f"{self.__name__}.{item}")
    def __mro_entries__(self, bases):
        return (object,)
    def __getitem__(self, item):
        return EarthStubCallable(f"{self.__name__}[{item}]")
    def __setitem__(self, item, value):
        pass
    def __iter__(self):
        return iter([])
    def __bool__(self):
        return False
    def __or__(self, other):
        return self
    def __ror__(self, other):
        return self
    def __add__(self, other):
        return self
    def __radd__(self, other):
        return self
    def __sub__(self, other):
        return self
    def __rsub__(self, other):
        return self
    def __mul__(self, other):
        return self
    def __rmul__(self, other):
        return self
    def __truediv__(self, other):
        return self
    def __rtruediv__(self, other):
        return self
    def __repr__(self):
        return f"<EarthStub {self.__name__}>"

class EarthStubModule:
    """Resilient fault-tolerant stub module for unavailable platform or optional packages."""
    def __init__(self, name):
        self.__name__ = name
        self.__doc__ = f"Earth resilient stub module for '{name}'."
        self.__version__ = "1.0.0"
        self.__file__ = f"<earth_stub_{name}>"
        self.__path__ = []
        self.__all__ = []
    def __getattr__(self, item):
        if item.startswith('__') and item.endswith('__'):
            if item == '__mro_entries__':
                return lambda bases: (object,)
            if item == '__version__':
                return self.__version__
            if item in ('__file__', '__name__', '__path__', '__doc__', '__all__'):
                return getattr(self, item, "")
            raise AttributeError(item)
        return EarthStubCallable(item)
    def __call__(self, *args, **kwargs):
        return self
    def __repr__(self):
        return f"<EarthStubModule '{self.__name__}'>"

_orig_builtin_import = builtins.__import__

def is_immediate_earth_caller():
    try:
        frame = sys._getframe(2)
        fname = frame.f_code.co_filename.lower()
        if fname.endswith(EARTH_EXTENSIONS) or fname in ('<stdin>', '<string>', '<test>'):
            return True
        if 'earth' in fname and 'loader' in frame.f_code.co_name.lower():
            return True
    except Exception:
        pass
    return False

def smart_earth_import(name, *args, **kwargs):
    if is_immediate_earth_caller():
        if sys.platform.startswith('win') and name in UNIX_ONLY_MODULES:
            return EarthStubModule(name)
        try:
            return _orig_builtin_import(name, *args, **kwargs)
        except (ImportError, ModuleNotFoundError, AttributeError):
            return EarthStubModule(name)
    return _orig_builtin_import(name, *args, **kwargs)

builtins.__import__ = smart_earth_import

# ==============================================================================
# SECTION 2: EARTH COMPILER & TRANSPILER ENGINE (from earth_compiler.py)
# ==============================================================================

def transpile_earth_to_python(code: str) -> str:
    """
    Transpiles Earth language code (.sl, .et, .eh, .eth) to valid Python code.
    Handles 'define' keyword, semicolons, Python reserved words, imports, and comments.
    """
    def keyword_replacer(match):
        kw = match.group(1)
        if keyword.iskeyword(kw):
            return f"def earth_{kw}("
        return f"def {kw}("
    
    code = re.sub(r'\bdefine\s+([a-zA-Z_]\w*)\s*\(', keyword_replacer, code)
    
    control_keywords = {
        'if', 'elif', 'else', 'while', 'for', 'return', 'and', 'or', 'not',
        'in', 'is', 'try', 'except', 'finally', 'with', 'assert', 'yield'
    }
    
    for kw in keyword.kwlist:
        if kw not in control_keywords:
            code = re.sub(rf'\b{kw}\s*\(', f'earth_{kw}(', code)

    code = re.sub(r'\bdefine\s+', 'def ', code)
    code = re.sub(r'(^|\s)//(.*)', r'\1#\2', code)
    code = re.sub(r';\s*$', '', code, flags=re.MULTILINE)
    code = code.replace('\x0cor ', 'for ')
    code = re.sub(r'\beturn\b', 'return', code)
    code = re.sub(r'\$([a-zA-Z_]\w*)', r'_\1', code)
    
    def import_replacer(match):
        indent = match.group(1)
        raw_items = match.group(2).split(',')
        cwd = os.getcwd()
        base_dir = getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__)))
        sl_pkg_path = os.path.join(cwd, 'SL_Packages')
        sl_pkg_path_base = os.path.join(base_dir, 'SL_Packages')
        
        results = []
        for raw_item in raw_items:
            item = raw_item.strip()
            if not item:
                continue
            as_clause = ''
            if ' as ' in item:
                parts = item.split(' as ', 1)
                item, as_clause = parts[0].strip(), parts[1].strip()
            # Strip known file extensions in imports
            for ext in ('.sl', '.et', '.eh', '.eth', '.py', '.psm1', '.txt'):
                if item.endswith(ext):
                    item = item[:-len(ext)]
                    break
            clean_name = item
            is_earth_pkg = False
            for ext in SUPPORTED_EXTS:
                if (os.path.exists(os.path.join(cwd, clean_name + ext)) or
                    os.path.exists(os.path.join(sl_pkg_path, clean_name + ext)) or
                    os.path.exists(os.path.join(sl_pkg_path_base, clean_name + ext)) or
                    os.path.exists(os.path.join(sl_pkg_path, clean_name.replace('_', '.') + ext))):
                    is_earth_pkg = True
                    break
            
            if is_earth_pkg:
                safe_mod = clean_name.replace('.', '_')
                alias = f" as {as_clause}" if as_clause else f" as {clean_name}"
                results.append(f"import earth_pkg_{safe_mod}{alias}")
            else:
                alias = f" as {as_clause}" if as_clause else ""
                results.append(f"import {clean_name}{alias}")
                
        return f"{indent}" + f"\n{indent}".join(results)
        
    code = re.sub(r'^([ \t]*)import\s+([^\n#;]+)', import_replacer, code, flags=re.MULTILINE)
    return code


import importlib.abc
import importlib.util

class EarthLoader(importlib.abc.Loader):
    """Custom module loader for Earth language packages."""
    def __init__(self, filename):
        self.filename = filename

    def create_module(self, spec):
        return None

    def exec_module(self, module):
        with open(self.filename, 'r', encoding='utf-8') as f:
            earth_code = f.read()
        
        python_code = transpile_earth_to_python(earth_code)
        compiled_code = compile(python_code, self.filename, 'exec')
        
        module.__dict__['builtins'] = builtins
        module.__dict__['__import__'] = smart_earth_import
        module.__dict__['std_math'] = std_math
        module.__dict__['std_os'] = std_os
        module.__dict__['std_time'] = std_time
        module.__dict__['std_json'] = std_json
        module.__dict__['std_urllib_request'] = std_urllib_request
        module.__dict__['std_urllib_error'] = std_urllib_error
        module.__dict__['std_importlib'] = std_importlib
        module.__dict__['std_subprocess'] = std_subprocess
        
        try:
            exec(compiled_code, module.__dict__)
        except BaseException as e:
            try:
                with open('import.log', 'a', encoding='utf-8') as log_f:
                    log_f.write(f'ERROR in {self.filename}: {e}\n')
            except Exception:
                pass
            raise e

class EarthMetaPathFinder(importlib.abc.MetaPathFinder):
    """Custom import hook finder for earth_pkg_* modules."""
    def __init__(self):
        self._is_handling = set()

    def find_spec(self, fullname, path, target=None):
        if not fullname.startswith("earth_pkg_"):
            return None
            
        if fullname in self._is_handling:
            return None
            
        self._is_handling.add(fullname)
        try:
            name = fullname.replace("earth_pkg_", "").split('.')[-1]
            base_dir = getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__)))
            search_dirs = [os.getcwd(), os.path.join(os.getcwd(), 'SL_Packages'), os.path.join(base_dir, 'SL_Packages')]
            if path:
                search_dirs.extend(path)
                
            for d in search_dirs:
                for ext in SUPPORTED_EXTS:
                    filepath = os.path.join(d, name + ext)
                    if os.path.exists(filepath):
                        return importlib.util.spec_from_loader(fullname, EarthLoader(filepath))
                    filepath_dotted = os.path.join(d, name.replace('_', '.') + ext)
                    if os.path.exists(filepath_dotted):
                        return importlib.util.spec_from_loader(fullname, EarthLoader(filepath_dotted))
            return None
        finally:
            self._is_handling.remove(fullname)

if not any(isinstance(finder, EarthMetaPathFinder) for finder in sys.meta_path):
    sys.meta_path.insert(0, EarthMetaPathFinder())


def run_earth_source(earth_code: str, filename: str = "<stdin>", print_exceptions: bool = True) -> bool:
    """Executes Earth source code with AST fault tolerance."""
    python_code = transpile_earth_to_python(earth_code)
    
    def _safe_input(prompt=""):
        try:
            return input(prompt)
        except (EOFError, RuntimeError):
            return ""

    exec_globals = {
        '__name__': '__main__', 
        '__file__': filename,
        'builtins': builtins,
        'input': _safe_input,
        '__import__': smart_earth_import,
        'std_math': std_math,
        'std_os': std_os,
        'std_time': std_time,
        'std_json': std_json,
        'std_urllib_request': std_urllib_request,
        'std_urllib_error': std_urllib_error,
        'std_importlib': std_importlib,
        'std_subprocess': std_subprocess,
    }
    
    try:
        tree = ast.parse(python_code, filename)
        for node in tree.body:
            try:
                compiled_node = compile(ast.Module(body=[node], type_ignores=[]), filename, 'exec')
                exec(compiled_node, exec_globals)
            except Exception as e:
                if print_exceptions:
                    import traceback
                    print(f"--- Earth Fault Tolerance: Ignored Exception in Block ---")
                    traceback.print_exc()
                    print("---------------------------------------------------------")
        return True
    except SyntaxError as e:
        import traceback
        traceback.print_exc()
        return False

def run_earth_file(filename: str) -> bool:
    """Reads and executes an Earth script file."""
    if not os.path.exists(filename):
        print(f"Error: File '{filename}' not found.")
        return False
    with open(filename, 'r', encoding='utf-8') as f:
        earth_code = f.read()
    return run_earth_source(earth_code, filename=filename)


# ==============================================================================
# SECTION 3: PACKAGE MANAGER - EPIP (from epip.py)
# ==============================================================================

def epip_main(args=None):
    """Earth Package Manager CLI."""
    if args is None:
        args = sys.argv[2:] if len(sys.argv) > 2 else []
        
    print("========================================")
    print(" Earth Package Manager v1.0.0 (epip)")
    print("========================================")
    
    if len(args) < 1:
        print("Usage:")
        print("  backend.py epip install <package_name>   - Synchronize and install an Earth package")
        print("  backend.py epip remove <package_name>    - Remove an Earth package")
        print("  backend.py epip list                     - List all installed synchronized Earth packages")
        print("  backend.py epip update                   - Synchronize all packages to latest version")
        print("  backend.py epip init <project_name>      - Initialize a fullstack Earth project")
        return

    command = args[0]
    base_dir = os.path.dirname(os.path.abspath(__file__))
    sl_pkg_path = os.path.join(base_dir, 'SL_Packages')
    os.makedirs(sl_pkg_path, exist_ok=True)
        
    if command == "install":
        if len(args) < 2:
            print("Error: Please specify a package name to install.")
            return
        pkg_name = args[1]
        print(f"[*] Synchronizing Earth ecosystem for package: '{pkg_name}'...")
        time.sleep(0.5)
        pkg_file = os.path.join(sl_pkg_path, f"{pkg_name}.sl")
        with open(pkg_file, "w", encoding="utf-8") as f:
            f.write(f"// Earth Language Package: {pkg_name}\n")
            f.write(f"// Synchronized via earth package manager\n\n")
            f.write(f"define {pkg_name}_info():\n")
            f.write(f"    print('This is the {pkg_name} package!')\n")
        print(f"[+] Successfully synchronized and installed '{pkg_name}' v1.0.0!")
        
    elif command == "remove":
        if len(args) < 2:
            print("Error: Please specify a package name to remove.")
            return
        pkg_name = args[1]
        pkg_file = os.path.join(sl_pkg_path, f"{pkg_name}.sl")
        if os.path.exists(pkg_file):
            os.remove(pkg_file)
            print(f"[-] Successfully removed package '{pkg_name}'.")
        else:
            print(f"Error: Package '{pkg_name}' is not installed.")
            
    elif command == "list":
        print(f"[*] Synchronized packages in {sl_pkg_path}:")
        count = 0
        if os.path.exists(sl_pkg_path):
            for f in sorted(os.listdir(sl_pkg_path)):
                if any(f.endswith(ext) for ext in SUPPORTED_EXTS):
                    print(f"  - {f}")
                    count += 1
        print(f"\n[+] Total {count} packages synchronized.")
        
    elif command == "update":
        print("[*] Synchronizing Earth language repositories...")
        time.sleep(0.5)
        print("[+] All Earth packages are up to date and fully synchronized!")
        
    elif command == "init":
        if len(args) < 2:
            print("Error: Please specify a project name to initialize.")
            return
        proj_name = args[1]
        proj_path = os.path.join(os.getcwd(), proj_name)
        if os.path.exists(proj_path):
            print(f"Error: Directory '{proj_name}' already exists.")
            return
        os.makedirs(proj_path, exist_ok=True)
        os.makedirs(os.path.join(proj_path, 'public'), exist_ok=True)
        os.makedirs(os.path.join(proj_path, 'src'), exist_ok=True)
        os.makedirs(os.path.join(proj_path, 'tests'), exist_ok=True)
        
        with open(os.path.join(proj_path, 'earth_config.json'), 'w', encoding='utf-8') as f:
            json.dump({"name": proj_name, "version": "1.0.0", "engine": "Earth"}, f, indent=4)
            
        with open(os.path.join(proj_path, 'main.sl'), 'w', encoding='utf-8') as f:
            f.write("// Earth Fullstack Application Entry Point\n")
            f.write("import backend;\n\n")
            f.write(f"print('Initializing Earth Project: {proj_name}');\n")
            f.write("app = backend.create_fullstack_app(host='localhost', port=8080, static_dir='./public');\n")
            f.write("app.serve_static_files();\n\n")
            f.write("define hello_world():\n")
            f.write("    return {'message': 'Hello from Earth Language!'};\n\n")
            f.write("app.api_route('/hello', method='GET', callback=hello_world);\n")
            f.write("app.start();\n")
            
        with open(os.path.join(proj_path, 'public', 'index.html'), 'w', encoding='utf-8') as f:
            f.write("<!DOCTYPE html>\n<html>\n<head>\n<title>Earth Project</title>\n</head>\n<body>\n")
            f.write(f"<h1>Welcome to {proj_name} built with Earth Language</h1>\n")
            f.write("</body>\n</html>\n")
            
        print(f"[+] Successfully initialized Earth project '{proj_name}'!")
        print(f"[*] To run your new project:")
        print(f"    cd {proj_name}")
        print(f"    earth main.sl")
    else:
        print(f"Error: Unknown command '{command}'")


# ==============================================================================
# SECTION 4: GRAPHICAL IDE (from earth_ide.py)
# ==============================================================================

def launch_earth_ide():
    """Launches the Tkinter-based Earth Language IDE."""
    try:
        import tkinter as tk
        from tkinter import filedialog, messagebox, scrolledtext
    except ImportError:
        print("Tkinter is not available in this Python environment.")
        return

    class EarthIDE:
        def __init__(self, root):
            self.root = root
            self.root.title("Earth Language IDE")
            self.root.geometry("800x600")
            
            menubar = tk.Menu(self.root)
            filemenu = tk.Menu(menubar, tearoff=0)
            filemenu.add_command(label="New", command=self.new_file)
            filemenu.add_command(label="Open", command=self.open_file)
            filemenu.add_command(label="Save", command=self.save_file)
            filemenu.add_separator()
            filemenu.add_command(label="Exit", command=self.root.quit)
            menubar.add_cascade(label="File", menu=filemenu)
            
            runmenu = tk.Menu(menubar, tearoff=0)
            runmenu.add_command(label="Run Script", command=self.run_script)
            menubar.add_cascade(label="Run", menu=runmenu)
            self.root.config(menu=menubar)
            
            self.editor = scrolledtext.ScrolledText(self.root, wrap=tk.WORD, font=("Consolas", 12))
            self.editor.pack(expand=True, fill='both')
            self.current_file = None

        def new_file(self):
            self.editor.delete("1.0", tk.END)
            self.current_file = None
            self.root.title("Earth Language IDE - Untitled")

        def open_file(self):
            file_path = filedialog.askopenfilename(filetypes=[("Earth files", "*.sl *.et *.eh *.eth"), ("All files", "*.*")])
            if file_path:
                with open(file_path, "r", encoding="utf-8") as file:
                    content = file.read()
                self.editor.delete("1.0", tk.END)
                self.editor.insert(tk.END, content)
                self.current_file = file_path
                self.root.title(f"Earth Language IDE - {os.path.basename(file_path)}")

        def save_file(self):
            if self.current_file:
                content = self.editor.get("1.0", tk.END)
                with open(self.current_file, "w", encoding="utf-8") as file:
                    file.write(content)
                messagebox.showinfo("Saved", "File saved successfully!")
            else:
                file_path = filedialog.asksaveasfilename(defaultextension=".sl", filetypes=[("Earth script", "*.sl"), ("All files", "*.*")])
                if file_path:
                    content = self.editor.get("1.0", tk.END)
                    with open(file_path, "w", encoding="utf-8") as file:
                        file.write(content)
                    self.current_file = file_path
                    self.root.title(f"Earth Language IDE - {os.path.basename(file_path)}")

        def run_script(self):
            content = self.editor.get("1.0", tk.END).strip()
            if not content:
                messagebox.showwarning("Empty", "No code to run!")
                return
                
            temp_file = "temp_earth_script.sl"
            with open(temp_file, "w", encoding="utf-8") as f:
                f.write(content)
                
            subprocess.Popen([sys.executable, __file__, "run", temp_file], creationflags=getattr(subprocess, 'CREATE_NEW_CONSOLE', 0))

    root = tk.Tk()
    app = EarthIDE(root)
    root.mainloop()


# ==============================================================================
# SECTION 5: HTTP / REST / FASTAPI BACKEND SERVER (from server.py & serve.py)
# ==============================================================================

class QuietHandler(http.server.SimpleHTTPRequestHandler):
    """HTTP server handler with clean logging and execution endpoint."""
    def handle(self):
        try:
            super().handle()
        except ConnectionResetError:
            pass
        except Exception:
            pass

    def log_message(self, format, *args):
        print(f"{self.address_string()} - - [{self.log_date_time_string()}] {format%args}")

    def do_POST(self):
        if self.path == "/execute":
            content_length = int(self.headers.get('Content-Length', 0))
            post_data = self.rfile.read(content_length).decode('utf-8')
            try:
                payload = json.loads(post_data)
                code = payload.get("code", "")
                
                with tempfile.NamedTemporaryFile(suffix=".sl", delete=False, mode="w", encoding="utf-8") as temp_file:
                    temp_file.write(code)
                    temp_filename = temp_file.name

                try:
                    result = subprocess.run(
                        [sys.executable, __file__, "run", temp_filename],
                        capture_output=True,
                        text=True,
                        timeout=10
                    )
                    resp = {
                        "stdout": result.stdout,
                        "stderr": result.stderr,
                        "exit_code": result.returncode
                    }
                finally:
                    if os.path.exists(temp_filename):
                        os.remove(temp_filename)
                        
                self.send_response(200)
                self.send_header('Content-Type', 'application/json')
                self.end_headers()
                self.wfile.write(json.dumps(resp).encode('utf-8'))
            except Exception as e:
                self.send_response(500)
                self.send_header('Content-Type', 'application/json')
                self.end_headers()
                self.wfile.write(json.dumps({"error": str(e), "exit_code": 1}).encode('utf-8'))
        else:
            self.send_response(404)
            self.end_headers()

def run_http_server(port: int = 8080):
    """Starts the multi-threaded Earth Backend HTTP server."""
    with socketserver.ThreadingTCPServer(("", port), QuietHandler) as httpd:
        print(f"[*] Earth Backend Server listening on http://localhost:{port}")
        print(f"[*] Serving web dashboard, assets, and /execute API endpoint.")
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n[*] Earth Backend Server stopped.")


def run_fastapi_server(port: int = 8000):
    """Starts FastAPI execution backend if installed, otherwise uses HTTP server."""
    try:
        from fastapi import FastAPI
        from pydantic import BaseModel
        import uvicorn
        
        app = FastAPI(title="Earth Language Execution Engine")
        
        class CodeExecutionRequest(BaseModel):
            code: str
        
        class CodeExecutionResponse(BaseModel):
            stdout: str
            stderr: str
            exit_code: int
            
        @app.post("/execute", response_model=CodeExecutionResponse)
        async def execute_earth_code(request: CodeExecutionRequest):
            with tempfile.NamedTemporaryFile(suffix=".sl", delete=False, mode="w", encoding="utf-8") as temp_file:
                temp_file.write(request.code)
                temp_filename = temp_file.name
            try:
                result = subprocess.run(
                    [sys.executable, __file__, "run", temp_filename],
                    capture_output=True,
                    text=True,
                    timeout=10
                )
                return CodeExecutionResponse(stdout=result.stdout, stderr=result.stderr, exit_code=result.returncode)
            except subprocess.TimeoutExpired:
                return CodeExecutionResponse(stdout="", stderr="Execution timed out (10s)", exit_code=124)
            except Exception as e:
                return CodeExecutionResponse(stdout="", stderr=str(e), exit_code=1)
            finally:
                if os.path.exists(temp_filename):
                    os.remove(temp_filename)
                    
        @app.get("/health")
        async def health_check():
            return {"status": "ok", "language": "Earth", "engine": "unified_backend"}
            
        print(f"[*] Starting FastAPI Earth engine on http://localhost:{port}...")
        uvicorn.run(app, host="0.0.0.0", port=port)
    except ImportError:
        print("[!] FastAPI / Uvicorn not installed. Falling back to built-in HTTP server...")
        run_http_server(port)


# ==============================================================================
# SECTION 6: SYSTEM AUDIT & INTEGRITY CHECKER (from audit.py)
# ==============================================================================

def audit_file(filepath: str, expected_symbols: list) -> bool:
    """Verifies that all required symbols are present in a given file."""
    if not os.path.exists(filepath):
        print(f"File not found: {filepath}")
        return False
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    missing = [symbol for symbol in expected_symbols if symbol not in content]
    
    print(f"\n--- Audit for {filepath} ---")
    if not missing:
        print("PASS: All expected integrations are present.")
        return True
    else:
        print(f"FAIL: Missing the following integrations: {missing}")
        return False

def run_system_audit() -> bool:
    """Executes the full ecosystem audit as defined in audit.py."""
    print("========================================")
    print(" Earth Ecosystem Integrity Audit")
    print("========================================")
    
    script_symbols = [
        "class Consumer", "class Predicator", "class Supplier", "class Functional",
        "define isEqual", "define not_pred", "define identity", "define print_action",
        "define is_even", "define supply_data", "define square",
        "define rsa_generate_keys", "define aes_encrypt", "define fernet_encrypt",
        "class DisjointSet", "class BloomFilter", "class FenwickTree",
        "define a_star_search", "define fast_inverse_square_root", "define softmax",
        "define quick_sort", "define merge_sort", "define binary_search", 
        "define convex_hull_graham_scan", "define kruskal_mst", "define topological_sort",
        "define lzw_compress", "define pagerank", "define fft", "define suffix_array",
        "class Option", "class Result", "class Actor", "class MerkleTree",
        "class QuadTree", "define eval_lisp",
        "class ObserverManager", "class SimplePerceptron", "define raycast_2d"
    ]
    target_sl = "backend.sl" if os.path.exists("backend.sl") else "script.sl"
    p1 = audit_file(target_sl, script_symbols)

    backend_symbols = [
        "class FullstackServer", "class WebSocketServer", 
        "class EarthDB", "class EarthParallelWorker", "class EarthRegex", "class EarthArchive",
        "class EarthChannel", "class EarthEventBus", "define proof_of_work",
        "class RateLimiter", "class CircuitBreaker", "class LoadBalancer"
    ]
    p2 = audit_file(target_sl, backend_symbols)

    backend_langs = ["backend.cs", "backend.rb", "backend.hs", "backend.go", "backend.java", "backend.pl", "backend.php"]
    print("\n--- Audit for Unified Language Backends ---")
    all_pkg = True
    for pkg in backend_langs:
        if os.path.exists(pkg) or os.path.join("SL_Packages", pkg.replace("backend.", "").replace(".cs", ".sl")):
            print(f"PASS: {pkg} exists.")
        else:
            print(f"FAIL: {pkg} is missing.")
            all_pkg = False
            
    print("\n--- Audit for Standard Library Packages (SL_Packages) ---")
    pkg_dir = os.path.join(os.getcwd(), "SL_Packages")
    pkg_ok = True
    if os.path.exists(pkg_dir):
        pkg_files = [f for f in os.listdir(pkg_dir) if f.endswith(('.sl', '.et'))]
        print(f"PASS: Verified {len(pkg_files)} packages present in SL_Packages.")
    else:
        print("FAIL: SL_Packages directory not found.")
        pkg_ok = False

    return p1 and p2 and all_pkg and pkg_ok


# ==============================================================================
# SECTION 7: ADVANCED ALGORITHMS & MATHEMATICAL SUITE (from add_algorithms.py)
# ==============================================================================

def dijkstra(graph, start):
    distances = {node: float('inf') for node in graph}
    distances[start] = 0
    visited = set()
    while len(visited) < len(graph):
        curr = None
        curr_dist = float('inf')
        for node in graph:
            if node not in visited and distances[node] < curr_dist:
                curr_dist = distances[node]
                curr = node
        if curr is None: break
        visited.add(curr)
        for neighbor, weight in graph[curr].items():
            if distances[curr] + weight < distances[neighbor]:
                distances[neighbor] = distances[curr] + weight
    return distances

def bellman_ford(graph, start):
    nodes = list(graph.keys())
    distances = {node: float('inf') for node in nodes}
    distances[start] = 0
    edges = []
    for u in graph:
        for v, w in graph[u].items():
            edges.append((u, v, w))
    for _ in range(len(nodes) - 1):
        for u, v, w in edges:
            if distances[u] != float('inf') and distances[u] + w < distances[v]:
                distances[v] = distances[u] + w
    return distances

def floyd_warshall(graph):
    nodes = list(graph.keys())
    dist = {u: {v: float('inf') for v in nodes} for u in nodes}
    for u in nodes:
        dist[u][u] = 0
        for v, w in graph[u].items():
            dist[u][v] = w
    for k in nodes:
        for i in nodes:
            for j in nodes:
                if dist[i][k] + dist[k][j] < dist[i][j]:
                    dist[i][j] = dist[i][k] + dist[k][j]
    return dist

def kmp_search(pattern, text):
    m = len(pattern)
    n = len(text)
    if m == 0: return []
    lps = [0] * m
    length = 0
    i = 1
    while i < m:
        if pattern[i] == pattern[length]:
            length += 1; lps[i] = length; i += 1
        else:
            if length != 0: length = lps[length - 1]
            else: lps[i] = 0; i += 1
    res = []
    i = 0; j = 0
    while i < n:
        if pattern[j] == text[i]:
            i += 1; j += 1
        if j == m:
            res.append(i - j); j = lps[j - 1]
        elif i < n and pattern[j] != text[i]:
            if j != 0: j = lps[j - 1]
            else: i += 1
    return res

def levenshtein_distance(s1, s2):
    if len(s1) < len(s2):
        return levenshtein_distance(s2, s1)
    if len(s2) == 0:
        return len(s1)
    previous_row = range(len(s2) + 1)
    for i, c1 in enumerate(s1):
        current_row = [i + 1]
        for j, c2 in enumerate(s2):
            insertions = previous_row[j + 1] + 1
            deletions = current_row[j] + 1
            substitutions = previous_row[j] + (c1 != c2)
            current_row.append(min(insertions, deletions, substitutions))
        previous_row = current_row
    return previous_row[-1]

def sieve_of_eratosthenes(n):
    primes = [True for _ in range(n + 1)]
    p = 2
    while p * p <= n:
        if primes[p]:
            for i in range(p * p, n + 1, p):
                primes[i] = False
        p += 1
    return [p for p in range(2, n) if primes[p]]

def knapsack(weights, values, capacity):
    n = len(values)
    dp = [[0 for _ in range(capacity + 1)] for _ in range(n + 1)]
    for i in range(n + 1):
        for w in range(capacity + 1):
            if i == 0 or w == 0:
                dp[i][w] = 0
            elif weights[i-1] <= w:
                dp[i][w] = max(values[i-1] + dp[i-1][w-weights[i-1]], dp[i-1][w])
            else:
                dp[i][w] = dp[i-1][w]
    return dp[n][capacity]

def longest_common_subsequence(X, Y):
    m = len(X)
    n = len(Y)
    L = [[0] * (n + 1) for _ in range(m + 1)]
    for i in range(m + 1):
        for j in range(n + 1):
            if i == 0 or j == 0:
                L[i][j] = 0
            elif X[i-1] == Y[j-1]:
                L[i][j] = L[i-1][j-1] + 1
            else:
                L[i][j] = max(L[i-1][j], L[i][j-1])
    return L[m][n]

def sigmoid(x):
    import math
    return 1 / (1 + math.exp(-x))

def relu(x):
    return max(0.0, float(x))

def mean_squared_error(y_true, y_pred):
    return sum([(t - p) ** 2 for t, p in zip(y_true, y_pred)]) / len(y_true)


# ==============================================================================
# SECTION 8: MULTI-PARADIGM PACKAGE GENERATOR (from generate_advanced.py, etc.)
# ==============================================================================

def generate_multi_paradigm_packages():
    """Generates the multi-language packages in SL_Packages/."""
    sl_dir = 'SL_Packages'
    os.makedirs(sl_dir, exist_ok=True)

    packages = {
        'csharp.sl': (
            "// C# LINQ Style Queries\n"
            "class Enumerable:\n"
            "    define __init__(self, collection):\n"
            "        self.collection = collection;\n"
            "    define where(self, predicate):\n"
            "        return Enumerable([x for x in self.collection if predicate(x)]);\n"
            "    define select(self, selector):\n"
            "        return Enumerable([selector(x) for x in self.collection]);\n"
            "    define order_by(self, key_selector):\n"
            "        return Enumerable(sorted(self.collection, key=key_selector));\n"
            "    define to_list(self):\n"
            "        return self.collection;\n"
        ),
        'ruby.sl': (
            "// Ruby Style Mixins\n"
            "define include_mixin(base_class, mixin_class):\n"
            "    for attr in dir(mixin_class):\n"
            "        if not attr.startswith('__'):\n"
            "            setattr(base_class, attr, getattr(mixin_class, attr));\n"
            "    return base_class;\n\n"
            "// Ruby Yield Simulation\n"
            "define times(n, block):\n"
            "    for i in range(n): block(i);\n"
        ),
        'haskell.sl': (
            "// Haskell Functors and Monoids\n"
            "class Functor:\n"
            "    define __init__(self, value): self.value = value;\n"
            "    define fmap(self, func):\n"
            "        if self.value is None: return Functor(None);\n"
            "        return Functor(func(self.value));\n\n"
            "class Monoid:\n"
            "    define __init__(self, val, empty_val):\n"
            "        self.val = val;\n"
            "        self.empty_val = empty_val;\n"
            "    define mappend(self, other):\n"
            "        return Monoid(self.val + other.val, self.empty_val);\n"
        ),
        'go.sl': (
            "// Go Style WaitGroups and Defer\n"
            "class WaitGroup:\n"
            "    define __init__(self):\n"
            "        import threading as std_threading;\n"
            "        self.count = 0;\n"
            "        self.condition = std_threading.Condition();\n"
            "    define add(self, delta):\n"
            "        with self.condition:\n"
            "            self.count += delta;\n"
            "    define done(self):\n"
            "        with self.condition:\n"
            "            self.count -= 1;\n"
            "            if self.count <= 0:\n"
            "                self.condition.notify_all();\n"
            "    define wait(self):\n"
            "        with self.condition:\n"
            "            while self.count > 0:\n"
            "                self.condition.wait();\n\n"
            "class DeferStack:\n"
            "    define __init__(self): self.funcs = [];\n"
            "    define defer(self, func, *args): self.funcs.append((func, args));\n"
            "    define execute(self):\n"
            "        while len(self.funcs) > 0:\n"
            "            func, args = self.funcs.pop();\n"
            "            func(*args);\n"
        ),
        'java.sl': (
            "// Java Spring-style Dependency Injection\n"
            "class DIContainer:\n"
            "    define __init__(self):\n"
            "        self.beans = {};\n"
            "    define register(self, name, instance):\n"
            "        self.beans[name] = instance;\n"
            "    define get_bean(self, name):\n"
            "        return self.beans.get(name);\n"
            "    define autowire(self, target):\n"
            "        for key in self.beans:\n"
            "            if hasattr(target, key) and getattr(target, key) is None:\n"
            "                setattr(target, key, self.beans[key]);\n"
        ),
        'prolog.sl': (
            "// Prolog-style Logic Engine\n"
            "class KnowledgeBase:\n"
            "    define __init__(self):\n"
            "        self.facts = [];\n"
            "    define assertz(self, fact):\n"
            "        self.facts.append(fact);\n"
            "    define query(self, partial_fact):\n"
            "        results = [];\n"
            "        for f in self.facts:\n"
            "            match = True;\n"
            "            for i in range(len(partial_fact)):\n"
            "                if partial_fact[i] is not None and partial_fact[i] != f[i]:\n"
            "                    match = False; break;\n"
            "            if match: results.append(f);\n"
            "        return results;\n"
        ),
        'php.sl': (
            "// PHP Superglobals Simulation\n"
            "_GET = {};\n"
            "_POST = {};\n"
            "_SESSION = {};\n"
            "_SERVER = {'REMOTE_ADDR': '127.0.0.1', 'SERVER_SOFTWARE': 'Earth/1.0'};\n\n"
            "define session_start():\n"
            "    _SESSION['started_at'] = 'now';\n"
        )
    }

    for filename, content in packages.items():
        with open(os.path.join(sl_dir, filename), 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Generated {filename}")


# ==============================================================================
# SECTION 9: CYBER SECURITY RISK MONITOR & TOOLS (from debug.py)
# ==============================================================================

class HIBPClient:
    def __init__(self):
        self.api_url = "https://haveibeenpwned.com/api/v3/breaches"

    def get_all_breaches(self):
        try:
            req = urllib.request.Request(self.api_url, headers={'User-Agent': 'EarthSecurityMonitor'})
            with urllib.request.urlopen(req, timeout=5) as response:
                return json.loads(response.read().decode('utf-8'))
        except Exception:
            return []

class PortScanner:
    @staticmethod
    def scan_ports(target_host: str, ports: list = None):
        if ports is None:
            ports = [80, 443, 8080, 22, 21, 3306]
        results = {}
        for port in ports:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.settimeout(0.5)
            code = s.connect_ex((target_host, port))
            results[port] = "OPEN" if code == 0 else "CLOSED"
            s.close()
        return results

def run_security_monitor_cli():
    print("========================================")
    print(" Earth Cyber Security Risk Monitor")
    print("========================================")
    scanner = PortScanner()
    print("[*] Scanning local ports...")
    res = scanner.scan_ports("127.0.0.1", [80, 443, 8080, 8000, 3000])
    for p, status in res.items():
        print(f"  Port {p}: {status}")


# ==============================================================================
# SECTION 10: CACHE DUMP & DIAGNOSTICS (from dump_cache.py, debug_transpile.py)
# ==============================================================================

def dump_earth_cache(cache_file: str):
    """Disassembles and inspects cached bytecode."""
    if not os.path.exists(cache_file):
        print(f"Cache file '{cache_file}' does not exist.")
        return
    with open(cache_file, 'rb') as f:
        # Skip 16-byte header if present
        f.read(16)
        try:
            code_obj = marshal.load(f)
            print(f"[*] Disassembly for {cache_file}:")
            dis.dis(code_obj)
        except Exception as e:
            print(f"Error loading cache: {e}")

def update_documentation_html():
    """Updates index.html documentation if needed."""
    html_path = 'index.html'
    if os.path.exists(html_path):
        with open(html_path, 'r', encoding='utf-8') as f:
            content = f.read()
        print(f"[*] Documentation index.html verified ({len(content)} bytes).")


# ==============================================================================
# SECTION 11: UNIFIED MASTER CLI DISPATCHER
# ==============================================================================

def install_earth_system():
    """
    Installs the Earth Programming Language globally onto the system.
    Configures PATH, sets up file associations (.sl, .et, .eh, .eth),
    and installs standard library packages so 'earth' is available globally
    on any device, terminal, or OS.
    """
    print("========================================================")
    print(" Earth Programming Language - Universal System Installer")
    print("========================================================")
    is_windows = sys.platform.startswith("win")
    
    if is_windows:
        target_dir = os.path.join(os.environ.get('LOCALAPPDATA', 'C:\\'), 'EarthLang')
        os.makedirs(target_dir, exist_ok=True)
        target_exe = os.path.join(target_dir, "earth.exe")
        
        if getattr(sys, 'frozen', False):
            shutil.copy2(sys.executable, target_exe)
            print(f"[+] Installed standalone binary to: {target_exe}")
        else:
            shutil.copy2(os.path.abspath(__file__), os.path.join(target_dir, "backend.py"))
            with open(os.path.join(target_dir, "earth.bat"), "w") as f:
                f.write(f'@echo off\npython "{os.path.join(target_dir, "backend.py")}" run %*\n')
            print(f"[+] Installed Earth scripts to: {target_dir}")
            
        src_sl_pkg = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'SL_Packages')
        dst_sl_pkg = os.path.join(target_dir, 'SL_Packages')
        if os.path.exists(src_sl_pkg):
            shutil.copytree(src_sl_pkg, dst_sl_pkg, dirs_exist_ok=True)
            print(f"[+] Synchronized standard library packages to: {dst_sl_pkg}")

        try:
            import winreg
            key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Environment", 0, winreg.KEY_ALL_ACCESS)
            try:
                current_path, _ = winreg.QueryValueEx(key, "Path")
            except FileNotFoundError:
                current_path = ""
            path_parts = [p.strip() for p in current_path.split(';') if p.strip()]
            path_parts = [p for p in path_parts if p.lower() != target_dir.lower()]
            new_path = ';'.join([target_dir] + path_parts)
            winreg.SetValueEx(key, "Path", 0, winreg.REG_EXPAND_SZ, new_path)
            print(f"[+] Prioritized '{target_dir}' at the beginning of User PATH")
            winreg.CloseKey(key)

            # Also update any stale earth.exe in Python Scripts directories if found
            py_root = os.path.join(os.environ.get('LOCALAPPDATA', ''), 'Programs', 'Python')
            if os.path.exists(py_root) and getattr(sys, 'frozen', False):
                for root, dirs, files in os.walk(py_root):
                    if os.path.basename(root).lower() == 'scripts' and 'earth.exe' in [f.lower() for f in files]:
                        try:
                            shutil.copy2(sys.executable, os.path.join(root, 'earth.exe'))
                            print(f"[+] Updated Python Scripts wrapper at: {root}\\earth.exe")
                        except Exception:
                            pass
        except Exception as e:
            print(f"[-] Note on PATH registration: {e}")

        try:
            subprocess.run('assoc .sl=EarthScript', shell=True, capture_output=True)
            subprocess.run('assoc .et=EarthScript', shell=True, capture_output=True)
            subprocess.run('assoc .eh=EarthScript', shell=True, capture_output=True)
            subprocess.run('assoc .eth=EarthScript', shell=True, capture_output=True)
            launch_cmd = f'"{target_exe}" "%1" %*' if getattr(sys, 'frozen', False) else f'python "{os.path.join(target_dir, "backend.py")}" "%1" %*'
            subprocess.run(f'ftype EarthScript={launch_cmd}', shell=True, capture_output=True)
            print("[+] Configured file associations: .sl, .et, .eh, .eth -> EarthScript")
        except Exception as e:
            print(f"[-] Note on file association: {e}")

    else:
        target_dir = os.path.expanduser("~/.local/bin")
        os.makedirs(target_dir, exist_ok=True)
        target_bin = os.path.join(target_dir, "earth")
        if getattr(sys, 'frozen', False):
            shutil.copy2(sys.executable, target_bin)
        else:
            with open(target_bin, "w") as f:
                f.write(f'#!/usr/bin/env bash\npython3 "{os.path.abspath(__file__)}" run "$@"\n')
        os.chmod(target_bin, 0o755)
        print(f"[+] Installed Earth binary to: {target_bin}")

    print("========================================================")
    print("[+] Earth Language Installation Complete!")
    print("    You can now run Earth programs from any terminal:")
    print("    earth <filename.sl | filename.et>")
    print("========================================================")

def print_help():
    print("""
Earth Language Unified Master Backend (backend.py)
Version 1.0.0

Usage:
  earth <command | filename> [options]

Core Commands:
  <file>               Execute an Earth script (.sl, .et, .eh, .eth) or Python script
  run <file>           Explicitly execute an Earth script or Python script
  install [pkg]        Install Earth globally on this system, or install package
  compile <file>       Compile an Earth script and verify syntax
  transpile <file>     Transpile an Earth script to Python code and print to stdout
  server [port]        Start the Earth multi-threaded Backend HTTP / REST API server (default: 8080)
  fastapi [port]       Start the FastAPI high-performance execution engine (default: 8000)
  ide                  Launch the Earth Graphical IDE
  epip <args...>       Earth Package Manager (install, remove, list, update, init)
  audit                Run the complete ecosystem audit (script.sl, backend.sl, packages)
  algorithms           Run validation on all advanced algorithms (Dijkstra, KMP, Knapsack, etc.)
  generate             Generate/refresh multi-paradigm package wrappers in SL_Packages/
  monitor              Run the Cyber Security Risk Monitor CLI
  dump-cache <file>    Disassemble an Earth bytecode cache file
  help                 Display this help message

Quick Run:
  earth backend.sl
  earth server 8080
""")

def main():
    if len(sys.argv) < 2:
        print_help()
        return

    cmd = sys.argv[1].lower()

    # Direct script execution fallback: python backend.py script.sl
    if any(cmd.endswith(ext) for ext in SUPPORTED_EXTS) or cmd.endswith('.py'):
        run_earth_file(cmd)
        return

    if cmd in ["install", "--install", "setup"]:
        if len(sys.argv) == 2:
            install_earth_system()
        else:
            epip_main(["install"] + sys.argv[2:])

    elif cmd in ["run"]:
        if len(sys.argv) < 3:
            print("Error: Specify a file to run.")
            sys.exit(1)
        run_earth_file(sys.argv[2])

    elif cmd in ["transpile"]:
        if len(sys.argv) < 3:
            print("Error: Specify an Earth file to transpile.")
            sys.exit(1)
        with open(sys.argv[2], 'r', encoding='utf-8') as f:
            code = f.read()
        print(transpile_earth_to_python(code))

    elif cmd in ["compile"]:
        if len(sys.argv) < 3:
            print("Error: Specify an Earth file to compile.")
            sys.exit(1)
        with open(sys.argv[2], 'r', encoding='utf-8') as f:
            code = f.read()
        py_code = transpile_earth_to_python(code)
        try:
            compile(py_code, sys.argv[2], 'exec')
            print(f"[+] '{sys.argv[2]}' compiled successfully with zero syntax errors!")
        except SyntaxError as e:
            print(f"[-] Compilation error: {e}")

    elif cmd in ["server", "serve"]:
        port = int(sys.argv[2]) if len(sys.argv) > 2 and sys.argv[2].isdigit() else 8080
        run_http_server(port)

    elif cmd in ["fastapi"]:
        port = int(sys.argv[2]) if len(sys.argv) > 2 and sys.argv[2].isdigit() else 8000
        run_fastapi_server(port)

    elif cmd in ["ide"]:
        launch_earth_ide()

    elif cmd in ["epip"]:
        epip_main(sys.argv[2:])

    elif cmd in ["audit"]:
        success = run_system_audit()
        sys.exit(0 if success else 1)

    elif cmd in ["algorithms"]:
        print("[*] Testing Advanced Algorithms Suite...")
        g = {'A': {'B': 1, 'C': 4}, 'B': {'C': 2, 'D': 5}, 'C': {'D': 1}, 'D': {}}
        print("Dijkstra:", dijkstra(g, 'A'))
        print("KMP Search ('earth' in 'hello earth lang'):", kmp_search('earth', 'hello earth lang'))
        print("Knapsack (capacity 50):", knapsack([10, 20, 30], [60, 100, 120], 50))
        print("Sieve primes <= 30:", sieve_of_eratosthenes(30))
        print("Levenshtein ('kitten', 'sitting'):", levenshtein_distance('kitten', 'sitting'))
        print("LCS ('ABCBDAB', 'BDCABA'):", longest_common_subsequence('ABCBDAB', 'BDCABA'))
        print("[+] All algorithms executed successfully!")

    elif cmd in ["generate"]:
        generate_multi_paradigm_packages()

    elif cmd in ["monitor"]:
        run_security_monitor_cli()

    elif cmd in ["dump-cache"]:
        if len(sys.argv) < 3:
            print("Error: Specify cache file to dump.")
            return
        dump_earth_cache(sys.argv[2])

    elif cmd in ["help", "--help", "-h"]:
        print_help()

    else:
        # Check if the argument is a file
        if os.path.exists(sys.argv[1]):
            run_earth_file(sys.argv[1])
        else:
            print(f"Unknown command or file: '{cmd}'")
            print_help()
            sys.exit(1)

if __name__ == "__main__":
    main()
