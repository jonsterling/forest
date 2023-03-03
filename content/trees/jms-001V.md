---
title: lift-algebras are pointed
taxon: lemma
author:
- Jonathan Sterling
date: 2023-02-14T11:21:13Z
macros:
- include: jms-001E
---

Let {#\prn{A,\alpha}#} be a {#\LiftM#}-algebra; then the underlying dcpo {#A#} is [pointed](jms-001S).


{{%proof%}}
To define the bottom element of {#A#}, we choose {#\alpha\prn{\bot, \lambda\_.\star}#}. Fixing {#n\in A#}, we must check that {#\alpha\prn{\bot, \lambda\_.\star}\sqsubseteq n#}. Because {#\Lift#} is a Kock–Zöberlein monad and thus we have {#\alpha\dashv\eta_{A}#}, it is equivalent to observe that {#\prn{\bot, \lambda\_.\star}\sqsubseteq \eta_{A}n#}.
{{%/proof%}}
