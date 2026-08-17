import os

with open('script.sl', 'r', encoding='utf-8') as f:
    lines = f.read().splitlines()

idx = lines.index('// User Added Graphic Codes (Python, Spring, Java EE)') - 1
new_lines = lines[:idx]
new_content = '\n'.join(new_lines) + '''
// -----------------------------------------------------
// User Added Graphic Codes (Python, Spring, Java EE)
// -----------------------------------------------------

import spring;
import javaee;
import tkinter;

define runGraphicCodes():
    print("--- Running Python Style Graphic Codes ---");
    tk = tkinter.tkinterWrapper();
    tk.Button("Submit");
    tk.Canvas("MainCanvas");
    tk.Entry("UsernameField");
    tk.run();

    print("--- Running Spring Style Graphic Codes ---");
    sp = spring.SpringWrapper();
    sp.ModelAndView("home.html", "UserData");
    sp.HtmlComponent("loginForm");

    print("--- Running Java EE Style Graphic Codes ---");
    jee = javaee.JavaEEWrapper();
    jee.JSPRenderer("/WEB-INF/views/dashboard.jsp");
    jee.JSFComponent("DataGrid");

runGraphicCodes();
'''

with open('script.sl', 'w', encoding='utf-8') as f:
    f.write(new_content)
