---
title: notational macros in mathematical authoring
author:
- jonmsterling
date: 2023-01-07T12:43:15+01:00
---

Mathematical writing tends to involve a variety of notations which (1) can be difficult to typeset by hand, and (2) will likely change over time. The difficulty of hand-typesetting is somewhat less important than the propensity of notation to change over time: when we change notations within a given mathematical work, we must update every occurrence of the notation: but when the representation of the notation is unstructured, it is not in fact possible for a tool (e.g. find-and-replace) to detect every instance that needs to be updated. **Therefore, it is mandatory that the representation of mathematical notations be structured.**

{#\LaTeX#} allows authors to structure their notations very simply using *macros*, which can be introduced using `\newcommand` or `\NewDocumentCommand`. It is trivial to update all occurences of a notation by simply changing the definition of the corresponding macro.

Unfortunately, most tools that purport to support the inclusion of mathematical expressions do not have adequate support for macros. Both [{#\KaTeX#}](https://katex.org/) and [MathJax](https://www.mathjax.org/) have excellent support for configuring macros, but these configuration options are not available in most of the tools that build on {#\KaTeX#} and MathJax: for instance, [Logseq](https://logseq.com/) and [Obsidian](https://obsidian.md/) and [Notion](https://www.notion.so) all support embedding mathematics, but they do not support configuring macros. In fact there is a community plugin for Obsidian that adds this functionality, but it only supports imposing a global macro library on the entire "vault", which is [inadequate](tfmt-000H).
