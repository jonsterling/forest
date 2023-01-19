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
---

For any closed term {#\cdot\vdash N:\TpNat#} of cubical type theory, there exists a unique natural number {#n\in\mathbb{N}#} such that {#\cdot\vdash N\equiv \bar{n}:\TpNat#} where {#\bar{n}#} is the encoding of the number {#n#} as a term in the type theory.
