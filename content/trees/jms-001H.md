---
title: creation of (co)limits
taxon: definition
author: Jonathan Sterling
date: 2023-02-11T18:15:43Z
macros:
- include: base-macros
- name: CCat
  doc: 'A given category'
  body: '\mathcal{C}'
  args: 0
- name: DCat
  doc: 'A given category'
  body: '\mathcal{D}'
  args: 0
- name: ICat
  doc: 'A given category viewed as a diagram shape'
  body: '\mathcal{I}'
  args: 0

---

Let {#\Mor{U}{\CCat}{\DCat}#} be a functor and let {#\ICat#} be a category. The functor {#U#} is said to *create (co)limits of {#\ICat#}-figures* when for any diagram {#\Mor{C_\bullet}{\ICat}{\CCat}#} such that {#\ICat\xrightarrow{C_\bullet}\CCat\xrightarrow{F}\DCat#} has a (co)limit, then {#C_\bullet#} has a (co)limit that is both preserved and reflected by {#F#}.
