---
title: "warmup: locally small family fibrations"
macros:
- include: base-macros
---

An ordinary category $E$ is called *locally small* when for any $x,y\in E$ the
collection of morphisms $x\to y$ is a set.  This property of $E$ can be
rephrased in terms of its [family fibration](frct-0006) $\FAM{E}$ over
$\SET$ as follows.

Consider an index set $I\in \SET$ and two families $u,v\in C^I$. We may define
an $I$-indexed collection $[u,v]\Sub{i\in I}$ consisting (pointwise) of all the
morphisms $u\Sub{i}\to v\Sub{i}$ in $C$:
$$[u,v]\Sub{i} = \brc{ f \mid f: u\Sub{i}\to v\Sub{i} }$$

If $C$ is locally small, $[u,v]\Sub{i\in I}$ is in fact a family of sets for
any $I\in\SET$ as each $[u,v]\Sub{i}$ is a set. Conversely, if $[u,v]\Sub{i\in I}$
is a family of sets for any $I\in \SET$, then $C$ is locally small as we may
consider in particular the case that $I=\mathbf{1}$.
