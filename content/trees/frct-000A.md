---
title: The total category and its projection
date: 2022
macros:
- include: base-macros
- include: frct-0000
- name: TotCat
  args: 1
  body: '\widetilde{#1}'
  doc: the total category of a displayed category
---

Note that any displayed category {#E#} over {#B#} can be viewed as an undisplayed category {#\TotCat{E}#} equipped with a projection functor {#p\Sub{E}: \TotCat{E}\to B#}; in this case {#\TotCat{E}#} is called the *total category* of {#E#}.

1. An object of {#\TotCat{E}#} is given by a pair {#(x,\bar{x})#} where {#x\in B#} and {#\bar{x}\in E\Sub{x}#}.
2. A morphism {#\Mor{}{(x,\bar{x})}{(y,\bar{y})}#} in {#\TotCat{E}#} is given by a pair {#(f,\bar{f})#} where {#\Mor{f}{x}{y}#} and {#\DispMor{\bar{f}}{f}{\bar{x}}{\bar{y}}:\bar{x}#}.

The construction of the total category of a displayed category is called the *Grothendieck construction.*

![](frct-001T)
