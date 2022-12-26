---
taxon: Construction
title: externalization
macrolib: topos
packages: jon-tikz
---

Let $C$ be an internal category in $E$. We may define a fibered category $\brk{C}$ over $E$ called the *externalization* of $C$.

1. Given $x\in E$, an object of $\brk{C}\Sub{x}$ is defined to be a morphism $x\to C\Sub{0}$ in $E$.

2. Given $x,y\in E$ and $f:x\to y$ and $u \in \brk{C}\Sub{x}$ and $v\in
   \brk{C}\Sub{y}$, a morphism $u\to\Sub{f} v$ is defined to be a morphism $h :
   x\to C\Sub{1}$ in $E$ such that the following diagram commutes:
   ```latex
   \begin{tikzpicture}[diagram]
   \node (x) {$x$};
   \node (y) [below = of x] {$y$};
   \node (C/1) [right = of x] {$C\Sub{1}$};
   \node (C/0) [below = of C/1] {$C\Sub{0}$};
   \node (C/0') [above = of C/1] {$C\Sub{0}$};
   \draw[->] (x) to node [upright desc] {$h$} (C/1);
   \draw[->] (C/1) to node [right] {$t$} (C/0);
   \draw[->] (C/1) to node [right] {$s$} (C/0');
   \draw[->] (y) to node [below] {$v$} (C/0);
   \draw[->] (x) to node [left] {$f$} (y);
   \draw[->] (x) to node [sloped,above] {$u$} (C/0');
   \end{tikzpicture}
   ```
