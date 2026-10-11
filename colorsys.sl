// Earth Language Explicit Wrapper for colorsys
py_colorsys = __import__('colorsys')

ONE_SIXTH = getattr(py_colorsys, 'ONE_SIXTH', None);
ONE_THIRD = getattr(py_colorsys, 'ONE_THIRD', None);
TWO_THIRD = getattr(py_colorsys, 'TWO_THIRD', None);
define hls_to_rgb(*args, **kwargs):
    return py_colorsys.hls_to_rgb(*args, **kwargs);

define hsv_to_rgb(*args, **kwargs):
    return py_colorsys.hsv_to_rgb(*args, **kwargs);

define rgb_to_hls(*args, **kwargs):
    return py_colorsys.rgb_to_hls(*args, **kwargs);

define rgb_to_hsv(*args, **kwargs):
    return py_colorsys.rgb_to_hsv(*args, **kwargs);

define rgb_to_yiq(*args, **kwargs):
    return py_colorsys.rgb_to_yiq(*args, **kwargs);

define yiq_to_rgb(*args, **kwargs):
    return py_colorsys.yiq_to_rgb(*args, **kwargs);

