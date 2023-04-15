---
title: upshift structure
taxon: definition
author:
- jonmsterling
date: 2023-04-15T13:24:47+02:00
macros:
- include: base-macros
- name: Ushift
  args: 1
  body: '\mathord{\Uparrow} #1'
  doc: 'The object part of an upshift structure'
- name: Force
  args: 1
  body: '\Con{force}\Sub{#1}'
  doc: 'The "force" operation of an upshift structure'
- name: Delay
  args: 1
  body: '\Con{delay}\Sub{#1}'
  doc: 'The inverse to the "force" operation of an upshift structure'
---

Let {#\mathcal{D}#} be a [deductive system](jms-0048) and let {#A#} be an object of {#\mathcal{D}#}. An *upshift structure* for {#A#} is defined to be a 
[negative](jms-004B) object {#\Ushift{A}#} and a [linear](jms-004A) map {#\Force{A} : \Ushift{A}\vdash A#} for which there exists a [necessarily unique and thunkable](jms-004N) inverse {#\Delay{A} : A\vdash \Ushift{A}#}.
