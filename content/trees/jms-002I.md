---
title: bottom and non-bottom elements are non-negatively generated
taxon: example
tags: 
- uf
author:
- jonmsterling
date: 2023-02-16T17:32:34Z
macros:
- include: jms-001M
---

In a pointed dcpo, any non-bottom element is non-negatively generated.
1. The bottom element {#\bot#}.
2. Any compact element {#a:A#} for which {#\lnot\prn{a=\bot}#} holds.

Hence, any element {#a#} for which it is decidable whether {#a=\bot#} is non-negatively generated.

{{%proof%}}
The bottom element is clearly non-negatively generated, as it lies beneath any element. Now fix {#a:A#} and assume {#\lnot\prn{a=\bot}#}; we must check that {#a \sqsubseteq \bigsqcup_{p:\lnot\prn{a=\bot}}a#} but the latter is equal to {#a#}.
{{%/proof%}}
