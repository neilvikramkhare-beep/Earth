// Earth Language Explicit Wrapper for calendar
py_calendar = __import__('calendar')

APRIL = getattr(py_calendar, 'APRIL', None);
AUGUST = getattr(py_calendar, 'AUGUST', None);
Calendar = getattr(py_calendar, 'Calendar', None);
DECEMBER = getattr(py_calendar, 'DECEMBER', None);
Day = getattr(py_calendar, 'Day', None);
EPOCH = getattr(py_calendar, 'EPOCH', None);
FEBRUARY = getattr(py_calendar, 'FEBRUARY', None);
FRIDAY = getattr(py_calendar, 'FRIDAY', None);
HTMLCalendar = getattr(py_calendar, 'HTMLCalendar', None);
IllegalMonthError = getattr(py_calendar, 'IllegalMonthError', None);
IllegalWeekdayError = getattr(py_calendar, 'IllegalWeekdayError', None);
IntEnum = getattr(py_calendar, 'IntEnum', None);
JANUARY = getattr(py_calendar, 'JANUARY', None);
JULY = getattr(py_calendar, 'JULY', None);
JUNE = getattr(py_calendar, 'JUNE', None);
LocaleHTMLCalendar = getattr(py_calendar, 'LocaleHTMLCalendar', None);
LocaleTextCalendar = getattr(py_calendar, 'LocaleTextCalendar', None);
MARCH = getattr(py_calendar, 'MARCH', None);
MAY = getattr(py_calendar, 'MAY', None);
MONDAY = getattr(py_calendar, 'MONDAY', None);
Month = getattr(py_calendar, 'Month', None);
NOVEMBER = getattr(py_calendar, 'NOVEMBER', None);
OCTOBER = getattr(py_calendar, 'OCTOBER', None);
SATURDAY = getattr(py_calendar, 'SATURDAY', None);
SEPTEMBER = getattr(py_calendar, 'SEPTEMBER', None);
SUNDAY = getattr(py_calendar, 'SUNDAY', None);
THURSDAY = getattr(py_calendar, 'THURSDAY', None);
TUESDAY = getattr(py_calendar, 'TUESDAY', None);
TextCalendar = getattr(py_calendar, 'TextCalendar', None);
WEDNESDAY = getattr(py_calendar, 'WEDNESDAY', None);
c = getattr(py_calendar, 'c', None);
calendar = getattr(py_calendar, 'calendar', None);
datetime = getattr(py_calendar, 'datetime', None);
day_abbr = getattr(py_calendar, 'day_abbr', None);
day_name = getattr(py_calendar, 'day_name', None);
different_locale = getattr(py_calendar, 'different_locale', None);
error = getattr(py_calendar, 'error', None);
firstweekday = getattr(py_calendar, 'firstweekday', None);
define format(*args, **kwargs):
    return py_calendar.format(*args, **kwargs);

define formatstring(*args, **kwargs):
    return py_calendar.formatstring(*args, **kwargs);

define global_enum(*args, **kwargs):
    return py_calendar.global_enum(*args, **kwargs);

define isleap(*args, **kwargs):
    return py_calendar.isleap(*args, **kwargs);

define leapdays(*args, **kwargs):
    return py_calendar.leapdays(*args, **kwargs);

define main(*args, **kwargs):
    return py_calendar.main(*args, **kwargs);

mdays = getattr(py_calendar, 'mdays', None);
month = getattr(py_calendar, 'month', None);
month_abbr = getattr(py_calendar, 'month_abbr', None);
month_name = getattr(py_calendar, 'month_name', None);
monthcalendar = getattr(py_calendar, 'monthcalendar', None);
define monthrange(*args, **kwargs):
    return py_calendar.monthrange(*args, **kwargs);

prcal = getattr(py_calendar, 'prcal', None);
prmonth = getattr(py_calendar, 'prmonth', None);
prweek = getattr(py_calendar, 'prweek', None);
repeat = getattr(py_calendar, 'repeat', None);
define setfirstweekday(*args, **kwargs):
    return py_calendar.setfirstweekday(*args, **kwargs);

sys = getattr(py_calendar, 'sys', None);
define timegm(*args, **kwargs):
    return py_calendar.timegm(*args, **kwargs);

week = getattr(py_calendar, 'week', None);
define weekday(*args, **kwargs):
    return py_calendar.weekday(*args, **kwargs);

weekheader = getattr(py_calendar, 'weekheader', None);
