---
taxon: Construction
macrolib: topos
packages: jon-tikz
---

Let $E$ be fibered over $B$; we may define the *opposite* fibered category
$\OpCat{E}$ over $B$ like so:

1. An object of $\OpCat{E}\Sub{x}$ is given by an object of $E\Sub{x}$.

2. Given $f : x \to y\in B$, a morphism $\bar{x}\to_f \bar{y}$ in $\OpCat{E}$
   is given in terms of $E$ by a cartesian map $\bar{y}\Sub{f} : \bar{y}\Sub{x} \to\Sub{f} \bar{y}$ together
   with a *vertical* map $h : \bar{y}\Sub{x}\to\Sub{\Idn{x}} \bar{y}$ as depicted below:
   ```latex
    \begin{tikzpicture}[diagram]
      \SpliceDiagramSquare{
        height = 1.5cm,
        nw/style = pullback,
        west/style = lies over,
        east/style = lies over,
        north = \bar{y}\Sub{f},
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
   such that $\brc{\bar{x} \leftarrow \bar{y}\Sub{x}\Sup{1}\to \bar{y}}$ is
   identified with $\brc{\bar{x}\leftarrow\bar{y}\Sub{x}\Sup{2}\to \bar{y}}$
   when they agree up to the unique vertical isomorphism $\bar{y}\Sub{x}\Sup{1}\cong\bar{y}\Sub{x}\Sup{2}$
   induced by the universal property of cartesian maps in the sense that the following diagram commutes:
   ```latex
   \begin{tikzpicture}[diagram]
    \node (x) {$\bar{x}$};
    \node (yx/1) [above right = of x] {$\bar{y}\Sub{x}\Sup{1}$};
    \node (y) [below right = of yx/1] {$\bar{y}$};
    \node (yx/2) [below right = of x] {$\bar{y}\Sub{x}\Sup{2}$};
    \draw[->] (yx/1) to node [sloped,above] {vert.} (x);
    \draw[->] (yx/2) to node [sloped,below] {vert.} (x);
    \draw[->] (yx/1) to node [sloped,above] {cart.} (y);
    \draw[->] (yx/2) to node [sloped,below] {cart.} (y);
    \draw[->] (yx/1) to node [upright desc] {$\cong$} (yx/2);
   \end{tikzpicture}
   ```
