import re

file_path = r"c:\Users\Admin\Desktop\Earth\script.sl"
with open(file_path, "r", encoding="utf-8") as f:
    lines = f.readlines()

new_lines = []
for line in lines:
    trimmed = line.lstrip()
    if trimmed.startswith("import ") or trimmed.startswith("from "):
        new_lines.append(trimmed)
    else:
        new_lines.append(line)

with open(file_path, "w", encoding="utf-8") as f:
    f.writelines(new_lines)

print("Fixed import indentation in script.sl")
