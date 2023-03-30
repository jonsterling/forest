---
title: notational macros are local, not global
author:
- jonmsterling
date: 2023-01-07T12:58:19+01:00
---

In {#\LaTeX#}, macros are organized into packages that are then globally imported into a single document. Because a {#\LaTeX#} document comprises just one project and thus any transclusions (via `\input` or `\include`) are of components local to that one project, this model is adequate --- although experienced users of {#\LaTeX#} are nonetheless all too aware of the difficulties of namespacing macro commands when interacting with multiple packages or document classes.

**The requirements for a [tool](tfmt-0002) that aims to bring together multiple projects over a very long period of time are somewhat different:** many distinct packages of notation will be used across the body of work, and it is not possible to fix a single global notation package.

Indeed, it is not reasonable to expect that all notes within a person's mathematical life shall share the same notations, and in many cases, it would moreover be necessary for the names of the macros associated to these notations to clash. This can happen because two projects are orthogonal, or it can happen as the author's tastes change over time --- and it is not reasonable for such a tool to force enormous and weighty refactorings (touching thousands or tens of thousands of notes) every time the author's taste changes. The need for arduous refactorings of this kind is one of the main ways that large mathematical projects tend to collapse under their own weight.

**It follows that any [tool for thought](tfmt-0002) whose support for mathematical notations involves a globally-defined macro package is inadequate for mathematical uses.** On the other hand, it is also not reasonable to require the author to define all their macros in each note: notes tend to be small, and there will always be large clusters of notes that share the same notations --- and for which the small refactoring tasks involved when notations change are a positive feature rather than a negative one, as one of the goals of a cluster is to accumulate cohesion.

**Therefore, the precise requirement for macro library support is as follows:**

1. The author must be able to define (in their own files) multiple notational macro libraries.

2. A given note must be able to specify which macro library (if any) it employs.

Finally, careful attention must be paid to the interaction between the above requirements and the *transclusion* of mathematical notes: a transcluded note must be rendered with respect to its *own* macro library, and not that of the parent note.
