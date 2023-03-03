---
title: enriched category
taxon: definition
author:
- Jonathan Sterling
date: 2023-01-18T16:40:10-05:00
macros:
- include: base-macros
---

Let {#\prn{V,I,\otimes,\alpha,\lambda,\rho}#} be a [monoidal category](jms-000D). A *category {#C#} enriched in {#V#}* is defined by the following structure and axioms:

1. a collection {#\Ob{C}#} of *objects*;
2. for any two objects {#x,y#}, an object {#\Hom{C}{x}{y}\in V#};
3. for every object {#x#}, a morphism {#I\xrightarrow{i\Sub{x}}\Hom{C}{x}{x}#} in {#V#};
4. for all objects {#x,y,z#}, a morphism {#\Hom{C}{x}{y}\otimes\Hom{C}{y}{z}\xrightarrow{c\Sub{x,y,z}}\Hom{C}{x}{z}#} in {#V#}.
5. such that the following diagrams commute in {#V#}:
   ```render-latex
   \begin{tikzpicture}[diagram]
    \node (nw) {$\prn{\Hom{C}{w}{x}\otimes \Hom{C}{x}{y}}\otimes \Hom{C}{y}{z}$};
    \node[right = 9cm of nw] (ne) {$\Hom{C}{w}{x}\otimes\prn{\Hom{C}{x}{y}\otimes\Hom{C}{y}{z}}$};
    \node[below = of nw] (sw) {$\Hom{C}{w}{y}\otimes\Hom{C}{y}{z}$};
    \node[below = of ne] (se) {$\Hom{C}{w}{x}\otimes\Hom{C}{x}{z}$};
    \node[between = sw and se,yshift=-1cm] (s) {$\Hom{C}{w}{z}$};
    \draw[->] (nw) to node[left] {$c\Sub{w,x,y}\otimes \Hom{C}{y}{z}$} (sw);
    \draw[->] (sw) to node[sloped,below] {$c\Sub{w,y,z}$} (s);
    \draw[->] (se) to node[sloped,below] {$c\Sub{w,x,z}$} (s);
    \draw[->] (ne) to node[right] {$\Hom{C}{w}{x}\otimes c\Sub{x,y,z}$} (se);
    \draw[->] (nw) to node[above] {$\alpha\Sub{w,x,y,z}$} (ne);
   \end{tikzpicture}
   ```
   ```render-latex
   \begin{tikzpicture}[diagram]
    \node (nw) {$I\otimes \Hom{C}{x}{y}$};
    \node[below = of nw] (sw) {$\Hom{C}{x}{x}\otimes \Hom{C}{x}{y}$};
    \node[right = 4.5cm of nw] (ne) {$\Hom{C}{x}{y}$};
    \node[right = 4.5cm of ne] (nee) {$\Hom{C}{x}{y}\otimes I$};
    \node[below = of nee] (see) {$\Hom{C}{x}{y}\otimes \Hom{c}{y}{y}$};
    \draw[->] (nee) to node[right] {$\Hom{C}{x}{y}\otimes i\Sub{y}$} (see);
    \draw[->] (nee) to node[above] {$\rho\Sub{\Hom{C}{x}{y}}$} (ne);
    \draw[->] (nw) to node[above] {$\lambda\Sub{\Hom{C}{x}{y}}$} (ne);
    \draw[->] (nw) to node[left] {$i\Sub{x}\otimes \Hom{C}{x}{y}$} (sw);
    \draw[->] (sw) to node[sloped,below] {$c\Sub{x,x,y}$} (ne);
    \draw[->] (see) to node[sloped,below] {$c\Sub{x,y,y}$} (ne);
   \end{tikzpicture}
   ```
