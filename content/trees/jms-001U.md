---
title: suprema of semidirected subsets in pointed dcpos
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T11:16:03Z
macros:
- include: jms-001E
---

A dcpo {#A#} is [pointed](jms-001S) if and only if it is closed under suprema of semidirected subsets.

{{%proof%}}
Suppose that {#A#} is closed under suprema of semidirected subsets. In particular, we may consider the supremum {#\bigsqcup\brc{}#} of the empty set. This is evidently the bottom element, using the universal property of the supremum.

Conversely, suppose that {#A#} is pointed and let {#I\subseteq A#} be semidirected. We may replace {#I\subseteq A#} by the directed subset {#I' = I\cup \brc{\bot}#}; the inclusion {#I\subseteq I'#} is clearly cofinal, so the supremum of {#I'#} is also the supremum of {#I#}.
{{%/proof%}}
