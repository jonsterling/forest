---
title: opposite fibered category
taxon: construction
macros:
- include: frct-0000
---

Let {#E#} be fibered over {#B#}; we may define the *opposite* fibered category {#\OpCat{E}#} over {#B#} like so:

1. An object of {#\OpCat{E}\Sub{x}#} is given by an object of {#E\Sub{x}#}.

2. Given {#\Mor{f}{x}{y}\in B#}, a morphism {#\bar{x}\DispTo{f} \bar{y}#} in {#\OpCat{E}#} is given in terms of {#E#} by a cartesian map {#\DispMor{\bar{y}\Sub{f}}{f}{\bar{y}\Sub{x}}{\bar{y}}#} together with a *vertical* map {#\DispMor{h}{\Idn{x}}{\bar{y}\Sub{x}}{\bar{x}}#} as depicted below:
   ```render-latex
    \begin{tikzpicture}[diagram]
      \SpliceDiagramSquare{
        height = 1.5cm,
        nw/style = pullback,
        west/style = lies over,
        east/style = lies over,
        north = \bar{y}\Sub{f},
        south = f,
        nw = \bar{y}\Sub{x},
        ne = \bar{y},
        sw = x,
        se = y
      }
      \node (x*) [left = of nw] {$\bar{x}$};
      \node (x) [left = of sw] {$x$};
      \draw[->] (nw) to node [above] {$h$} (x*);
      \draw[lies over] (x*) to (x);
      \draw[double] (x) to (sw);
    \end{tikzpicture}
   ```
   such that {#\brc{\bar{x} \leftarrow \bar{y}\SubSup{x}{1}\to \bar{y}}#} is identified with {#\brc{\bar{x}\leftarrow\bar{y}\SubSup{x}{2}\to \bar{y}}#} when they agree up to the unique vertical isomorphism {#\bar{y}\SubSup{x}{1}\cong\bar{y}\SubSup{x}{2}#} induced by the universal property of cartesian maps in the sense that the following diagram commutes:
   ```render-latex
   \begin{tikzpicture}[diagram]
    \node (x) {$\bar{x}$};
    \node (yx/1) [above right = of x] {$\bar{y}\SubSup{x}{1}$};
    \node (y) [below right = of yx/1] {$\bar{y}$};
    \node (yx/2) [below right = of x] {$\bar{y}\SubSup{x}{2}$};
    \draw[->] (yx/1) to node [sloped,above] {vert.} (x);
    \draw[->] (yx/2) to node [sloped,below] {vert.} (x);
    \draw[->] (yx/1) to node [sloped,above] {cart.} (y);
    \draw[->] (yx/2) to node [sloped,below] {cart.} (y);
    \draw[->] (yx/1) to node [upright desc] {$\cong$} (yx/2);
   \end{tikzpicture}
   ```
