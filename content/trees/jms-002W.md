---
title: the strictly-below relation
taxon: definition
author:
- jonmsterling
date: 2023-02-21T16:27:43-05:00
macros:
- include: base-macros
- name: StBelow
  args: 0
  body: '\sqsubset'
  doc: 'the stictly-below relation'
---

Let {#x\sqsubseteq y:D#} be two elements of a dcpo {#D#}; we say that {#x#} is *strictly below* {#y#}, written {#x\StBelow y#}, if whenever {#y\sqsubseteq\bigsqcup_{1+\phi}\brk{x\mid y}#} we have {#\phi=\top#}.

(Adapted from [Tom de Jong's thesis](dejong-2023-thesis).)
