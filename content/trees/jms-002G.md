---
title: the positively generated core of a dcpo
taxon: construction
tags: 
- uf
author:
- Jonathan Sterling
date: 2023-02-16T16:55:39Z
macros:
- include: jms-001M
- name: PGCore
  body: '#1\Sup{\mathit{pg}}'
  args: 1
---

Let {#A#} be a pointed dcpo; the subposet {#\PGCore{A}\subseteq{A}#}
spanned by [positively generated elements](jms-002F) is closed under directed suprema, and thus gives rise to a subdcpo that we shall refer to as the *positively generated core* of {#A#}.

{{%proof%}}
Let {#I\subseteq A#} be a directed subset whose elements are all [positively generated](jms-002F). We must check that the supremum {#\bigsqcup{I}#} is positively generated, i.e. {#\bigsqcup{I} \sqsubseteq \bigsqcup_{p:\IsPos\,\bigsqcup{I}}\bigsqcup{I}#}. 
 Fixing {#i\in I#}, we must check that {#i\sqsubseteq \bigsqcup_{p:\IsPos\,{\bigsqcup{I}}}\bigsqcup{I}#}. As {#i#} is positively generated, we have {#i\sqsubseteq\bigsqcup_{p:\IsPos\,{i}}i#}. As [positivity is upward-closed](jms-0029), we have {#\IsPos\,{i}\sqsubseteq\IsPos\,\bigsqcup{I}#}. Therefore, we deduce {#i\sqsubseteq \bigsqcup_{p:\IsPos\,i}i \sqsubseteq  \bigsqcup_{p:\IsPos\,{\bigsqcup{I}}}\bigsqcup{I}#}.
{{%/proof%}}
