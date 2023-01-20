---
title: cubical canonicity
taxon: conjecture
date: 2023-01-19T13:43:47-05:00
macros:
- include: base-macros
- name: TpNat
  args: 0
  body: '\Con{nat}'
  doc: the type of natural numbers in cubical type theory
- name: EncodeNum
  args: 1
  body: '\bar{#1}'
  doc: the encoding of a number as a term in cubical type theory
- name: Nat
  args: 0
  body: '\mathbb{N}'
  doc: the set of natural numbers
---

For any closed term {#\cdot\vdash N:\TpNat#} of cubical type theory, there exists a unique natural number {#n\in\Nat#} such that {#\cdot\vdash N\equiv \EncodeNum{n}:\TpNat#} where {#\EncodeNum{n}#} is the encoding of the number {#n#} as a term in the type theory.
