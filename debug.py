import traceback, sys
from earth_compiler import get_base_namespace, translate_sl
from pathlib import Path
try:
    code = translate_sl(open('script.sl').read())
    namespace = get_base_namespace(Path('script.sl'))
    exec(code, namespace)
except Exception as e:
    with open('debug_trace.txt', 'w') as f:
        f.write(traceback.format_exc())
        lines = code.splitlines()
        tb = e.__traceback__
        while tb.tb_next:
            tb = tb.tb_next
        lineno = tb.tb_lineno
        f.write("\n\nCode at line %d:\n" % lineno)
        f.write(lines[lineno-1])
