---
title: colimits created by the forgetful functor
author: Jonathan Sterling
date: 2023-02-12T11:24:34Z
taxon: theorem
macros:
- include: jms-001G
---

Let {#\CCat#} be a category and let {#\TMon = \prn{T,\eta,\mu}#} be a monad on {#\CCat#}, writing {#\Mor{U}{\EM}{\CCat}#} for the forgetful functor from the Eilenberg--Moore category {#\EM#}. If {#T#} preserves colimits of {#\ICat#}-figures for a given small category {#\ICat#}, then {#\Mor{U}{\EM}{\CCat}#} [creates](jms-001H) colimits of {#\ICat#}-figures.

{{%proof%}}
Let {#\Mor{X_\bullet}{\ICat}{\EM}#} be a diagram such that {#\ICat\xrightarrow{X_\bullet}\EM\xrightarrow{U}\CCat#} has a (co)limit cocone {#\Mor{c_\bullet}{UX_\bullet}{\brc{C}}#}. Letting {#\bar{C}=\prn{C,\alpha_{\bar{C}}}#} be the [canonical algebra structure on the colimit apex](jms-001J) {#C#} such that {#\Mor{c_\bullet}{UX_\bullet}{\brc{C}}#} lifts to a cocone of algebras. In that case, we would conclude that this cocone is universal because {#U#} [reflects colimits of {#\ICat#}-figures](jms-001G).
