app_code = '''
define run_sympy_simplify():
    expr_str = simpledialog.askstring("SymPy Calculator", "Enter mathematical expression (use x):")
    if not expr_str:
        return;
    try:
        x = sp.Symbol('x')
        expr = sp.sympify(expr_str)
        result = sp.simplify(expr)
        messagebox.showinfo("SymPy Result", "Simplified:\\n" + str(result))
    except Exception as e:
        messagebox.showerror("Error", str(e))

define run_sympy_diff():
    expr_str = simpledialog.askstring("SymPy Calculator", "Enter expression to differentiate (use x):")
    if not expr_str:
        return;
    try:
        x = sp.Symbol('x')
        expr = sp.sympify(expr_str)
        result = sp.diff(expr, x)
        messagebox.showinfo("SymPy Result", "Derivative (d/dx):\\n" + str(result))
    except Exception as e:
        messagebox.showerror("Error", str(e))

define run_sympy_integrate():
    expr_str = simpledialog.askstring("SymPy Calculator", "Enter expression to integrate (use x):")
    if not expr_str:
        return;
    try:
        x = sp.Symbol('x')
        expr = sp.sympify(expr_str)
        result = sp.integrate(expr, x)
        messagebox.showinfo("SymPy Result", "Integral:\\n" + str(result))
    except Exception as e:
        messagebox.showerror("Error", str(e))

define run_sympy_solve():
    expr_str = simpledialog.askstring("SymPy Calculator", "Enter equation to solve for x (assumed = 0):")
    if not expr_str:
        return;
    try:
        x = sp.Symbol('x')
        expr = sp.sympify(expr_str)
        result = sp.solve(expr, x)
        messagebox.showinfo("SymPy Result", "Solutions for x:\\n" + str(result))
    except Exception as e:
        messagebox.showerror("Error", str(e))

define draw_calculator():
    draw_window("SymPy Calculator", "#9333ea")
    
    register_click("simplify", -400, 280, 160, 45, run_sympy_simplify)
    draw_rect(-400, 280, 160, 45, "#111827", "#9333ea")
    draw_text("?? Simplify", -380, 255, "white", 10)
    
    register_click("diff", -220, 280, 160, 45, run_sympy_diff)
    draw_rect(-220, 280, 160, 45, "#111827", "#9333ea")
    draw_text("?? Differentiate", -200, 255, "white", 10)
    
    register_click("integrate", -40, 280, 160, 45, run_sympy_integrate)
    draw_rect(-40, 280, 160, 45, "#111827", "#9333ea")
    draw_text("?? Integrate", -20, 255, "white", 10)
    
    register_click("solve", 140, 280, 160, 45, run_sympy_solve)
    draw_rect(140, 280, 160, 45, "#111827", "#9333ea")
    draw_text("?? Solve (Eq=0)", 160, 255, "white", 10)

define render():
    clear_all()
    if CURRENT_APP == "desktop":
        draw_desktop()
    elif CURRENT_APP == "bank":
        draw_bank()
    elif CURRENT_APP == "files":
        draw_files()
    elif CURRENT_APP == "terminal":
        draw_terminal()
    elif CURRENT_APP == "notes":
        draw_notes()
    elif CURRENT_APP == "calculator":
        draw_calculator()
    else:
        # Fallback for apps not fully implemented yet
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
'''
with open('neilos.sl', 'a', encoding='utf-8') as f:
    f.write('\n' + app_code + '\n')
