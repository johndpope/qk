# © 2015 George King.
# Permission to use this file is granted in license-qk.txt.

import sys
from itertools import zip_longest, product


dims = [2, 3, 4]
all_v_comps = ['x', 'y', 'z', 'w']
ops = ['+', '-', '*', '/']

types = [ # s_type, suffix, fs_type, f_suffix, simd_type_prefix, is_novel.
  ('F32', 'S', 'F32', 'S', 'float', False),
  ('F64', 'D', 'F64', 'D', 'double', False),
  ('Int', 'I', 'F64', 'D', None, True),
  ('U8', 'U8', 'F32', 'S', None, True),
]

def fmt(f, *items):
  res = []
  chunks = f.split('$')
  for chunk, item in zip_longest(chunks, items, fillvalue=''):
    res.append(chunk)
    res.append(str(item))
  return ''.join(res)

def outL(f, *items):
  print(fmt(f, *items))

def errL(f, *items):
  print(fmt(f, *items), file=sys.stderr)

def je(a): return ''.join(a) # join with empty string.
def jc(a): return ', '.join(a) # join with comma.
def js(a): return ' '.join(a) # join with space.

def jf(j, f, a): return j.join(fmt(f, e) for e in a) # format each element of a sequence.
def jft(j, f, a): return j.join(fmt(f, *t) for t in a) # format each tuple of a sequence.

def jcf(f, a): return jf(', ', f, a)
def jcft(f, a): return jft(', ', f, a)

