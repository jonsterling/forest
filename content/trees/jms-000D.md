---
title: monoidal category
taxon: definition
author:
- jonmsterling
date: 2023-01-18T13:48:02-05:00
macros: 
- include: base-macros
---

A *monoidal category* is a category {#C#} equipped with the following structure and axioms:

1. a functor {#C\times C\xrightarrow{\otimes}C#} called the *tensor product*;
2. an object {#I\in C#} called the *tensor unit*;
3. a natural isomorphism {#\prn{x\otimes y}\otimes z \xrightarrow{\alpha\Sub{x,y,z}} x\otimes\prn{y\otimes z}#} called the *associator*;
4. a natural isomorphism {#I\otimes x \xrightarrow{\lambda\Sub{x}}x#} called the *left unitor*;
5. a natural isomorphism {#x\otimes I \xrightarrow{\rho\Sub{x}}x#} called the *right unitor*;
6. such that the triangle below commutes:
  ```render-latex
  \begin{tikzpicture}[diagram]
    \node (nw) {$\prn{x\otimes I}\otimes y$};
    \node[below right = 2.5cm of nw] (s) {$x\otimes y$};
    \node[above right = 2.5cm of s] (ne) {$x\otimes\prn{I\otimes y}$};
    \draw[->] (nw) to node[above] {$\alpha\Sub{x,I,y}$} (ne);
    \draw[->] (nw) to node[sloped,below] {$\rho_x\otimes \Idn{y}$} (s);
    \draw[->] (ne) to node[sloped,below] {$\Idn{x}\otimes \lambda\Sub{y}$} (s);
  \end{tikzpicture}
  ```
7. and the pentagon below commutes:
  ```render-latex
  \begin{tikzpicture}[diagram]
    \node (nw) {$\prn{\prn{w\otimes x}\otimes y}\otimes z$};
    \node[above right = 3cm of nw, xshift=1cm] (n) {$\prn{w\otimes x}\otimes\prn{y\otimes z}$};
    \node[below right = 3cm of n, xshift=1cm] (ne) {$w\otimes\prn{x\otimes\prn{y\otimes z}}$};
    \node[below = of nw] (sw) {$\prn{w\otimes\prn{x\otimes y}}\otimes z$};
    \node[below = of ne] (se) {$w\otimes\prn{\prn{x\otimes y}\otimes z}$};
    \draw[->] (nw) to node[left] {$\alpha\Sub{w,x,y}\otimes\Idn{z}$} (sw);
    \draw[->] (sw) to node[below] {$\alpha\Sub{w,x\otimes y,z}$} (se);
    \draw[->] (se) to node[right] {$\Idn{w}\otimes\alpha\Sub{x,y,z}$} (ne);
    \draw[->] (nw) to node[sloped,above] {$\alpha\Sub{w\otimes x},y,z$} (n);
    \draw[->] (n) to node[sloped,above] {$\alpha\Sub{w,x,y\otimes z}$} (ne);
  \end{tikzpicture}
  ```
