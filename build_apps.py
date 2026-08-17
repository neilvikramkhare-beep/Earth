import re

apps = {
    "search": [], "cyber": [], "network": [], "ai": [], "monitor": [],
    "clinic": [], "social": [], "deploy": [], "api": [], "games": [],
    "kernel": [], "code_studio": [], "animator": [],
    "weather": [], "calendar": [], "messenger": [], "maps": [],
    "music": [], "settings": []
}

def extract_funcs(filename):
    with open(filename, "r", encoding="utf-8") as f:
        content = f.read()
    pattern = re.compile(r'^\s*(?:def\s+)?([a-zA-Z0-9_]+)\(', re.MULTILINE)
    matches = pattern.findall(content)
    return list(dict.fromkeys(matches))

converted_funcs = extract_funcs("converted.py")
extra_funcs = extract_funcs("extra_backend.py")

for func in converted_funcs:
    f_lower = func.lower()
    if "search" in f_lower: apps["search"].append((func, "converted"))
    elif any(k in f_lower for k in ["cyber", "security", "encrypt", "decrypt", "hash", "password"]): apps["cyber"].append((func, "converted"))
    elif any(k in f_lower for k in ["net", "web", "fetch", "http", "socket", "ping"]): apps["network"].append((func, "converted"))
    elif any(k in f_lower for k in ["ai", "learning", "neural", "autoencoder", "predict", "model"]): apps["ai"].append((func, "converted"))
    elif any(k in f_lower for k in ["monitor", "process", "thread", "memory", "system"]): apps["monitor"].append((func, "converted"))
    elif any(k in f_lower for k in ["clinic", "medic", "health", "therap", "biolog", "genet", "precision"]): apps["clinic"].append((func, "converted"))
    elif any(k in f_lower for k in ["social", "user", "post", "friend"]): apps["social"].append((func, "converted"))
    elif any(k in f_lower for k in ["deploy", "cloud", "server", "docker"]): apps["deploy"].append((func, "converted"))
    elif any(k in f_lower for k in ["api", "rest", "json"]): apps["api"].append((func, "converted"))
    elif any(k in f_lower for k in ["game", "play", "score", "player"]): apps["games"].append((func, "converted"))
    elif any(k in f_lower for k in ["kernel", "os", "hardware", "driver", "bitwise"]): apps["kernel"].append((func, "converted"))
    elif any(k in f_lower for k in ["anim", "draw", "graphic", "color", "paint"]): apps["animator"].append((func, "converted"))
    else: apps["code_studio"].append((func, "converted"))

for func in extra_funcs:
    f_lower = func.lower()
    if "weather" in f_lower: apps["weather"].append((func, "extra_backend"))
    elif "calendar" in f_lower: apps["calendar"].append((func, "extra_backend"))
    elif "message" in f_lower: apps["messenger"].append((func, "extra_backend"))
    elif "map" in f_lower or "direction" in f_lower: apps["maps"].append((func, "extra_backend"))
    elif "music" in f_lower: apps["music"].append((func, "extra_backend"))
    elif "setting" in f_lower: apps["settings"].append((func, "extra_backend"))
    else: apps["code_studio"].append((func, "extra_backend"))

sl_code = "\nimport converted\nimport extra_backend\nimport traceback\n\n"

for app_name, funcs in apps.items():
    if not funcs:
        funcs = [("dummy_function", "converted")]
    
    sl_code += f"define run_{app_name}_function(func_name, module_name):\n"
    sl_code += f"    args_str = simpledialog.askstring('{app_name.capitalize()}', f'Enter arguments for {{func_name}} (comma separated):')\n"
    sl_code += f"    if args_str is None: return\n"
    sl_code += f"    try:\n"
    sl_code += f"        args = [eval(x.strip()) for x in args_str.split(',')] if args_str else []\n"
    sl_code += f"        mod = globals().get(module_name)\n"
    sl_code += f"        func_to_call = getattr(mod, func_name, None)\n"
    sl_code += f"        if func_to_call:\n"
    sl_code += f"            res = func_to_call(*args)\n"
    sl_code += f"            messagebox.showinfo('Result', f'Result of {{func_name}}:\\n{{res}}')\n"
    sl_code += f"        else:\n"
    sl_code += f"            messagebox.showerror('Error', f'Function {{func_name}} not found.')\n"
    sl_code += f"    except Exception as e:\n"
    sl_code += "        messagebox.showerror('Error', f'Execution failed:\\n{traceback.format_exc()}')\n\n"

    sl_code += f"define draw_{app_name}():\n"
    sl_code += f"    draw_window('{app_name.capitalize()} App', '#1e293b')\n"
    x_start, y_start, x_offset, y_offset, cols = -550, 280, 220, -40, 5
    for i, (func, mod) in enumerate(funcs):
        row, col = i // cols, i % cols
        x, y = x_start + (col * x_offset), y_start + (row * y_offset)
        cb_name = f"cb_{app_name}_{func}"
        sl_code += f"    def {cb_name}(): run_{app_name}_function('{func}', '{mod}')\n"
        sl_code += f"    register_click('{cb_name}', {x}, {y}, 200, 30, {cb_name})\n"
        sl_code += f"    draw_rect({x}, {y}, 200, 30, '#334155', '#94a3b8')\n"
        display_name = func if len(func) < 22 else func[:19]+"..."
        sl_code += f"    draw_text('{display_name}', {x+10}, {y-20}, 'white', 8)\n"
    sl_code += "\n"

sl_code += """
define render():
    clear_all()
    if CURRENT_APP == "desktop": draw_desktop()
    elif CURRENT_APP == "bank": draw_bank()
    elif CURRENT_APP == "files": draw_files()
    elif CURRENT_APP == "terminal": draw_terminal()
    elif CURRENT_APP == "notes": draw_notes()
    elif CURRENT_APP == "calculator": draw_calculator()
    elif CURRENT_APP == "search": draw_search()
    elif CURRENT_APP == "cyber": draw_cyber()
    elif CURRENT_APP == "network": draw_network()
    elif CURRENT_APP == "ai": draw_ai()
    elif CURRENT_APP == "monitor": draw_monitor()
    elif CURRENT_APP == "clinic": draw_clinic()
    elif CURRENT_APP == "social": draw_social()
    elif CURRENT_APP == "deploy": draw_deploy()
    elif CURRENT_APP == "api": draw_api()
    elif CURRENT_APP == "games": draw_games()
    elif CURRENT_APP == "kernel": draw_kernel()
    elif CURRENT_APP == "code_studio": draw_code_studio()
    elif CURRENT_APP == "animator": draw_animator()
    elif CURRENT_APP == "weather": draw_weather()
    elif CURRENT_APP == "calendar": draw_calendar()
    elif CURRENT_APP == "messenger": draw_messenger()
    elif CURRENT_APP == "maps": draw_maps()
    elif CURRENT_APP == "music": draw_music()
    elif CURRENT_APP == "settings": draw_settings()
    else:
        draw_window(CURRENT_APP.capitalize(), "#a855f7")
        draw_text("App is under construction!", -100, 150, "white", 14)
    screen.update()

define handle_click(x, y):
    for name in list(CLICKS.keys()):
        bounds = CLICKS[name]
        if bounds["x1"] <= x <= bounds["x2"] and bounds["y2"] <= y <= bounds["y1"]:
            bounds["cb"]()
            break

define run_os():
    screen.onscreenclick(handle_click)
    render()
    screen.mainloop()

run_os()
"""

with open("append_all_apps.py", "w", encoding="utf-8") as f:
    f.write(sl_code)

print("Generated append_all_apps.py successfully.")
