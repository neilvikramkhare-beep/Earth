// Earth Language Explicit Wrapper for datetime
py_datetime = __import__('datetime')

MAXYEAR = getattr(py_datetime, 'MAXYEAR', None);
MINYEAR = getattr(py_datetime, 'MINYEAR', None);
UTC = getattr(py_datetime, 'UTC', None);
date = getattr(py_datetime, 'date', None);
datetime = getattr(py_datetime, 'datetime', None);
datetime_CAPI = getattr(py_datetime, 'datetime_CAPI', None);
time = getattr(py_datetime, 'time', None);
timedelta = getattr(py_datetime, 'timedelta', None);
timezone = getattr(py_datetime, 'timezone', None);
tzinfo = getattr(py_datetime, 'tzinfo', None);
