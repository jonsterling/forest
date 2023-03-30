---
title: the two notions of positivity coincide for pointed dcpos
taxon: corollary
tags: 
- uf
author:
- jonmsterling
date: 2023-02-21T13:19:01-05:00
macros: 
- include: jms-002P
---

Let {#A#} be a [pointed](jms-001S) dcpo. Then an element {#x:A#} is a [positive element of the pointed dcpo](jms-001M) if and only if {#\Mor{x}{\ObjTerm{}}{A}#} is a [positive element in the dominion](jms-002R) {#\mathcal{O}#} of Scott-open immersions of dcpos.

{{%proof%}}
We first observe that the [latter condition](jms-002R) is equivalent to the following:

> For any {#u\in LA#}, if {#a\sqsubseteq \bigsqcup_{p: u{\downarrow}}u[p]#} then {#u{\downarrow}=\top#}.

This follows from the [(constructive) characterization](https://github.com/jonsterling/coq-domains/blob/main/theories/Path.v) of the [path](jms-002Q) order in dcpos. Therefore, our result follows from our [earlier characterization](jms-002T) of positive elements of a pointed dcpo in terms of partial elements.
{{%/proof%}}
