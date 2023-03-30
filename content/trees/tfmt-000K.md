---
title: commutative diagrams in MathJax
author:
- jonmsterling
date: 2023-01-07T13:33:23+01:00
---

Like [{#\KaTeX#}](tfmt-000J), [MathJax](https://www.mathjax.org/) supports the `amscd` commands for rudimentary square-shaped commutative diagrams. Unlike the [{#\KaTeX#} implementation](tfmt-000J) of `amscd`, the supported diagrams are rendered correctly without jagged lines; this means that for the vanishingly small population of mathematicians whose needs are limited to square-shaped diagrams, MathJax's builtin support is viable.

On the other hand, there is a more advanced option available for users of MathJax: the [XyJax-v3 plugin](https://github.com/sonoisa/XyJax-v3), which adds support for the full gamut of `xypic` diagrams to MathJax. Notably, this plugin is used by the [Stacks Project](https://stacks.math.columbia.edu/). The only downside of the `xypic` support is that it interacts poorly with accessibility features (but no worse than any other solution to rendering non-trivial commutative diagrams), and diagrams created using `xypic` look considerably less professional than those created using `tikz` or [quiver](tfmt-000I).
