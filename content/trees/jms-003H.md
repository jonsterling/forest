---
title: wild semi-coherent natural transformations
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-14T14:45:53+01:00
macros:
- include: jms-003G
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
- name: DCat
  args: 0
  body: '\mathcal{D}'
  scope: private
---

Let {#\CCat,\DCat#} be two [wild categories](jms-0037), and let {#F,G:\CCat\to\DCat#} be two
[wild 1-semi-functors](jms-003F) from {#\CCat#} to {#\DCat#}. A *wild semi-coherent natural transformation* is defined by the data of a [wild natural transformation](jms-0039) {#\alpha : F \to G#} together with, for each {#f:\Hom{\CCat}{A}{B}#} and {#g : \Hom{\CCat}{B}{C}#}, a higher identification {#\Con{seq}\Sub{\alpha}\,f\,g#} between {#\alpha\Sub{f;g} : F\prn{f;g};\alpha\Sub{C} = \alpha\Sub{A};G\prn{f;g}#} and the composite identification:

```render-latex
\begin{tikzpicture}[diagram]
\node (0) {$F\prn{f;g}; \alpha\Sub{Z}$};
\node[right = 4.5cm of 0] (1) {$\prn{Ff;Fg};\alpha\Sub{Z}$};
\node[right = 6cm of 1] (2) {$Ff;\prn{Fg;\alpha\Sub{Z}}$};

\node[below = of 0] (3) {$Ff;\prn{\alpha\Sub{Y};Gg}$};
\node[right = 6 cm of 3] (4) {$\prn{Ff;\alpha\Sub{Y}};Gg$};
\node[below = of 2] (5) {$\prn{\alpha\Sub{X};Gf};Gg$};

\node[below = of 3] (6) {$\alpha\Sub{X};\prn{Gf;Gg}$};
\node[right = 5.5cm of 6] (7) {$\alpha\Sub{X};G\prn{f;g}$};

\draw[->] (0) to node[above] {$\Con{seq}\Sub{F}\,f\,g;\alpha_Z$} (1);
\draw[->] (1) to node[above] {$\prn{\Con{assoc}\Sub{\CCat}\,\prn{Ff}\,\prn{Fg}\,\alpha_Z}\Sup{-1}$} (2);
\draw[->] (2) to[out = 270, in = 80, looseness = 0.3] node[upright desc] {$Ff;\alpha\Sub{g}$} (3);
\draw[->] (3) to node[above] {$\Con{assoc}\Sub{\CCat}\,\prn{Ff}\,\alpha\Sub{Y}\,\prn{Gg}$} (4);
\draw[->] (4) to node[above] {$\alpha_f;Gg$} (5);
\draw[->] (5) to[out = 270, in = 80, looseness = 0.3] node[upright desc] {$\prn{\Con{assoc}\Sub{\CCat}\,\alpha\Sub{X}\,\prn{Gf}\,\prn{Gg}}\Sup{-1}$} (6);

\draw[->] (6) to node[above] {$\alpha\Sub{X};\prn{\Con{seq}\Sub{G}\,f\,g}\Sup{-1}$} (7);

\end{tikzpicture}
```