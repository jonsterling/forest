---
taxon: Lemma
title: generalized pullback lemma
macrolib: topos
packages: jon-tikz
---

Let $\bar{f} : \bar{x}\to\Sub{f}\bar{y}$, and suppose that
$\bar{g} : \bar{y}\to\Sub{g}\bar{z}$ is cartesian over $g$. Then
$\bar{f};\bar{g}$ is cartesian over $f;g$ if and only if $\bar{f}$ is cartesian
over $f$.
```render-latex
  \begin{tikzpicture}[diagram]
    \SpliceDiagramSquare{
      height = 1.5cm,
      west/style = lies over,
      east/style = lies over,
      nw/style = pullback,
      sw = y,
      nw = \bar{y},
      se = z,
      ne = \bar{z},
      south = g,
      north = \bar{g},
    }
    \node (x*) [dotted pullback, left = of nw] {$\bar{x}$};
    \node (x) [left = of sw] {$x$};
    \draw[->] (x*) to node [above] {$\bar{f}$} (nw);
    \draw[lies over] (x*) to (x);
    \draw[->] (x) to node [below] {$f$} (sw);
  \end{tikzpicture}
```

{{%proof%}}
Suppose first that $\bar{f}$ is cartesian. To see that $\bar{f};\bar{g}$
is cartesian, we must construct a unique factorization as follows:
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
      nw/style = pullback,
      ne/style = pullback,
    }
    \node (z') [right = 2cm of ne] {$\bar{z}$};
    \node (z) [right = 2cm of se] {$z$};
    \draw[lies over] (z') to (z);
    \draw[->] (se) to node [below] {$g$} (z);
    \draw[->] (ne) to node [desc] {$\bar{g}$} (z');

    \node (u') [above left = 1.5cm of nw,xshift=-.5cm] {$\bar{u}$};
    \node (u) [above left = 1.5cm of sw,xshift=-.5cm] {$u$};
    \draw[lies over] (u') to (u);
    \draw[->,bend left=30] (u') to node [sloped,above] {$\bar{h}$} (z');
    \draw[->] (u) to node [sloped,below] {$m$} (sw);
    \draw[->,exists] (u') to (nw);
  \end{tikzpicture}
```
Because $\bar{g}$ is cartesian, we can factor $\bar{h} = i;\bar{g}$ for a unique
$i:\bar{u}\to\Sub{m;f}\bar{y}$. Then, because $\bar{f}$ is cartesian, we can further
factor $i = j;\bar{f}$ for a unique $j:\bar{u}\to\Sub{m}\bar{x}$. We conclude that
there is a unique $j:\bar{u}\to\Sub{m}\bar{x}$ for which
$\bar{h} = j;\bar{f};\bar{g}$, as required.

Conversely, suppose that $\bar{f};\bar{g}$ is cartesian. To see that $\bar{f}$ is
cartesian, we must construct a unique factorization as follows:
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
      ne/style = pullback,
    }
    \node (z') [right = 2cm of ne] {$\bar{z}$};
    \node (z) [right = 2cm of se] {$z$};
    \draw[lies over] (z') to (z);
    \draw[->] (se) to node [below] {$g$} (z);
    \draw[->] (ne) to node [desc] {$\bar{g}$} (z');

    \node (u') [above left = 1.5cm of nw,xshift=-.5cm] {$\bar{u}$};
    \node (u) [above left = 1.5cm of sw,xshift=-.5cm] {$u$};
    \draw[lies over] (u') to (u);
    \draw[->,bend left=30] (u') to node [sloped,above] {$\bar{h}$} (ne);
    \draw[->] (u) to node [sloped,below] {$m$} (sw);
    \draw[->,exists] (u') to (nw);
  \end{tikzpicture}
```
Because $\bar{f};\bar{g}$ is cartesian, we can factor
$\bar{h};\bar{g} = i;\bar{f};\bar{g}$ for a unique $i:\bar{u}\to\Sub{m}\bar{x}$.
On the other hand, because $\bar{g}$ is cartesian, there is a unique
$j:\bar{u}\to\Sub{m;f}\bar{y}$ for which $\bar{h};\bar{g} = j;\bar{g}$; as both
$\bar{h}$ and $i;\bar{f}$ satisfy this condition, we conclude $\bar{h}=i;\bar{f}$.
Therefore, there is a unique $i:\bar{u}\to\Sub{m}\bar{x}$ for which
$\bar{h} = i;\bar{f}$, as required.

{{%/proof%}}
