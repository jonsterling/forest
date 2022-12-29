---
title: relative hierarchy in existing tools
author: Jonathan Sterling
date: 2022-12-29T13:49:59+01:00
---

There are a few $\LaTeX$ packages that implement relative hierarchy for sectioning as an alternative to the {{<cref tfmt-000B "backward model of absolute hierarchy">}}.

- The [coseoul](https://www.ctan.org/pkg/coseoul?lang=en) package implements relative sectioning commands; similar to the existing sectioning commands, an {{<cref tfmt-000D "implicit hierarchy">}} model is employed, leading to an imperative feel with commands like `\levelup{<title>}` and `\leveldown{<title>}`.

- The [modular](https://ctan.org/pkg/modular?lang=en) package builds on [coseoul](https://www.ctan.org/pkg/coseoul?lang=en) to behave better under the *transclusion* of $\LaTeX$ documents, introducing a `\subimport` command that is to be used instead of `\input` or `\include`.

- On the other hand, the [dieudonne](https://github.com/jonsterling/latex-dieudonne) package implements a form of relative sectioning with an {{<cref tfmt-000D "explicit hierarchical model">}}, i.e. one in which the syntactical nesting of $\LaTeX$ environments induces the hierarchy.

There are some attempts to impose a ({{<cref tfmt-000B "relative">}}, {{<cref tfmt-000D "explicit">}}) hierarchical model in HTML by using `<section>` and **only** the `<h1>` heading command. In the HTML5 spec, this behavior was initially endorsed as part of the "outline" algorithm, but [almost no vendors of browsers nor assistive technology have correctly implemented this behavior](https://github.com/whatwg/html/issues/83/) so it is dead on arrival.
