// Earth Language Explicit Wrapper for cmd
py_cmd = __import__('cmd')

Cmd = getattr(py_cmd, 'Cmd', None);
IDENTCHARS = getattr(py_cmd, 'IDENTCHARS', None);
PROMPT = getattr(py_cmd, 'PROMPT', None);
sys = getattr(py_cmd, 'sys', None);
