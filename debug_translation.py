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
        m = re.match(r'^([A-Za-z_][A-Za-z0-9_ ]*)(?:\((.*)\))?\s*:(.*)$', content)
        if m:
            name = m.group(1).strip().replace(' ', '_')
            params = m.group(2) or ''
            suffix = m.group(3) or ''
            if params:
                line = f"{indent}def {name}({params}):{suffix}"
            else:
                line = f"{indent}def {name}():{suffix}"
        else:
            line = f"{indent}def {content}"
        lines.append(line)
        continue
    line = line.rstrip(';')
    line = line.replace('&&', ' and ').replace('||', ' or ')
    line = re.sub(r'(?<![=!<>])!(?=[A-Za-z0-9_\(\[])', 'not ', line)
    line = re.sub(r'\b(len\(\s*[^)]+\s*)/\s*2\b', r'\1//2', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)\^=', r'\1 = \1 ^', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)\|=', r'\1 = \1 |', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)&=', r'\1 = \1 &', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)<<=', r'\1 = \1 <<', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*)>>=', r'\1 = \1 >>', line)
    line = re.sub(r'([A-Za-z_][A-Za-z0-9_]*?)\?([^:]+):([^;]+)', r'\2 if \1 else \3', line)
    line = re.sub(r'(?<![A-Za-z0-9_])([A-Za-z_][A-Za-z0-9_]*)\s*=\s*\{', r'\1 = {', line)
    lines.append(line)

for i, line in enumerate(lines, 1):
    if i <= 120:
        print(i, line)

print('---')
for i, line in enumerate(lines, 1):
    if line.strip() and not line.startswith('#'):
        try:
            compile(line, '<string>', 'exec')
        except SyntaxError as exc:
            print('bad line', i, repr(line), exc)
            break
