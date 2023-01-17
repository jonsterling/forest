---
taxon: definition
title: meta-category
macros:
- include: base-macros
---

A *meta-category* {#\mathfrak{C}#} is defined by explaining what
an object of {#\mathfrak{E}#} is, and, given two objects {#x,y\in \mathfrak{E}#},
what a morphism from {#x#} to {#y#} is, together with the following operations:

1. for each object {#x\in \mathfrak{E}#}, an *identity* map {#\Idn{x} : x \to x#},
2. for any two maps {#f:x\to y#} and {#g:y\to z#}, a *composite map* {#f;g : x \to z#},
3. such that the following equations hold:
{##
  \Idn{x};h = h\qquad
  h;\Idn{y} = h\qquad
  f;(g;h) = (f;g);{h}
##}
