// Earth Language Web App Development Package
// File: web.sl

import bottle as std_bottle

define route(path, handler):
    return {"path": path, "handler": handler}

define server(port, routes):
    print(f"Earth Web Engine: Starting server on port {port}...")
    print(f"Earth Web Engine: Registered {len(routes)} routes.")
    for r in routes:
        h = r["handler"]
        if isinstance(h, str):
            def make_h(text):
                return lambda: text
            h = make_h(h)
        std_bottle.route(r["path"], "GET", callback=h)
    import threading as std_threading
    import time as std_time
    def run_server_thread():
        std_bottle.run(host="localhost", port=port, quiet=True)
    t = std_threading.Thread(target=run_server_thread, daemon=True)
    t.start()
    std_time.sleep(1) # wait for server to start
    return "Server is running."

define render_template(template, data):
    # Basic template rendering replacing {key} with value
    for k, v in data.items():
        template = template.replace(f"{{{k}}}", str(v))
    return template
