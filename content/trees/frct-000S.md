---
title: exegesis of opposite categories
macrolib: topos
---

The construction of [fibered opposite categories](frct-001Z) does appear quite
involved, but it can be seen to be inevitable from the perspective of the fiber
categories $\OpCat{E}\Sub{x}$ ([](frct-0005)). Indeed, let $u,v\in
\OpCat{E}\Sub{x}$ and fix a *vertical* map $h : u \to v\in \OpCat{E}\Sub{x}$;
by unfolding definitions, we see that the vertical map $h : u \to v$ is
uniquely determined by a morphism $v\to u\in E\Sub{x}$.

{{%proof%}}
A displayed morphism $u\to\Sub{\Idn{x}} v\in \OpCat{E}$ is
determined by a span $\brc{u\leftarrow v\Sub{x} \to v}\in E$ where the right-hand
map is cartesian over $\Idn{x} : x\to x$ and the left-hand map is vertical, taken up to the identification of
different cartesian lifts $v\Sub{x}\to x$. A displayed morphism that is cartesian over the identity is an isomorphism; hence, displayed morphisms $u\to\Sub{\Idn{x}} v\in\OpCat{E}$ are equivalently determined by vertical maps $v\to u \in E$.
{{%/proof%}}
