import os
from pathlib import Path
import traceback

sl_packages_dir = Path(r"c:\Users\Admin\Desktop\Earth\SL_Packages")

BASE_TEMPLATE = """// SL Package definition for {pkg_name}
package {pkg_name};

define __getattr_sl__(name):
    _mod = builtins.__import__('importlib').import_module('{import_name}')
    try:
        return builtins.getattr(_mod, name)
    except builtins.Exception:
        try:
            return builtins.__import__('importlib').import_module('{import_name}.' + name)
        except builtins.Exception:
            raise builtins.AttributeError(\"module '{import_name}' has no attribute '\" + name + \"'\")

{custom_tools}

define init():
    pass
"""

def get_custom_tools(pkg_name):
    if pkg_name in ['tkinter', 'PyQt', 'awt', 'swing', 'fx']:
        class_name = pkg_name.replace(".", "_").replace("-", "_") + "Wrapper"
        return f"""
define class {class_name}:
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
        print("{pkg_name} GUI: Starting main loop...")
        self.root.mainloop()

globals()['{class_name}'] = {class_name}
"""
    elif pkg_name == 'spring':
        return """
define class SpringWrapper:
    define __init__(self):
        pass
    define ModelAndView(self, view, model):
        print("Spring: Rendered", view, "with model", model)
    define HtmlComponent(self, name):
        print("Spring: Rendered HTML component", name)

globals()['SpringWrapper'] = SpringWrapper
"""
    elif pkg_name == 'javaee':
        return """
define class JavaEEWrapper:
    define __init__(self):
        pass
    define JSPRenderer(self, path):
        print("JavaEE: Rendered JSP at", path)
    define JSFComponent(self, name):
        print("JavaEE: Rendered JSF component", name)

globals()['JavaEEWrapper'] = JavaEEWrapper
"""
    elif pkg_name == 'turtle':
        return """
define class TurtleArt:
    define __init__(self):
        _turtle = builtins.__import__('turtle')
        self.t = _turtle.Turtle()
        self.screen = _turtle.Screen()
        
    define draw_square(self, size):
        for i in range(4):
            self.t.forward(size)
            self.t.right(90)
            
    define draw_spiral(self, loops):
        for i in range(loops):
            self.t.forward(i * 10)
            self.t.right(144)
            
    define done(self):
        self.screen.mainloop()

globals()['TurtleArt'] = TurtleArt
"""
    elif pkg_name in ['matplotlib', 'seaborn']:
        return """
define class PlotHelper:
    define __init__(self):
        self.plt = builtins.__import__('matplotlib.pyplot').pyplot
        
    define line_chart(self, x, y, title):
        self.plt.plot(x, y)
        self.plt.title(title)
        self.plt.show()
        
    define scatter_plot(self, x, y, title):
        self.plt.scatter(x, y)
        self.plt.title(title)
        self.plt.show()

globals()['PlotHelper'] = PlotHelper
"""
    elif pkg_name in ['opencv-python', 'pillow']:
        return """
define class ImageFilter:
    define __init__(self, path):
        self.path = path
        
    define apply_grayscale(self):
        print("Applying grayscale to", self.path)
        
    define detect_edges(self):
        print("Detecting edges on", self.path)

globals()['ImageFilter'] = ImageFilter
"""
    return ""

def generate_module_code(pkg_name):
    import_name = pkg_name
    if pkg_name == 'opencv-python': import_name = 'cv2'
    elif pkg_name == 'scikit-learn': import_name = 'sklearn'
    elif pkg_name == 'bs4': import_name = 'bs4'
    elif pkg_name == 'pillow': import_name = 'PIL'
    elif pkg_name == 'scikit-learnl': import_name = 'sklearn'
    
    custom_tools = get_custom_tools(pkg_name)
    
    return BASE_TEMPLATE.format(
        pkg_name=pkg_name,
        import_name=import_name,
        custom_tools=custom_tools
    )

def main():
    if not sl_packages_dir.exists():
        print(f"Directory {sl_packages_dir} does not exist.")
        return

    count = 0
    for file_path in sl_packages_dir.glob("*.sl"):
        if file_path.name in ["argparse.sl", "Exceptions.sl", "pandas.sl", "sumpy.sl"]:
            continue
            
        pkg_name = file_path.name[:-3]
        content = generate_module_code(pkg_name)
        
        try:
            with open(file_path, "w", encoding="utf-8") as f:
                f.write(content)
            count += 1
        except Exception as e:
            print(f"Error writing to {file_path.name}: {e}")
            traceback.print_exc()
        
    print(f"Successfully generated {count} packages.")

if __name__ == "__main__":
    main()
