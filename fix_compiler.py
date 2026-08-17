import os

file_path = r"c:\Users\Admin\Desktop\Earth\earth_compiler.py"
with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# Replace "sl_file = source_path.parent / search_dir / f"{mod}.sl""
new_content = content.replace(
    'sl_file = source_path.parent / search_dir / f"{mod}.sl"',
    'compiler_dir = Path(getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__))))\n                sl_file = compiler_dir / search_dir / f"{mod}.sl"'
)

new_content = new_content.replace(
    'sl_file = source_path.parent / search_dir / f"{module}.sl"',
    'compiler_dir = Path(getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__))))\n            sl_file = compiler_dir / search_dir / f"{module}.sl"'
)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(new_content)

print("Updated earth_compiler.py paths.")
