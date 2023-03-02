---
title: the way-below relation
taxon: definition
author: Jonathan Sterling
date: 2023-02-21T16:23:22-05:00
macros:
- include: base-macros
- name: WayBelow
  args: 0
  body: '\ll'
  doc: 'the way-below relation'
---

Let {#x,y:D#} be two elements of a dcpo {#D#}; we say that {#x#} is *way below* {#y#}, written {#x\WayBelow y#}, when for any directed subset {#I\subseteq D#} such that {#y\sqsubseteq \bigsqcup{I}#}, there exists {#z\in I#} such that {#x\sqsubseteq z#}.

(Adapted from [Tom de Jong's thesis](dejong-2023-thesis).)
