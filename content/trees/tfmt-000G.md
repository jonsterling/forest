---
title: mathematical diagrams and macro support
author:
- jonmsterling
date: 2023-01-07T12:46:55+01:00
---

A basic requirement of [tools for mathematical thought](tfmt-0002) is to support the rendering of mathematical diagrams. What kinds of diagrams are needed depends, of course, on the problem domain: for my own work, the main diagram-forms needed are *commutative diagrams* and *string diagrams*.

![](tfmt-000P)

The situation for *hypertext* mathematical tools is somewhat less advanced than that of {#\LaTeX#} and PFG/TikZ, but there are several options which we discuss below.

![](tfmt-000J)

![](tfmt-000K)

Both [{#\KaTeX#}](tfmt-000J) and [MathJax](tfmt-000K) have the benefit that diagrams created using them will respect the ambient macro package with which the tool has been configured; therefore, if one looks past the rudimentary nature of the support for commutative diagrams, our main requirement is indeed satisfied. Another tool worth discussing is [quiver](tfmt-000I).

![](tfmt-000I)

Because of the currently [inadequate support of quiver](tfmt-000I) for embedding diagrams in hypertext settings, we cannot consider it any further. There is a final option that turns out to be the most used in practice: generating SVG images statically from embedded {#\LaTeX#} code.

![](tfmt-000L)


Finally, we comment on more principled approaches using web standards such as SVG and MathML that we hope will take form in the future.

![](tfmt-000N)

![](tfmt-000O)

![](tfmt-000M)
