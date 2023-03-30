---
title: characterization of full associativity
tags:
- uf
author:
- jonmsterling
date: 2022-12-26T00:31:42+01:00
taxon: lemma
macros:
- include: base-macros
---

The following are equivalent for a deductive system {#\mathcal{D}#}:

1. every map is [linear](jms-004A);
2. every map is [thunkable](jms-004A);
3. every object is [positive](jms-004B);
5. every object is [negative](jms-004B);
6. the **cut** law is associative;
7. {#\mathcal{D}#} is a precategory.

{{%proof%}}
Supposing that every map is linear, we must check that each {#f:A\vdash B#} is thunkable. Fixing {#g:B\vdash C#} and {#h:C\vdash D#}, we must check that {#f;\prn{g;h} = \prn{f;g};h#}; as {#h#} is assumed linear, the equation holds. The converse holds by identical reasoning.

Clearly every object is positive if and only if every map is linear; likewise, every object is negative if and only if every map is thunkable.

Finally, when every map is both linear and thunkable, the cut law is associative --- but this is exactly the condition that the deductive system give rise to a precategory.
{{%/proof%}}
