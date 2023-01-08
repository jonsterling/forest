---
taxon: Construction
title: the internal category associated to a displayed object
macros:
- include: base-macros
packages: jon-tikz
---

Let $\bar{u}$ be a displayed object in a [locally small](frct-001B) fibration $E$ over $B$. We will define the [internal category](frct-001A) $\gl{\bar{u}}$ in $B$ associated to $\bar{u}$. In particular, we let the object of objects $\gl{\bar{u}}\Sub{0}$ be $u$ itself; defining the object of arrows $\gl{\bar{u}}\Sub{1}$ is more complex, making critical use of the local smallness of $E$ over $B$.

We will think of the fiber category $E\Sub{u\times u}$ as the category of objects indexed in the *boundary* (source and target) of a morphism. Restricting $\bar{u}$ along the source and target projections, we obtain the displayed objects of "points of the source" and "points of the target" respectively:
```render-latex
\DiagramSquare{
  height = 1.5cm,
  nw/style = pullback,
  west/style = lies over,
  east/style = lies over,
  nw = \bar{\partial}\Sub{1},
  sw = u\times u,
  se = u,
  ne = \bar{u},
  south = \pi\Sub{1},
  north = \bar{\pi}\Sub{1},
}
\qquad
\DiagramSquare{
  height = 1.5cm,
  nw/style = pullback,
  west/style = lies over,
  east/style = lies over,
  nw = \bar{\partial}\Sub{2},
  sw = u\times u,
  se = u,
  ne = \bar{u},
  south = \pi\Sub{2},
  north = \bar{\pi}\Sub{2}
}
```

Because $E$ is [locally small](frct-001B), there is an object
$\Hom{E\Sub{u\times u}}{\bar\partial\Sub{1}}{\bar\partial\Sub{2}}\in \Sl{B}{u\times u}$ that
behaves as the "generic hom set". We define $\gl{\bar{u}}\Sub{1}\in B$ and its
source and target projections to be this very object.
