---
title: alternative presentation of semicoherence structure
taxon: remark
author:
- jonmsterling
date: 2023-03-15T16:30:01+01:00
macros:
- include: jms-003G
---


By the contractibility of singletons and our [characterization of paths between homomorphisms](jms-003Y), the definition of [semicoherence structures](jms-003W) is equivalent to following more direct formulation that avoids the additional cell {#\phi#}:

{##
  \Prod{\brc{X,Y,Z:\Comma{A}{\UU}}}
  \Prod{f : X\multimap Y}
  \Prod{g : Y\multimap Z}
  \Con{ap}\Sub{g} \prn{\vartheta\Sub{u} f} \bullet \vartheta\Sub{u} g 
  = \vartheta\Sub{u} \prn{f;g}
##}

Our reason for choosing the more complex definition involving {#\prn{h,\phi}#} is that the extra flexibility comes in handy in our results, as suggested by [Michael Shulman](mikeshulman) in private communication.
