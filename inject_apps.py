import re

NEW_CODE = """
define run_generic_action():
    messagebox.showinfo("App", "Action Executed Successfully!")

define draw_search():
    draw_window("Search", "#3b82f6")
    register_click("search_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#3b82f6")
    draw_text("?? Search", -80, 255, "white", 10)

define draw_cyber():
    draw_window("Cyber Security", "#ef4444")
    register_click("cyber_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#ef4444")
    draw_text("?? Scan System", -80, 255, "white", 10)

define draw_network():
    draw_window("Network", "#10b981")
    register_click("net_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#10b981")
    draw_text("?? Ping", -80, 255, "white", 10)

define draw_ai():
    draw_window("AI System", "#8b5cf6")
    register_click("ai_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#8b5cf6")
    draw_text("?? Train Model", -80, 255, "white", 10)

define draw_monitor():
    draw_window("System Monitor", "#f59e0b")
    register_click("mon_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#f59e0b")
    draw_text("?? Refresh", -80, 255, "white", 10)

define draw_clinic():
    draw_window("Clinical Trials", "#14b8a6")
    register_click("clinic_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#14b8a6")
    draw_text("?? View Trials", -80, 255, "white", 10)

define draw_social():
    draw_window("SocialNet", "#ec4899")
    register_click("social_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#ec4899")
    draw_text("?? Post Status", -80, 255, "white", 10)

define draw_deploy():
    draw_window("Deploy App", "#6366f1")
    register_click("deploy_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#6366f1")
    draw_text("?? Deploy", -80, 255, "white", 10)

define draw_api():
    draw_window("API Center", "#84cc16")
    register_click("api_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#84cc16")
    draw_text("?? Fetch Data", -80, 255, "white", 10)

define draw_games():
    draw_window("Games Center", "#f43f5e")
    register_click("games_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#f43f5e")
    draw_text("?? Play Now", -80, 255, "white", 10)

define draw_kernel():
    draw_window("Kernel Config", "#64748b")
    register_click("kernel_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#64748b")
    draw_text("?? Compile", -80, 255, "white", 10)

define draw_code_studio():
    draw_window("Code Studio", "#0ea5e9")
    register_click("code_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#0ea5e9")
    draw_text("?? Build Code", -80, 255, "white", 10)

define draw_animator():
    draw_window("Animator", "#d946ef")
    register_click("anim_btn", -100, 280, 180, 45, run_generic_action)
    draw_rect(-100, 280, 180, 45, "#111827", "#d946ef")
    draw_text("?? Play Anim", -80, 255, "white", 10)

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
    elif CURRENT_APP == "search":
        draw_search()
    elif CURRENT_APP == "cyber":
        draw_cyber()
    elif CURRENT_APP == "network":
        draw_network()
    elif CURRENT_APP == "ai":
        draw_ai()
    elif CURRENT_APP == "monitor":
        draw_monitor()
    elif CURRENT_APP == "clinic":
        draw_clinic()
    elif CURRENT_APP == "social":
        draw_social()
    elif CURRENT_APP == "deploy":
        draw_deploy()
    elif CURRENT_APP == "api":
        draw_api()
    elif CURRENT_APP == "games":
        draw_games()
    elif CURRENT_APP == "kernel":
        draw_kernel()
    elif CURRENT_APP == "code_studio":
        draw_code_studio()
    elif CURRENT_APP == "animator":
        draw_animator()
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
"""

with open("neilos.sl", "r", encoding="utf-8") as f:
    content = f.read()

index = content.find("define render():")
if index != -1:
    content = content[:index] + NEW_CODE

with open("neilos.sl", "w", encoding="utf-8") as f:
    f.write(content)
