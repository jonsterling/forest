---
title: absolute vs. relative hierarchy in document markup languages
author: Jonathan Sterling
date: 2022-12-29T13:28:23+01:00
---

Both HTML and {#\LaTeX#} support a form of hierarchical organization with "absolute" heading levels, i.e. levels that count upward from a single root. In HTML, there is `<h1>`, `<h2>`, `<h3>`..., and in {#\LaTeX#} there is `\part`, `\chapter`, `\section`, `\subsection`,`\subsubsection`, ..., `\paragraph` depending on the document class. This is in contrast to a *relative* model of hierarchy, in which there is a single command to introduce a section heading at the "current" level, and there are other commands to introduce hierarchical nesting.

The absolute sectioning model is completely inadequate for the hierarchical organization of ideas, for the simple reason that it is the *context* of a node that determines what its level in the hierarchy is, not the node itself. When this is mixed up, it makes re-contextualization an extremely painful and time-consuming process: you must recursively increment or decrement all section levels that occur underneath a given node, as anyone who has used {#\LaTeX#} for any significant writing project can attest.

In traditional texts, re-contextualization occurs when you want to move a section from one place in the hierarchy to another; in the more fluid media I am pursuing, there may be  [many orthogonal hierarchical structures](tfmt-0006) imposed on the network, so re-contextualization ceases to be a *refactoring task* and is elevated as a [basic unit of mathematical activity](tfmt-0006). In either case, we are drawn to prefer **relative hierarchy** over **absolute** hierarchy. See [](tfmt-000C) for existing implementations of this idea.

This is similar to the relationship between De Bruijn levels (global levels) and De Bruijn indices (local levels) in type theory: conventional section headings are like De Bruijn indices in that they count from the **root** node, whereas what we would want are section headings that count from the **present** node.
