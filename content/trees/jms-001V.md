---
title: lift-algebras are pointed
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T11:21:13Z
macros:
- include: jms-001E
---

Let {#M=\prn{UM,\alpha_M}#} be a {#\LiftMon#}-algebra; then the underlying dcpo {#UM#} is [pointed](jms-001S).


{{%proof "Constructive proof"%}}

To define the bottom element of {#UM#}, we choose {#\alpha_M\prn{\bot, \lambda\_.\star}#}. Fixing {#n\in UM#}, we must check that {#\alpha_M\prn{\bot, \lambda\_.\star}\leq n#}. Because {#\Lift#} is a Kock–Zöberlein monad and thus we have {#\alpha_M\dashv\eta_{UM}#}, it is equivalent to observe that {#\prn{\bot, \lambda\_.\star}\leq \eta_{UM}n#}.

{{%/proof%}}
