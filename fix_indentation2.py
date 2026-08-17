file_path = r"c:\Users\Admin\Desktop\Earth\script.sl"
with open(file_path, "r", encoding="utf-8") as f:
    lines = f.readlines()

new_lines = []
for i, line in enumerate(lines):
    if line.startswith("import ") or line.startswith("from "):
        prev_line = lines[i-1] if i > 0 else ""
        next_line = lines[i+1] if i < len(lines)-1 else ""
        
        prev_spaces = len(prev_line) - len(prev_line.lstrip())
        next_spaces = len(next_line) - len(next_line.lstrip())
        
        if prev_line.lstrip().startswith("define "):
            new_lines.append("    " + line)
        elif next_spaces > 0 and next_line.strip() != "" and not next_line.lstrip().startswith("import") and not next_line.lstrip().startswith("from"):
            new_lines.append(" " * next_spaces + line)
        elif prev_spaces > 0 and prev_line.strip() != "" and not prev_line.lstrip().startswith("import") and not prev_line.lstrip().startswith("from"):
             new_lines.append(" " * prev_spaces + line)
        else:
            new_lines.append(line)
    else:
        new_lines.append(line)

with open(file_path, "w", encoding="utf-8") as f:
    f.writelines(new_lines)

print("Fixed imports intelligently.")
