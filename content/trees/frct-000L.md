---
title: globally small categories
taxon: Theorem
macros:
- include: frct-0006
- include: frct-0000
---

An ordinary category {#C#} is equivalent to a globally small category if and only if the fibration {#\FAM{C}#} has a generic object.

{{%proof%}}
To see that this is the case, suppose that {#C#} has a set of objects. Then
{#C\in\SET#} and we define {#\lfloor{C}\rfloor#} to be the displayed object
{#\brc{x}\Sub{x\in C}\in \FAM{C}[C]#}. Fixing {#I\in \SET#} and {#z\in C^I#}, we
consider the cartesian map displayed over {#z : I \to C#}:
```render-latex
\DiagramSquare{
  height = 1.5cm,
  width = 3cm,
  west/style = lies over,
  east/style = lies over,
  sw = I,
  se = C,
  south = z,
  ne = \brc{x}\Sub{x\in C},
  nw = {z = \brc{z\,i}\Sub{i\in I} }
}
```

Conversely assume that {#\FAM{C}#} has a generic object {#\bar{u}\in\FAM{C}[U]#}
for some {#U\in \SET#}; then we may equip {#U#} with the structure of a globally
small category such that {#U#} is equivalent to {#C#}, using a construction that is similar to our implementation of the opposite fibration ([](frct-000Q)). In particular we define a
morphism {#x\to y\in U#} to be given by the following data:

1. a cartesian map {#a\DispTo{x} \bar{u}#} over {#x : 1\to U#},
2. a cartesian map {#b\DispTo{y} \bar{u}#} over {#y : 1\to U#},
3. and a vertical map {#h:a\to b#} in {#\FAM{C}[1]\simeq C#},

such that {#(a\Sub{1},b\Sub{1},h\Sub{1})#} is identified with {#(a\Sub{2},b\Sub{2},h\Sub{2})#} when {#h_1#} and {#h_2#} are equal modulo the (unique) vertical isomorphisms between the cartesian lifts in the sense depicted below:

```render-latex
\begin{tikzpicture}[diagram]
  \SpliceDiagramSquare{
    nw = a_1,
    ne = a_2,
    sw = b_1,
    se = b_2,
    north = \cong,
    south = \cong,
    west = h_1,
    east = h_2,
    east/node/style = upright desc,
  }
  \node (u) [between = ne and se, xshift = 2cm] {$\bar{u}$};
  \draw[->] (ne) to node [sloped,above] {cart.}(u);
  \draw[->] (se) to node [sloped,below] {cart.} (u);
\end{tikzpicture}
```

Remember that a cartesian map {#a\DispTo{x}\bar{u}#} is standing for a *choice*
of an object of {#C#} encoded by {#x\in U#}. Because such choices are unique only
up to isomorphism, we must include them explicitly in the data.

{{%/proof%}}
