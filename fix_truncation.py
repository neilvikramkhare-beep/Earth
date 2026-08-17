lines = open('neilos.py', encoding='utf-8').read().splitlines()
for i, line in enumerate(lines):
    if line.startswith('    draw_text(f"Prompt:'):
        lines = lines[:i]
        break
lines.append('    pass')
open('neilos.py', 'w', encoding='utf-8').write('\n'.join(lines))
