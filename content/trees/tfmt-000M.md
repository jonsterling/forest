---
title: towards mixing SVG and MathML in hypertext mathematics
author: Jonathan Sterling
date: 2023-01-07T14:20:01+01:00
---

The [W3C MathML Core Working Draft](https://www.w3.org/TR/mathml-core/#html-and-svg) points out that MathML can be embedded into `<svg>` elements using the `<foreignObject>` element. This is a great strength of the modularity of the model, and I believe that in the future, we will be able to use this as a way to render accessible mathematical diagrams in hypertext.

What is missing? Essentially the current issue preventing widespread use of this method is the fact that neither SVG nor MathML is an authoring language: they are [both](tfmt-000N) [currently too low-level](tfmt-000O) to be seriously used by authors.

For exactly so long as diagrams must be drawn using {#\LaTeX#}-based tools rather than something MathML-compatible, it would be non-negotiable for the support of notational macros to itself be based in {#\LaTeX#} syntax (e.g. as in both {#\KaTeX#} and MathJax). But it is worth imagining a future in which mathematical diagrams are drawn using a high-level interface to SVG, and then a pure MathML approach to notational macros becomes quite viable. This is not currently the world we live in, but it is something to hope for.
