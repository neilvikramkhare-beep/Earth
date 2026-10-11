// Earth Language Explicit Wrapper for argparse
// Automatically generated with ALL functions

py_argparse = __import__('argparse')

Action = getattr(py_argparse, 'Action', None);
ArgumentDefaultsHelpFormatter = getattr(py_argparse, 'ArgumentDefaultsHelpFormatter', None);
ArgumentError = getattr(py_argparse, 'ArgumentError', None);
ArgumentParser = getattr(py_argparse, 'ArgumentParser', None);
ArgumentTypeError = getattr(py_argparse, 'ArgumentTypeError', None);
BooleanOptionalAction = getattr(py_argparse, 'BooleanOptionalAction', None);
FileType = getattr(py_argparse, 'FileType', None);
HelpFormatter = getattr(py_argparse, 'HelpFormatter', None);
MetavarTypeHelpFormatter = getattr(py_argparse, 'MetavarTypeHelpFormatter', None);
Namespace = getattr(py_argparse, 'Namespace', None);
ONE_OR_MORE = getattr(py_argparse, 'ONE_OR_MORE', None);
OPTIONAL = getattr(py_argparse, 'OPTIONAL', None);
PARSER = getattr(py_argparse, 'PARSER', None);
REMAINDER = getattr(py_argparse, 'REMAINDER', None);
RawDescriptionHelpFormatter = getattr(py_argparse, 'RawDescriptionHelpFormatter', None);
RawTextHelpFormatter = getattr(py_argparse, 'RawTextHelpFormatter', None);
SUPPRESS = getattr(py_argparse, 'SUPPRESS', None);
ZERO_OR_MORE = getattr(py_argparse, 'ZERO_OR_MORE', None);
define ngettext(*args, **kwargs):
    return py_argparse.ngettext(*args, **kwargs);

