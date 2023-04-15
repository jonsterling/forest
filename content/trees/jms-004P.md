---
title: downshift structure
taxon: definition
author:
- jonmsterling
date: 2023-04-15T13:47:29+02:00
macros:
- include: base-macros
- name: Dshift
  args: 1
  body: '\mathord{\Downarrow} #1'
  doc: 'The object part of a downshift structure'
- name: Wrap
  args: 1
  body: '\Con{wrap}\Sub{#1}'
  doc: 'The "wrap" operation of a downshift structure'
- name: Unwrap
  args: 1
  body: '\Con{unwrap}\Sub{#1}'
  doc: 'The inverse to the "wrap" operation of a downshift structure'
---

Let {#\mathcal{D}#} be a [deductive system](jms-0048) and let {#A#} be an object of {#\mathcal{D}#}. A *downshift structure* for {#A#} is defined to be a 
[positive](jms-004B) object {#\Dshift{A}#} and a [thunkable](jms-004A) map {#\Wrap{A} : A\vdash\Dshift{A}#} for which there exists a [necessarily unique and linear](jms-004N) inverse {#\Unwrap{A} : \Dshift{A}\vdash A#}.
