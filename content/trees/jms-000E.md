---
title: bicategory
taxon: definition
author: Jonathan Sterling
date: 2023-01-18T14:07:57-05:00
macros:
- include: base-macros
- name: HSeq
  args: 0
  body: '\mathbin{\boldsymbol{;}}'
  doc: 'horizontal composition'
---

A *bicategory* {#B#} is given by the following structure and axioms:
1. a collection of *objects* {#x,y,z#} called *0-cells*;
2. for each pair of 0-cells {#x,y#} a category {#\Hom{B}{x}{y}#} of *morphisms* or *1-cells* {#x\xrightarrow{f}y#};
3. for each object {#x#}, a morphism {#x\xrightarrow{\Idn{x}}x#} called the *identity morphism*;
4. for all objects {#x,y,z#}, a functor {#\Hom{B}{x}{y}\times\Hom{B}{y}{z}\xrightarrow{\prn{\HSeq}}\Hom{B}{x}{z}#} called *horizontal composition*;
5. for all 1-morphisms {#e\xrightarrow{f}x\xrightarrow{g}y\xrightarrow{h}z#}, an isomorphism {#\prn{f\HSeq g}\HSeq h \xrightarrow{\alpha\Sub{f,g,h}} f\HSeq\prn{g\HSeq h}#} natural in {#f,g,h#} called the *associator*;
6. for all 1-morphisms {#x\xrightarrow{f}y#}, an isomorphism {#\Idn{x}\HSeq f\xrightarrow{\lambda\Sub{f}} f#} natural in {#f#} called the *left unitor*;
7. for all 1-morphisms {#x\xrightarrow{f}y#}, an isomorphism {#f\HSeq\Idn{y}\xrightarrow{\rho\Sub{f}} f#} natural in {#f#} called the *right unitor*;
8. such that the triangle below commutes for all 1-morphisms {#x\xrightarrow{f}y\xrightarrow{g}z#}:
  ```render-latex
  \begin{tikzpicture}[diagram]
    \node (nw) {$\prn{f\HSeq\Idn{y}}\HSeq g$};
    \node[below right = 2.5cm of nw] (s) {$f\HSeq g$};
    \node[above right = 2.5cm of s] (ne) {$f\HSeq\prn{\Idn{y}\HSeq g}$};
    \draw[->] (nw) to node[above] {$\alpha\Sub{f,\Idn{y},g}$} (ne);
    \draw[->] (nw) to node[sloped,below] {$\rho\Sub{f}\HSeq \Idn{g}$} (s);
    \draw[->] (ne) to node[sloped,below] {$\Idn{f}\HSeq \lambda\Sub{g}$} (s);
  \end{tikzpicture}
  ```
9. and the pentagon below commutes for all 1-morphisms {#v\xrightarrow{e}w\xrightarrow{f}x\xrightarrow{g}y\xrightarrow{h}z#}:
  ```render-latex
  \begin{tikzpicture}[diagram]
    \node (nw) {$\prn{\prn{e\HSeq f}\HSeq y}\HSeq z$};
    \node[above right = 3cm of nw, xshift=1cm] (n) {$\prn{e\HSeq f}\HSeq\prn{y\HSeq z}$};
    \node[below right = 3cm of n, xshift=1cm] (ne) {$e\HSeq\prn{f\HSeq\prn{g\HSeq h}}$};
    \node[below = of nw] (sw) {$\prn{e\HSeq\prn{f\HSeq g}}\HSeq h$};
    \node[below = of ne] (se) {$e\HSeq\prn{\prn{f\HSeq g}\HSeq h}$};
    \draw[->] (nw) to node[left] {$\alpha\Sub{e,f,g}\HSeq\Idn{h}$} (sw);
    \draw[->] (sw) to node[below] {$\alpha\Sub{e,f\HSeq g,h}$} (se);
    \draw[->] (se) to node[right] {$\Idn{e}\HSeq\alpha\Sub{f,g,h}$} (ne);
    \draw[->] (nw) to node[sloped,above] {$\alpha\Sub{e\HSeq f},g,h$} (n);
    \draw[->] (n) to node[sloped,above] {$\alpha\Sub{e,f,g\HSeq h}$} (ne);
  \end{tikzpicture}
  ```

