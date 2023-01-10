---
taxon: Lemma
macros:
- include: base-macros
title: globally small externalization
---

The [externalization](frct-001R) is globally small

{{%proof%}}
We may choose a [generic object](frct-000K) for {#\Extrn{C}#}, namely the identity element {#(C\Sub{0},\Idn{C\Sub{0}})\in \TotCat{\Extrn{C}}#}. Given any object {#(x,u)\in \TotCat{\Extrn{C}}#} the cartesian map {#(x,u)\to (C\Sub{0},\Idn{C\Sub{0}})#} is given as follows:
```render-latex
\begin{tikzpicture}[diagram]
  \node (x) {$x$};
  \node (y) [below = of x] {$C\Sub{0}$};
  \node (C/1) [right = of x] {$C\Sub{1}$};
  \node (C/0) [below = of C/1] {$C\Sub{0}$};
  \node (C/0') [above = of C/1] {$C\Sub{0}$};
  \draw[->] (x) to node [upright desc] {$\Con{idn}\Sub{u}$} (C/1);
  \draw[->] (C/1) to node [right] {$t$} (C/0);
  \draw[->] (C/1) to node [right] {$s$} (C/0');
  \draw[->] (y) to node [below] {$\Idn{C\Sub{0}}$} (C/0);
  \draw[->] (x) to node [left] {$u$} (y);
  \draw[->] (x) to node [sloped,above] {$u$} (C/0');
\end{tikzpicture}
```
{{%/proof%}}
