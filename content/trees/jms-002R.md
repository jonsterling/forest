---
title: positive elements in a dominion
taxon: definition
author:
- Jonathan Sterling
date: 2023-02-21T13:04:09-05:00
macros: 
- include: jms-002P
---

Let {#\CCat#} be category with pullbacks, a terminal object, and an initial object, equipped with a dominion {#\mathcal{M}#} that has a [Sierpiński interval](jms-002P) {#\prn{\Sigma,\top,\bot}#}, such that {#\mathcal{M}#}-partial map classifiers {#LA#} exist for all {#A\in\CCat#}. We will write {#\mathbb{L}=\prn{L,\eta,\mu}#} for the resulting partial map classifier monad on {#\CCat#}.

Let {#\prn{A,\alpha}#} be an {#\mathbb{L}#}-algebra in {#\CCat#}, and let {#\Mor{x}{C}{A}#} be a generalized element of {#A#}. We say that {#\Mor{x}{C}{A}#} is *positive* when for any {#\Mor{u}{C}{LA}#} such that there exists a path from {#\Mor{x}{C}{A}#} to {#\Mor{u;\alpha}{C}{A}#}, then {#\Mor{u}{C}{LA}#} factors through some (necessarily unique) {#\Mor{y}{C}{A}#} as below:

```render-latex
\begin{tikzpicture}[diagram]
\node (nw) {$C$};
\node[right = of nw] (ne) {$A$};
\node[below = of ne] (se) {$LA$};
\draw[exists,->] (nw) to node[above] {$y$} (ne);
\draw[>->] (ne) to node[right] {$\eta_A$} (se);
\draw[->] (nw) to node[sloped,below] {$u$} (se);
\end{tikzpicture}
```
