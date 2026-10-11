// Earth Language Explicit Wrapper for ipaddress
// Automatically generated with ALL functions

py_ipaddress = __import__('ipaddress')

AddressValueError = getattr(py_ipaddress, 'AddressValueError', None);
IPV4LENGTH = getattr(py_ipaddress, 'IPV4LENGTH', None);
IPV6LENGTH = getattr(py_ipaddress, 'IPV6LENGTH', None);
IPv4Address = getattr(py_ipaddress, 'IPv4Address', None);
IPv4Interface = getattr(py_ipaddress, 'IPv4Interface', None);
IPv4Network = getattr(py_ipaddress, 'IPv4Network', None);
IPv6Address = getattr(py_ipaddress, 'IPv6Address', None);
IPv6Interface = getattr(py_ipaddress, 'IPv6Interface', None);
IPv6Network = getattr(py_ipaddress, 'IPv6Network', None);
NetmaskValueError = getattr(py_ipaddress, 'NetmaskValueError', None);
define collapse_addresses(*args, **kwargs):
    return py_ipaddress.collapse_addresses(*args, **kwargs);

functools = getattr(py_ipaddress, 'functools', None);
define get_mixed_type_key(*args, **kwargs):
    return py_ipaddress.get_mixed_type_key(*args, **kwargs);

define ip_address(*args, **kwargs):
    return py_ipaddress.ip_address(*args, **kwargs);

define ip_interface(*args, **kwargs):
    return py_ipaddress.ip_interface(*args, **kwargs);

define ip_network(*args, **kwargs):
    return py_ipaddress.ip_network(*args, **kwargs);

define summarize_address_range(*args, **kwargs):
    return py_ipaddress.summarize_address_range(*args, **kwargs);

define v4_int_to_packed(*args, **kwargs):
    return py_ipaddress.v4_int_to_packed(*args, **kwargs);

define v6_int_to_packed(*args, **kwargs):
    return py_ipaddress.v6_int_to_packed(*args, **kwargs);

