---
title: hypocartesian morphisms
taxon: Definition
macrolib: topos
packages: jon-tikz
---

Let $E$ be displayed over $B$, and let $f:x\to y \in B$; a morphism
$\bar{f}:\bar{x}\to\Sub{f} \bar{y}$ in $E$ is called *hypocartesian* over $f$ when
for any $\bar{u}\in E\Sub{x}$ and $\bar{h}:\bar{u}\to\Sub{f} \bar{y}$ there exists a
unique $i : \bar{u}\to\Sub{\Idn{x}} \bar{x}$ with $i;\bar{f} = \bar{h}$ as follows:
```render-latex
  \begin{tikzpicture}[diagram]
    \SpliceDiagramSquare{
      west/style = lies over,
      east/style = lies over,
      north/node/style = upright desc,
      height = 1.5cm,
      nw = \bar{x},
      ne = \bar{y},
      sw = x,
      north = \bar{f},
      south = f,
      se = y,
    }
    \node (u') [above left = 1.5cm of nw,xshift=-.5cm] {$\bar{u}$};
    \node (u) [above left = 1.5cm of sw,xshift=-.5cm] {$x$};
    \draw[lies over] (u') to (u);
    \draw[->,bend left=30] (u') to node [sloped,above] {$\bar{h}$} (ne);
    \draw[double] (u) to (sw);
    \draw[->,exists] (u') to node [desc] {$i$} (nw);
  \end{tikzpicture}
```
