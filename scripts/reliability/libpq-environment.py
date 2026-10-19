#!/usr/bin/env python3
"""Generate a private shell environment from libpq's own connection parser.

The argument is an environment-variable NAME, never a credential-bearing URL.
Redirect stdout to a mode-0600 file; never print/source untrusted shell text.
All assignments are generated here using POSIX shell quoting.
"""
import ctypes
import ctypes.util
import os
import re
import shlex
import sys


def main():
    if len(sys.argv) != 2 or not re.fullmatch(r'[A-Z][A-Z0-9_]*', sys.argv[1]):
        raise ValueError('connection variable name required')
    value = os.environ.get(sys.argv[1], '')
    if not value:
        raise ValueError('connection configuration unavailable')
    library = ctypes.util.find_library('pq')
    if library is None:
        raise ValueError('libpq client library unavailable')
    pq = ctypes.CDLL(library)

    class Option(ctypes.Structure):
        _fields_ = [(name, ctypes.c_char_p) for name in
                    ('keyword', 'envvar', 'compiled', 'val', 'label', 'dispchar')]
        _fields_.append(('dispsize', ctypes.c_int))

    pq.PQconninfoParse.argtypes = [ctypes.c_char_p, ctypes.POINTER(ctypes.c_void_p)]
    pq.PQconninfoParse.restype = ctypes.POINTER(Option)
    pq.PQconninfoFree.argtypes = [ctypes.POINTER(Option)]
    pq.PQfreemem.argtypes = [ctypes.c_void_p]
    error = ctypes.c_void_p()
    options = pq.PQconninfoParse(value.encode('utf-8'), ctypes.byref(error))
    if not options:
        if error.value:
            pq.PQfreemem(error)
        raise ValueError('invalid libpq connection configuration')
    assignments = []
    try:
        index = 0
        while options[index].keyword:
            option = options[index]
            index += 1
            if not option.envvar:
                continue
            name = option.envvar.decode('ascii')
            if not re.fullmatch(r'PG[A-Z0-9_]+', name):
                raise ValueError('unrecognized libpq environment option')
            assignments.append('unset ' + name if option.val is None else
                               'export ' + name + '=' + shlex.quote(option.val.decode('utf-8')))
    finally:
        pq.PQconninfoFree(options)
    sys.stdout.write('\n'.join(assignments) + '\n')


if __name__ == '__main__':
    try:
        main()
    except Exception:
        # libpq errors may repeat the input. Never emit connection values.
        sys.stderr.write('Cannot prepare private PostgreSQL connection environment.\n')
        sys.exit(1)
