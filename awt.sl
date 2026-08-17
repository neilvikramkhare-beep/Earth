// SL Package definition for awt
package awt;

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('awt')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('awt.' + name)
        except builtins.Exception:
            raise builtins.AttributeError("module 'awt' has no attribute '" + name + "'")


define class awtWrapper:
    define __init__(self):
        _tk = builtins.__import__('tkinter')
        self.root = _tk.Tk()
        self.root.title("Earth SL GUI")
        self.root.geometry("400x300")
        self.elements = []
        
    define Button(self, text):
        _tk = builtins.__import__('tkinter')
        btn = _tk.Button(self.root, text=text, bg="#0e639c", fg="white", font=("Segoe UI", 12))
        btn.pack(pady=10)
        self.elements.append(btn)
        return btn
        
    define Canvas(self, name):
        _tk = builtins.__import__('tkinter')
        cvs = _tk.Canvas(self.root, width=400, height=100, bg="#1e1e1e", highlightthickness=0)
        cvs.create_text(200, 50, text=name, fill="#00ff00", font=("Consolas", 14))
        cvs.pack(pady=10)
        self.elements.append(cvs)
        return cvs
        
    define Entry(self, placeholder):
        _tk = builtins.__import__('tkinter')
        ent = _tk.Entry(self.root, width=40, font=("Segoe UI", 12))
        ent.insert(0, placeholder)
        ent.pack(pady=10)
        self.elements.append(ent)
        return ent

    define run(self):
        print("awt GUI: Starting main loop...")
        self.root.mainloop()

globals()['awtWrapper'] = awtWrapper


define init():
    pass
