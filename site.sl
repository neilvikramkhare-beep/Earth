// Earth Language Explicit Wrapper for site
// Automatically generated with ALL functions

py_site = __import__('site')

ENABLE_USER_SITE = getattr(py_site, 'ENABLE_USER_SITE', None);
PREFIXES = getattr(py_site, 'PREFIXES', None);
USER_BASE = getattr(py_site, 'USER_BASE', None);
USER_SITE = getattr(py_site, 'USER_SITE', None);
define abs_paths(*args, **kwargs):
    return py_site.abs_paths(*args, **kwargs);

define addpackage(*args, **kwargs):
    return py_site.addpackage(*args, **kwargs);

define addsitedir(*args, **kwargs):
    return py_site.addsitedir(*args, **kwargs);

define addsitepackages(*args, **kwargs):
    return py_site.addsitepackages(*args, **kwargs);

define addusersitepackages(*args, **kwargs):
    return py_site.addusersitepackages(*args, **kwargs);

builtins = getattr(py_site, 'builtins', None);
define check_enableusersite(*args, **kwargs):
    return py_site.check_enableusersite(*args, **kwargs);

define enablerlcompleter(*args, **kwargs):
    return py_site.enablerlcompleter(*args, **kwargs);

errno = getattr(py_site, 'errno', None);
define execsitecustomize(*args, **kwargs):
    return py_site.execsitecustomize(*args, **kwargs);

define execusercustomize(*args, **kwargs):
    return py_site.execusercustomize(*args, **kwargs);

define gethistoryfile(*args, **kwargs):
    return py_site.gethistoryfile(*args, **kwargs);

define getsitepackages(*args, **kwargs):
    return py_site.getsitepackages(*args, **kwargs);

define getuserbase(*args, **kwargs):
    return py_site.getuserbase(*args, **kwargs);

define getusersitepackages(*args, **kwargs):
    return py_site.getusersitepackages(*args, **kwargs);

io = getattr(py_site, 'io', None);
define main(*args, **kwargs):
    return py_site.main(*args, **kwargs);

define makepath(*args, **kwargs):
    return py_site.makepath(*args, **kwargs);

os = getattr(py_site, 'os', None);
define register_readline(*args, **kwargs):
    return py_site.register_readline(*args, **kwargs);

define removeduppaths(*args, **kwargs):
    return py_site.removeduppaths(*args, **kwargs);

define setcopyright(*args, **kwargs):
    return py_site.setcopyright(*args, **kwargs);

define sethelper(*args, **kwargs):
    return py_site.sethelper(*args, **kwargs);

define setquit(*args, **kwargs):
    return py_site.setquit(*args, **kwargs);

stat = getattr(py_site, 'stat', None);
sys = getattr(py_site, 'sys', None);
define venv(*args, **kwargs):
    return py_site.venv(*args, **kwargs);

