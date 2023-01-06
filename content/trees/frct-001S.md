---
taxon: Theorem
title: characterization of the externalization
macrolib: topos
packages: jon-tikz
---

The [externalization](frct-001R) $\brk{\gl{\bar{u}}}$ of the internal category $\gl{\bar{u}}$ [associated to](frct-003Q) $\bar{u}$ is equivalent to the [full internal subfibration](frct-0010) $\FullSubfib{\bar{u}}$.

{{%proof%}}

We will define a fibred equivalence $F : \brk{\gl{\bar{u}}}\to \FullSubfib{\bar{u}}$ over $B$.

1. Fix $x\in B$ and $\chi\Sub{x} \in \brk{\gl{\bar{u}}}\Sub{x}$, i.e. $\chi\Sub{x} : x\to u$; we define $F\prn{\chi\Sub{x}}$ to be an arbitrary cartesian map $\phi\Sub{x} : \bar{x}\to\Sub{\chi\Sub{x}} \bar{u}$. (Here we have used the [axiom of choice for collections](frct-000R).)

2. Fix $f : x\to y\in B$ and $\chi\Sub{x} :x\to u$ and $\chi\Sub{y}:y\to u$ and a diagram representing a displayed morphism $h$ from $\chi\Sub{x}$ to $\chi\Sub{y}$ over $f$ as below:
   ```render-latex
   \begin{tikzpicture}[diagram]
   \node (x) {$x$};
   \node (y) [below = of x] {$y$};
   \node (C/1) [right = of x] {$\brk{\bar\partial\Sub{1},\bar\partial\Sub{2}}$};
   \node (C/0) [below = of C/1] {$u$};
   \node (C/0') [above = of C/1] {$u$};
   \draw[->,magenta] (x) to node [upright desc] {$h$} (C/1);
   \draw[->] (C/1) to node [right] {$t$} (C/0);
   \draw[->] (C/1) to node [right] {$s$} (C/0');
   \draw[->] (y) to node [below] {$\chi\Sub{y}$} (C/0);
   \draw[->] (x) to node [left] {$f$} (y);
   \draw[->] (x) to node [sloped,above] {$\chi\Sub{x}$} (C/0');
   \end{tikzpicture}
   ```

   We must define $F\prn{h}:\bar{x}\to\Sub{f} \bar{y}$, fixing arbitrary
   cartesian maps $\bar\chi\Sub{x}:\bar{x}\to\Sub{\chi\Sub{x}}\bar{u}$ and
   $\bar\chi\Sub{y}:\bar{y}\to\Sub{\chi\Sub{y}}\bar{u}$. First we lift $h:x\to \brk{\bar\partial\Sub{1},\bar\partial\Sub{2}}$
   into $E$ using the universal property of the cartesian lift:
   ```render-latex
    \begin{tikzpicture}[diagram]
      \SpliceDiagramSquare<0/>{
        height = 1.5cm,
        west/style = lies over,
        east/style = lies over,
        width = 2.5cm,
        north/node/style = upright desc,
        ne/style = pullback,
        north/style = {->,exists},
        nw = \bar{x},
        sw = x,
        se = \brk{\bar\partial\Sub{1},\bar\partial\Sub{2}},
        ne = \InvImg{\brk{\bar\partial\Sub{1},\bar\partial\Sub{2}}}\bar\partial\Sub{1},
        south = h,
        north = \bar{h},
      }
      \SpliceDiagramSquare<1/>{
        glue = west,
        glue target = 0/,
        height = 1.5cm,
        width = 2.5cm,
        north/node/style = upright desc,
        south/node/style = upright desc,
        east/style = lies over,
        ne/style = pullback,
        ne = \bar\partial\Sub{1},
        se = u\times u,
        south = p,
        north = \bar{p},
      }
      \SpliceDiagramSquare<2/>{
        glue = west,
        glue target = 1/,
        height = 1.5cm,
        width = 2.5cm,
        north/node/style = upright desc,
        south/node/style = upright desc,
        east/style = lies over,
        ne = \bar{u},
        se = u,
        south = \pi\Sub{1},
        north = \bar\pi\Sub{1},
      }
      \draw[->,bend left=30] (0/nw) to node [above] {$\bar\chi\Sub{x}$} (2/ne);
      \draw[->,bend right=30] (0/se) to node [below] {$s$} (2/se);
    \end{tikzpicture}
   ```

   By composition with the "evaluation map" for our hom object, we have a map $\bar{x}\to\Sub{f;\chi\Sub{y}}\bar{u}$:
   ```render-latex
    \begin{tikzpicture}[diagram]
      \SpliceDiagramSquare<0/>{
        height = 1.5cm,
        west/style = lies over,
        east/style = lies over,
        south/node/style = upright desc,
        width = 2.5cm,
        nw = \bar{x},
        sw = x,
        se = \brk{\bar\partial\Sub{1},\bar\partial\Sub{2}},
        ne = \InvImg{\brk{\bar\partial\Sub{1},\bar\partial\Sub{2}}}\bar\partial\Sub{1},
        south = h,
        north = \bar{h},
      }
      \SpliceDiagramSquare<1/>{
        glue = west,
        glue target = 0/,
        height = 1.5cm,
        width = 2.5cm,
        south/node/style = upright desc,
        east/style = lies over,
        ne/style = pullback,
        ne = \bar\partial\Sub{2},
        se = u\times u,
        south = p,
        north = \bar{\epsilon},
      }
      \SpliceDiagramSquare<2/>{
        glue = west,
        glue target = 1/,
        height = 1.5cm,
        width = 2.5cm,
        south/node/style = upright desc,
        east/style = lies over,
        ne = \bar{u},
        se = u,
        south = \pi\Sub{2},
        north = \bar\pi\Sub{2},
      }
      \draw[->,bend right=30] (0/se) to node [upright desc] {$t$} (2/se);
      \node (y) [between = 0/sw and 2/se, yshift=-2cm] {$y$};
      \draw[bend right=30,->] (0/sw) to node [sloped,below] {$f$} (y);
      \draw[bend right=30,->] (y) to node [sloped,below] {$\chi\Sub{y}$} (2/se);
    \end{tikzpicture}
   ```

   Next we define $F\prn{h}:\bar{x}\to\Sub{f}\bar{y}$ using the universal property of (another) cartesian lift:
   ```render-latex
    \begin{tikzpicture}[diagram]
      \SpliceDiagramSquare<l/>{
        height = 1.5cm,
        east/style = lies over,
        west/style = lies over,
        ne/style = pullback,
        north/style = {->,exists},
        north/node/style = upright desc,
        ne = \bar{y},
        nw = \bar{x},
        se = y,
        sw = x,
        south = f,
        north = F\prn{h},
        width = 2.5cm,
      }
      \SpliceDiagramSquare<r/>{
        glue = west,
        glue target = l/,
        height = 1.5cm,
        east/style = lies over,
        north/node/style = upright desc,
        ne = \bar{u},
        se = u,
        south = \chi\Sub{y},
        north = \bar\chi\Sub{y},
      }
      \draw[->,bend left=30] (l/nw) to node [above] {$\bar{h};\bar{\epsilon};\bar\pi\Sub{2}$} (r/ne);
    \end{tikzpicture}
   ```

{{%/proof%}}
