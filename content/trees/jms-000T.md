---
title: decidability of cubical type theory
taxon: conjecture
date: 2023-01-19T13:43:47-05:00
macros:
- include: base-macros
- name: IsTp
  args: 1
  body: '{#1}\ \textit{type}'
  doc: the typehood assertion in cubical type theory
---

The assertions {#\Gamma\vdash \IsTp{A}#}, {#\Gamma\vdash\IsTp{A\equiv B}#}, {#\Gamma\vdash M:A#}, and {#\Gamma\vdash M\equiv N: A#} are all decidable.
