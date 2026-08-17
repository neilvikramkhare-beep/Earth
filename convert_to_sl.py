import re

def convert_to_sl(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        text = f.read()

    # Remove <USER_REQUEST> if present
    text = text.replace('<USER_REQUEST>\n', '')
    text = text.replace('</USER_REQUEST>\n', '')

    # Convert def to define
    text = re.sub(r'^(\s*)def\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(', r'\1define \2(', text, flags=re.MULTILINE)

    # Convert class X to define class X
    # It must handle: class X: OR class X(Y):
    def repl_class(m):
        return f'{m.group(1)}define class {m.group(2)}{m.group(3)}'
    text = re.sub(r'^(\s*)class\s+([A-Za-z_][A-Za-z0-9_]*)([\(\:])', repl_class, text, flags=re.MULTILINE)

    # Convert import X as Y to import X; Y = X;
    def repl_import(m):
        return f'{m.group(1)}import {m.group(2)};\n{m.group(1)}{m.group(3)} = {m.group(2)};'
    text = re.sub(r'^(\s*)import\s+([A-Za-z_][A-Za-z0-9_.]*)\s+as\s+([A-Za-z_][A-Za-z0-9_]*)\s*$', repl_import, text, flags=re.MULTILINE)

    # We will optionally append semicolons to simple statements
    lines = text.splitlines()
    out = []
    for line in lines:
        stripped = line.strip()
        # Ensure imports end with semicolon
        if stripped.startswith('import ') or stripped.startswith('from '):
            if not stripped.endswith(';'):
                line += ';'
        out.append(line)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out))

if __name__ == "__main__":
    convert_to_sl('neilos.py', 'neilos.sl')
    print('Conversion successful.')
