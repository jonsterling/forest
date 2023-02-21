---
title: characterization of positivity in terms of partial elements
taxon: theorem
author: Jonathan Sterling
date: 2023-02-21T13:29:42-05:00
macros:
- include: jms-001M
---

Let {#A#} be a [pointed](jms-001S) dcpo. Then an element {#x:A#} is [positive](jms-001M) if and only if for any partial element {#u\in LA#} such that {#a\leq\bigsqcup_{p:u{\downarrow}}u[p]#}, we have {#u{\downarrow}=\top#}.

{{%proof "Constructive proof"%}}
Therefore, we first suppose that any {#u\in LA#} is defined supposing {#a\leq\bigsqcup_{p:u{\downarrow}}u[p]#} to check that {#a#} is [positive](jms-001M). Fixing a semidirected subset {#I\subseteq A#} such that {#a\leq \bigsqcup{I}#}, we must show that {#I#} is inhabited.
We consider the partial element {#u=\prn{\exists i\in I. \top, \lambda\_.\bigsqcup{I}}:LA#}, and observe that {#\bigsqcup{I}=\bigsqcup_{i\in I} \bigsqcup{I}=\bigsqcup_{p:u{\downarrow}}u[p]#}, and so we have {#a\leq \bigsqcup_{p:u{\downarrow}}u[p]#} and thus it follows that {#u{\downarrow}=\top#} and so {#I#} is inhabited.

Conversely, if {#a#} is [positive](jms-001M), it follows that any partial element {#u#} is defined when {#a\leq\bigsqcup_{p:u{\downarrow}}u[p]#}, because the subset {#\brc{y\mid y=x\land u{\downarrow}}#} is semidirected.
{{%/proof%}}
