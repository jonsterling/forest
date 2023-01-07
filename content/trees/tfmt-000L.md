---
title: Generating images statically using LaTeX
author: Jonathan Sterling
date: 2023-01-07T13:47:18+01:00
---

Because of the [general](tfmt-000J) [inadequacy](tfmt-000K) [of](tfmt-000I) the other available tools, most authors of hypertext mathematics with diagramming needs tend to rely on the static generation of images from $\LaTeX$ code using a local $\LaTeX$ toolchain. It is not difficult to instrument [pandoc](https://www.pandoc.org/) with a [Lua filter to render tikz code to SVG images](https://pandoc.org/lua-filters.html).

There are also a variety of other tools that do something similar, tend to be employed in static site generation:

+ [antex](https://github.com/paolobrasolin/antex) by Paolo Brasolin is used by [Krater](https://github.com/paolobrasolin/krater) as well as [jekyll-sheafy](https://github.com/paolobrasolin/jekyll-sheafy), both via [jekyll-antex](https://github.com/paolobrasolin/jekyll-antex).

+ [forester](https://sr.ht/~jonsterling/forester/) by Jonathan Sterling is used by the present web site.

The basic architecture of such a tool is to scan for $\LaTeX$ blocks, and then identify them by a *hash* of their contents. This hash is used as a filename for `.tex` files, which are compiled to `.dvi` and thence to `.svg` using the `dvisvgm` tool. Alternatively, it is also possible to transclude the resulting `<svg>` element directly, but one must be careful to rename all identifiers in the `<svg>` element uniquely, as it is possible for two different `<svg>` elements on a single page to interfere with each other.

Both [antex](https://github.com/paolobrasolin/antex) and [forester](https://sr.ht/~jonsterling/forester/) support passing a macro library to be used when rendering. Both [jekyll-sheafy](https://github.com/paolobrasolin/jekyll-sheafy) and [forester](https://sr.ht/~jonsterling/forester/) set their macro libraries on a page-local basis through Markdown "[front](https://jekyllrb.com/docs/front-matter/) [matter](https://gohugo.io/content-management/front-matter/)".

A serious downside of generating images from $\LaTeX$ code is the negative impact on accessibility tools. This seems only slightly mitigated by the transclusion of the `<svg>` element as opposed to using `<img>`. Ultimately accessibility for mathematical diagrams remains an unsolved problem, and it does not seem that the existing discussion on accessibility of hypertext mathematics has much to say about this problem.
