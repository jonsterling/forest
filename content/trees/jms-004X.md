---
title: uniqueness of upshifts
taxon: lemma
author:
- jonmsterling
date: 2023-04-15T15:10:45+02:00
macros:
- include: jms-004M
---

Let {#P\in\mathcal{D}#} be a [positive](jms-004B) object in a [negatively univalent deductive system](jms-004S); then the type of [upshift structures](jms-004M) on {#P#} is a proposition. In this case, we may refer to the property of {#P#} *having an upshift*.

{{%proof%}}
Let {#f_0:M_0\vdash P#} and {#f_1:M_1\vdash P#} be two [upshift structures](jms-004M) on {#P#}, whose inverse delay maps are written {#d_0,d_1#} respectively. All four maps {#f_0,f_1,d_0,d_1#} are linear: the forcing maps are linear by definition, and the delay maps are linear because they come from a positive object. Thus we have a linearly invertible linear map {#f_0;d_1 : M_0\vdash M_1#}; because {#\mathcal{D}#} is assumed [negatively univalent](jms-004S), we may identify {#M_0#} and {#M_1#} along this isomorphism. It remains to show that this isomorphism is a homomorphism of upshift structures, i.e. we have {#(f_0;d_1);f_1 = f_0#}. This holds because {#f_1#} is linear and inverse to {#d_1#}.
{{%/proof%}}

**TODO:** Actually check the structure identity prinpciple implicitly used here.
