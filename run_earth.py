from earth_compiler import compile_and_run
from pathlib import Path

if __name__ == "__main__":
    script_file = Path(__file__).parent / "script.sl"
    compile_and_run(str(script_file))
