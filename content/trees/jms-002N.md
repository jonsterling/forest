---
title: positively generated elements are non-negatively generated
taxon: lemma
author: Jonathan Sterling
date: 2023-02-16T18:10:46Z
macros:
- include: jms-001M
---

Let {#a#} be a [positively generated element](jms-002F) of a [pointed](jms-001S) dcpo {#A#}. Then {#a#} is also [non-negatively generated](jms-002J).

{{%proof "Constructive proof"%}}
We must check that {#a\leq \bigsqcup_{p:\lnot\prn{a = \bot}}a#}. By assumption, it suffices to check that {#\bigsqcup_{p:\IsPos\,a}a\leq\bigsqcup_{p:\lnot\prn{a=\bot}}a#}, which follows because [the bottom element is not positive](jms-002H).
{{%/proof%}}
