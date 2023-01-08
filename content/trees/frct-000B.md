---
title: Displayed categories from functors
macros:
- include: base-macros
packages: jon-tikz
---

In many cases, one starts with a functor {#P:E\to B#}; if it were meaningful to
speak of *equality* of objects in an arbitrary category then there would be an
obvious construction of a displayed category {#P\Sub{\bullet}#} from {#P#}; we would
simply set {#P\Sub{x}#} to be the collection of objects {#u\in E#} such that {#Pu=x#}. As
it stands there is a more subtle version that will coincide up to categorical
equivalence with the naïve one in all cases that the latter is meaningful.

1. We define an object of {#P\Sub{x}#} to be a pair {#(u,\phi\Sub{u})#} where {#u\in E#} and
   {#\phi\Sub{u} : Pu\cong x#}. It is good to visualize such a pair as a "crooked
   leg" like so:
```render-latex
\begin{tikzpicture}[diagram]
\node (u) {$u$};
\node (Pu) [below = 1cm of u] {$Pu$};
\node (x) [right = 1.5cm of Pu] {$x$};
\draw[lies over] (u) to (Pu);
\draw[->] (Pu) to node [below] {$\phi\Sub{u}$} (x);
\end{tikzpicture}
```

2. A morphism {#(u,\phi\Sub{u})\to\Sub{f} (v,\phi\Sub{v})#} over {#f : x \to y#} is given by
   a morphism {#h : u\to v#} that lies over {#f#} modulo the isomorphisms
   {#\phi\Sub{u},\phi\Sub{v}#} in sense depicted below:
````render-latex
\begin{tikzpicture}[diagram]
\node (pu) {$Pu$};
\node (pv) [right = of pu] {$Pv$};
\node (x) [below left = 1.5cm of pu] {$x$};
\node (y) [below right = 1.5cm of pv] {$y$};
\node (u) [above = 1.5cm of pu] {$u$};
\node (v) [above = 1.5cm of pv] {$v$};
\draw[lies over] (u) to (pu);
\draw[lies over] (v) to (pv);
\draw[->] (u) to node [above] {$h$} (v);
\draw[->] (x) to node [sloped,above] {$\phi\Sub{u}\Sup{-1}$} (pu);
\draw[->] (pu) to node [upright desc] {$Ph$} (pv);
\draw[->] (pv) to node [sloped,above] {$\phi\Sub{v}$} (y);
\draw[->,bend right=30] (x) to node [below] {$f$} (y);
\end{tikzpicture}
````

![](frct-001U)

We have a functor {#\TotCat{P\Sub{\bullet}}\to E#} taking a pair {#(x,(u,\phi\Sub{u}))#} to {#u#}.

![](frct-001V)
![](frct-001W)
![](frct-000C)
