---
title: locally small fibration
taxon: Definition
macros:
- include: frct-001C
- name: DispHom
  args: 3
  body: '\overline{\mathbf{hom}}\Sub{#1}(#2,#3)'
  doc: the apex of the universal hom candidate
---

A cartesian fibration {#E#} over {#B#} is *locally small* if and only if for
each {#x\in B#} and {#u,v\in E\Sub{x}#}, the total category {#\TotCat{\CandHom{E\Sub{x}}{u}{v}}#} of [hom candidates](frct-001C)
has a terminal object. Viewed as a displayed object in {#E#}, we shall write {#\DispHom{E\Sub{x}}{u}{v}#} lying over {#\Hom{E\Sub{x}}{u}{v}#} for the terminal hom candidate.
