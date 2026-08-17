import os
import glob
import re

directory = r"c:\Users\Admin\Desktop\Earth\SL_Packages"
count = 0

for file_path in glob.glob(os.path.join(directory, "*.sl")):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Regex to remove builtin_globals, builtin_locals, builtin_vars completely
    # They look like:
    # define builtin_globals(a):
    #     try:
    #         return getattr(builtins, 'globals')(a)
    #     except TypeError:
    #         return getattr(builtins, 'globals')()
    # globals()['globals'] = builtin_globals
    
    modified = False
    for bad_func in ['globals', 'locals', 'vars']:
        pattern = re.compile(
            r'define builtin_' + bad_func + r'\(a\):\n'
            r'\s*try:\n'
            r'\s*return getattr\(builtins, \'' + bad_func + r'\'\)\(a\)\n'
            r'\s*except TypeError:\n'
            r'\s*return getattr\(builtins, \'' + bad_func + r'\'\)\(\)\n'
            r'globals\(\)\[\'' + bad_func + r'\'\] = builtin_' + bad_func + r'\n+',
            re.MULTILINE
        )
        if pattern.search(content):
            content = pattern.sub('', content)
            modified = True
            
        pattern2 = re.compile(
            r'define builtin_' + bad_func + r'\(a=None\):\n'
            r'\s*try:\n'
            r'\s*return getattr\(builtins, \'' + bad_func + r'\'\)\(a\)\n'
            r'\s*except TypeError:\n'
            r'\s*return getattr\(builtins, \'' + bad_func + r'\'\)\(\)\n'
            r'globals\(\)\[\'' + bad_func + r'\'\] = builtin_' + bad_func + r'\n+',
            re.MULTILINE
        )
        if pattern2.search(content):
            content = pattern2.sub('', content)
            modified = True

    if modified:
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(content)
        count += 1

print(f"Removed broken globals/locals/vars from {count} files.")
