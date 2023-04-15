---
title: uniqueness of downshifts
author:
- jonmsterling
date: 2023-04-15T16:28:58+02:00
taxon: lemma
macros:
- include: jms-004M
---

Let {#N\in\mathcal{D}#} be a [negative](jms-004B) object in a [positively univalent deductive system](jms-004Q); then the type of [downshift structures](jms-004P) on {#N#} is a proposition. In this case, we may refer to the property of {#N#} *having a downshift*.

{{%proof%}}
Let {#w_0:N\vdash P_0#} and {#w_1:N\vdash P_1#} be two [downshift structures](jms-004P) on {#N#}, whose inverse unwrapping maps are written {#u_0,u_1#} respectively. All four maps {#w_0,w_1,u_0,u_1#} are thunkable: the wrapping maps are thunkable by definition, and the unwrapping maps are thunkable because they are valued in a negative object. Thus we have a thunkably invertible thunkabl map {#u_0;w_1 : P_0\vdash P_1#}; because {#\mathcal{D}#} is assumed [positively univalent](jms-004Q), we may identify {#P_0#} and {#P_1#} along this isomorphism. It remains to show that this isomorphism is a homomorphism of downshift structures, i.e. we have {#w_0;(u_0;w_1) = w_1#}. This holds because {#w_0#} is thunkable and inverse to {#u_0#}.
{{%/proof%}}
