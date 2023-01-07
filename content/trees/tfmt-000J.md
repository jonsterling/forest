---
title: commutative diagrams in KaTeX
author: Jonathan Sterling
date: 2023-01-07T13:26:54+01:00
---

[KaTeX](https://katex.org/) has a very rudimentary support for commutative diagrams built-in, by emulating the `amscd` package. Unfortunately, this support is completely inadequate for usage by mathematicians today:

1. **Only square diagram shapes are supported:** commutative diagrams in general have diagonal and curved lines, but these are not supported.

2. **The rendering of the limited gamut of supported commutative diagrams is broken** in most browsers (at least Safari and Firefox). In particular, lines are jagged as they are pieced together from pipes and arrows that are subtly misaligned.
