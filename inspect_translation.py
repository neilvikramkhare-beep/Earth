from pathlib import Path
import re

source = Path('script.sl').read_text(encoding='utf-8')
lines = []
for raw in source.splitlines():
    line = raw.rstrip()
    trimmed = line.strip()
    if not trimmed:
        lines.append('')
        continue
    if trimmed.startswith(('import ', 'from ')):
        lines.append('# ' + line)
        continue
    if trimmed.startswith('define '):
        indent = line[: len(line) - len(line.lstrip())]
        content = trimmed[len('define '):]
        if '(' in content:
            name, rest = content.split('(', 1)
            name = name.strip().replace(' ', '_')
            line = f"{indent}def {name}({rest}"
        else:
            line = f"{indent}def {content}"
        lines.append(line)
        continue
    line = line.rstrip(';')
    line = line.replace('&&', ' and ').replace('||', ' or ')
    line = re.sub(r'(?<![=!<>])!([A-Za-z0-9_\(\[])', 'not \\1', line)
    line = re.sub(r'\b(len\(\s*[^)]+\s*)/\s*2\b', r'\1//2', line)
    line = re.sub(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*\^=', r'\1 = \1 ^', line)
    line = re.sub(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*\|=', r'\1 = \1 |', line)
    line = re.sub(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*&=', r'\1 = \1 &', line)
    line = re.sub(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*<<=', r'\1 = \1 <<', line)
    line = re.sub(r'\b([A-Za-z_][A-Za-z0-9_]*)\s*>>=', r'\1 = \1 >>', line)
    line = re.sub(r'([^\s]+)\?([^:]+):([^;]+)', r'\2 if \1 else \3', line)
    lines.append(line)

for i, line in enumerate(lines, 1):
    if i <= 90:
        print(i, line)

print('---')
for i, line in enumerate(lines, 1):
    if line.strip() and not line.startswith('#'):
        try:
            compile(line, '<string>', 'exec')
        except SyntaxError as exc:
            print('bad line', i, repr(line), exc)
            break
