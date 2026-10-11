// Earth Language Explicit Wrapper for zoneinfo
// Automatically generated with ALL functions

py_zoneinfo = __import__('zoneinfo')

InvalidTZPathWarning = getattr(py_zoneinfo, 'InvalidTZPathWarning', None);
TZPATH = getattr(py_zoneinfo, 'TZPATH', None);
ZoneInfo = getattr(py_zoneinfo, 'ZoneInfo', None);
ZoneInfoNotFoundError = getattr(py_zoneinfo, 'ZoneInfoNotFoundError', None);
define available_timezones(*args, **kwargs):
    return py_zoneinfo.available_timezones(*args, **kwargs);

define reset_tzpath(*args, **kwargs):
    return py_zoneinfo.reset_tzpath(*args, **kwargs);

