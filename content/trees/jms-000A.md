---
title: kernel
taxon: notation
author:
- Jonathan Sterling
date: 2023-01-18T09:07:12-05:00
macros:
- include: base-macros
- name: Ker
  args: 0
  body: '\operatorname{ker}'
  doc: the kernel of a map
- name: InclKer
  args: 1
  body: 'i\Sub{\Ker{#1}}'
  doc: the inclusion map of the kernel
- name: ACat
  args: 0
  body: '\mathcal{A}'
  doc: a given category with zero morphisms
  scope: private
---

We will often write {#\Ker{f}\xrightarrow{\InclKer{f}}A#} for the [kernel](jms-0009) of a map {#A\xrightarrow{f}B#} in a [category with zero morphisms](jms-000B) {#\ACat#}.
