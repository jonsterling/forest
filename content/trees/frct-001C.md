---
title: hom candidates
taxon: Definition
macros:
- include: frct-0000
- name: CandHom
  args: 3
  body: '\mathbf{H}_{#1}(#2,#3)'
  doc: the displayed category of hom candidates
---

For any {#x\in B#} and displayed objects {#u,v\in E\Sub{x}#}, we define a *hom
candidate* for {#u,v#} to be a span {#u\leftarrow \bar{h} \rightarrow v#} in {#E#} in which the left-hand leg is cartesian:
```render-latex
\begin{tikzpicture}[diagram]
\SpliceDiagramSquare<l/>{
  height = 1.5cm,
  west/style = lies over,
  east/style = lies over,
  north/style = <-,
  south/style = <-,
  ne/style = ne pullback,
  ne = \bar{h},
  se = h,
  sw = x,
  nw = u,
  south = p\Sub{h},
  north = \bar{p}\Sub{h}
}
\SpliceDiagramSquare<r/>{
  height = 1.5cm,
  west/style = lies over,
  east/style = lies over,
  glue = west,
  glue target = l/,
  ne = v,
  se = x,
  north = \epsilon\Sub{h},
  south = p\Sub{h},
}
\end{tikzpicture}
```

In the above, {#h#} should be thought of as a candidate for the "hom object" of {#u,v#},
and {#\epsilon\Sub{h}#} should be viewed as the structure of an "evaluation map" for {#h#}.
This structure can be rephrased in terms of a displayed category {#\CandHom{E\Sub{x}}{u}{v}#} over {#\Sl{B}{x}#}:

1. Given {#h\in \Sl{B}{x}#}, an object of {#\CandHom{E\Sub{x}}{u}{v}\Sub{h}#} is given by a hom candidate
   whose apex in the base is {#h#} itself. We will write {#\bar{h}#} metonymically
   for the entire hom candidate over {#h#}.

2. Given {#\alpha:l\to h\in\Sl{B}{x}#} and hom candidates {#\bar{l}\in \CandHom{E\Sub{x}}{u}{v}\Sub{l}#} and
   {#\bar{h}\in \CandHom{E\Sub{x}}{u}{v}\Sub{h}#}, a morphism {#\bar{h}\DispTo{\alpha} \bar{l}#} is given by a
   cartesian morphism {#\bar\alpha:\bar{l}\DispTo{\alpha}\bar{h}#} in {#E#} such that the
   following diagram commutes:
   ```render-latex
   \begin{tikzpicture}[diagram]
     \node (u) {$u$};
     \node (l) [above right = 1.5cm of u,xshift=.5cm] {$\bar{l}$};
     \node (h) [below right = 1.5cm of u,xshift=.5cm] {$\bar{h}$};
     \node (v) [below right = 1.5cm of l,xshift=.5cm] {$v$};
     \draw[->] (h) to node [sloped,below] {$\bar{p}\Sub{h}$} (u);
     \draw[->] (l) to node [sloped,above] {$\bar{p}\Sub{l}$} (u);
     \draw[->] (h) to node [sloped,below] {$\epsilon\Sub{h}$} (v);
     \draw[->] (l) to node [sloped,above] {$\epsilon\Sub{l}$} (v);
     \draw[->] (l) to node [upright desc] {$\bar\alpha$} (h);
   \end{tikzpicture}
   ```
