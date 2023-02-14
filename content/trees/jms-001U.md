---
title: suprema of semidirected subsets in pointed dcpos
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T11:16:03Z
macros:
- include: jms-001E
---

A dcpo {#A#} is [pointed](jms-001S) if and only if it is closed under suprema of semidirected subsets.

{{%proof "Constructive proof"%}}
Suppose that {#A#} is closed under suprema of semidirected subsets. In particular, we may consider the supremum {#\bigsqcup\brc{}#} of the empty set. This is evidently the bottom element, using the universal property of the supremum.

Conversely, suppose that {#A#} is pointed and let {#U\subseteq A#} be semidirected. We may replace {#U\subseteq A#} by the directed subset {#U' = U\cup \brc{\bot}#}; the inclusion {#U\subseteq U'#} is clearly cofinal, so the supremum of {#U'#} is also the supremum of {#U#}.
{{%/proof%}}
