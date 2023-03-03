---
title: positivity = definedness in a lifted dcpo
taxon: lemma
author:
- Martín Escardó
- Jonathan Sterling
date: 2023-02-14T09:25:54Z
macros:
- include: jms-001E
---

The [positive](jms-001M) elements of a lifted dcpo {#\Lift{A}#} are exactly the *defined* elements, i.e. those lying in the image of {#\Mor{\eta}{A}{\Lift{A}}#}.

{{%proof%}}
Let {#a\in A#} be an element of the dcpo {#A#}. To show that {#\eta_A a#} is positive, we fix a semidirected subset {#U\subseteq \Lift{A}#} such that {#\eta_A a\sqsubseteq \bigsqcup U#} to show that {#U#} is inhabited. The inequality implies that {#\top\sqsubseteq \exists u\in U. u{\downarrow}#}, so we know that {#U#} is inhabited.

Conversely, suppose that {#u\in\Lift{A}#} is a positive element. Let {#U#} be the semidirected family {#\brc{v \mid v = u \land u\downarrow}#}; we evidently have {#u\sqsubseteq \bigsqcup{U}#}, so {#U#} is inhabited. Thus it follows that {#u#} is defined.
{{%/proof%}}
