---
title: the opposite of a cloven fibration
taxon: construction
author:
- jonmsterling
date: 2023-03-11T11:29:48+01:00
macros:
- include: frct-0000
---

Let {#E#} be a [cloven fibration](frct-003T) over {#B#}; in this case, we may use the cleaving of {#E#} to give a simple construction of the opposite fibration {#\OpCat{E}#}. 

1. A displayed object of {#\OpCat{E}#} over {#x\in B#} is given by an object of {#E#} over {#x#}.
2. Given {#\Mor{f}{x}{u}\in B#}, a displayed morphism {#\bar{x}\DispTo{f}\bar{y}#} in {#\OpCat{E}#} is given by a vertical map {#\DispMor{h}{\Idn{x}}{\InvImg{f}\bar{y}}{\bar{x}}#}.
