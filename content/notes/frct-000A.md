---
title: The total category and its projection
date: 2022
macrolib: topos
children:
- frct-001T
---

Note that any displayed category $E$ over $B$ can be viewed as an undisplayed
category $\TotCat{E}$ equipped with a projection functor $p\Sub{E}: \TotCat{E}\to
B$; in this case $\TotCat{E}$ is called the *total category* of $E$.

1. An object of $\TotCat{E}$ is given by a pair $(x,\bar{x})$ where $x\in B$ and
   $\bar{x}\in E\Sub{x}$.
2. A morphism $(x,\bar{x})\to (y,\bar{y})$ in $\TotCat{E}$ is given by a pair $(f,\bar{f})$ where
   $f:x\to y$ and $\bar{f}:\bar{x}\to\Sub{f}\bar{y}$.

The construction of the total category of a displayed category is called the *Grothendieck construction.*
