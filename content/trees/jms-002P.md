---
title: the Sierpiński interval of a dominion
taxon: definition
author:
- Jonathan Sterling
date: 2023-02-21T12:25:27-05:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  doc: a given category
---

Let {#\CCat#} be a category with pullbacks, a terminal object and let {#\mathcal{M}#} be a dominion on {#\CCat#}. A *Sierpiński space* for {#\mathcal{M}#} is defined to be a universal {#\mathcal{M}#}-partial map, i.e. a morphism {#\Mor{\top}{\ObjTerm{\CCat}}{\Sigma}\in\mathcal{M}#} such that for any {#\Mor{i}{U}{A}\in \mathcal{M}#} there exists a unique map {#\Mor{\chi_i}{A}{\Sigma}#} making the following square cartesian:

```render-latex
\DiagramSquare{
  ne = \ObjTerm{\CCat},
  se = \Sigma,
  east = \top\in \mathcal{M},
  sw = A,
  nw = U,
  west = \mathcal{M}\ni i,
  south = \chi_i,
  south/style = {->,exists},
  west/style = >->,
  east/style = >->,
  nw/style = pullback,
}
```

When {#\CCat#} has an initial object {#\ObjInit{\CCat}#} and every {#\Mor{}{\ObjInit{\CCat}}{A}#} lies in {#\mathcal{M}#}, the Sierpiński space becomes an "interval object" {#\prn{\Sigma,\top,\bot}#} where {#\Mor{\bot}{\ObjTerm{\CCat}}{\Sigma}#} is given as follows:

```render-latex
\DiagramSquare{
  ne = \ObjTerm{\CCat},
  se = \Sigma,
  east = \top,
  sw = \ObjTerm{\CCat},
  nw = \ObjInit{\CCat},
  south = \bot,
  south/style = {->,exists},
  west/style = >->,
  east/style = >->,
  nw/style = pullback,
}
```

Under these circumstances, we refer to {#\mathcal{M}#} as a dominion that has a *Sierpiński interval*.
