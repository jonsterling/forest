---
taxon: Lemma
title: equivalence with Grothendieck's fibrations
macrolib: topos
packages: jon-tikz
---

Let $E$ be displayed over $B$. Then $E$ is a cartesian fibration in the sense of {{<cref frct-0002>}} if and only if the following two conditions hold:

1. *Hypocartesian lifts.* For each $f:x\to y\in B$ and $\bar{y}\in E\Sub{y}$ there
   exists a displayed object $\bar{x}\in E\Sub{x}$ and hypocartesian morphism
   $\bar{f}:\bar{x}\to\Sub{f}\bar{y}$.
2. *Closure under composition.* If $\bar{f}:\bar{x}\to\Sub{f}\bar{y}$ and
   $\bar{g}:\bar{y}\to\Sub{g}\bar{z}$ are hypocartesian, then $\bar{f};\bar{g}$
   is hypocartesian.

{{%proof%}}
**Proof.** Suppose first that $E$ is a cartesian fibration in our sense. Then
$E$ has hypocartesian lifts because it has cartesian lifts. For closure under
composition, fix hypocartesian $\bar{f},\bar{g}$; by {{<cref frct-002C>}} we know that
$\bar{f},\bar{g}$ are also cartesian and hence by {{<cref frct-001H>}} so is the composite $\bar{f};\bar{g}$; therefore it follows
that $\bar{f};\bar{g}$ is also hypocartesian.

Conversely, suppose that $E$ is a cartesian fibration in the sense of
Grothendieck, and let $\bar{f}:\bar{x}\to\Sub{f}\bar{y}$ be the hypocartesian
lift of $f:x\to y$ at $\bar{y}\in E\Sub{y}$; we shall see that $\bar{f}$ is also
a *cartesian* lift of $f$ at $\bar{y}$ by constructing a unique factorization as
follows:
```latex
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
    \node (u) [above left = 1.5cm of sw,xshift=-.5cm] {$u$};
    \draw[lies over] (u') to (u);
    \draw[->,bend left=30] (u') to node [sloped,above] {$\bar{h}$} (ne);
    \draw[->] (u) to node [sloped,below] {$m$} (sw);
    \draw[->,exists] (u') to (nw);
  \end{tikzpicture}
```
Let $\bar{m}:\bar{u}\tick\to\Sub{m}\bar{x}$ be the hypocartesian lift of
$m$ at $\bar{x}$, where $\bar{u}\tick\in E\Sub{u}$. By hypothesis, the
composite $\bar{m};\bar{f} : \bar{u}\tick\to\Sub{m;f}\bar{y}$ is
hypocartesian, so $\bar{h}$ factors uniquely through $\bar{m};\bar{f}$ over
$\Idn{u}$:
```latex
  \begin{tikzpicture}[diagram]
    \SpliceDiagramSquare{
      west/style = lies over,
      east/style = lies over,
      north/node/style = upright desc,
      height = 1.5cm,
      nw = \bar{u}',
      ne = \bar{y},
      sw = u,
      north = \bar{m};\bar{f},
      south = m;f,
      se = y,
    }
    \node (u') [above left = 1.5cm of nw,xshift=-.5cm] {$\bar{u}$};
    \node (u) [above left = 1.5cm of sw,xshift=-.5cm] {$u$};
    \draw[lies over] (u') to (u);
    \draw[->,bend left=30] (u') to node [sloped,above] {$\bar{h}$} (ne);
    \draw[double] (u) to (sw);
    \draw[->,exists] (u') to node [desc] {$i$} (nw);
  \end{tikzpicture}
```
The composite $i;\bar{m} : \bar{u}\to\Sub{m}\bar{x}$ is the required (cartesian)
factorization of $\bar{h}$ through $\bar{f}$ over $m$. To see that $i;\bar{m}$
is the unique such map, we observe that all morphisms $\bar{u}\to\Sub{m}\bar{x}$
factor uniquely through $\bar{m}$ over $\Idn{u}$ as a consequence of $\bar{m}$
being hypocartesian.

{{%/proof%}}
