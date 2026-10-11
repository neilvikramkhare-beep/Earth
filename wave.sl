// Earth Language Explicit Wrapper for wave
// Automatically generated with ALL functions

py_wave = __import__('wave')

Error = getattr(py_wave, 'Error', None);
KSDATAFORMAT_SUBTYPE_PCM = getattr(py_wave, 'KSDATAFORMAT_SUBTYPE_PCM', None);
WAVE_FORMAT_EXTENSIBLE = getattr(py_wave, 'WAVE_FORMAT_EXTENSIBLE', None);
WAVE_FORMAT_PCM = getattr(py_wave, 'WAVE_FORMAT_PCM', None);
Wave_read = getattr(py_wave, 'Wave_read', None);
Wave_write = getattr(py_wave, 'Wave_write', None);
builtins = getattr(py_wave, 'builtins', None);
define namedtuple(*args, **kwargs):
    return py_wave.namedtuple(*args, **kwargs);

define open(*args, **kwargs):
    return py_wave.open(*args, **kwargs);

struct = getattr(py_wave, 'struct', None);
sys = getattr(py_wave, 'sys', None);
