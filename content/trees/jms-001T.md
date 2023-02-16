---
title: pointed dcpos are lift-algebras
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T10:23:48Z
macros:
- include: jms-001E
---

A [pointed dcpo](jms-001S) carries a (unique) {#\LiftM#}-algebra structure.

{{%proof "Constructive proof"%}}

The algebra structure is unique if it exists because {#\LiftM#} is a Kock–Zöberlein monad, i.e. a monad for which the structure maps of algebras are left adjoint to the unit in the order-enrichment. Therefore, it suffices to show that there merely exists an algebra structure {#\Mor{\alpha}{\Lift{A}}{A}#} for any pointed dcpo {#A#}.

We define the structure map {#\alpha#} to take {#u\in\Lift{A}#} to the [supremum of the semidirected subset](jms-001U) {#\brc{x\in A \mid u = \eta_Ax}#}, so we may write {#\alpha u = \bigsqcup_{p:u{\downarrow}}u[p]#}. It is not difficult to see that this assignment is continuous.

The unit law for the algebra is trivial. The multiplication law is verified as follows:
{## 
\alpha\prn{\Lift{\alpha} \prn{\phi,u}} 
= \alpha\prn{\phi, \alpha u}
= 
\bigsqcup_{p:u{\downarrow}}
\bigsqcup_{q:u[p]{\downarrow}}
u[p][q]
= \alpha\prn{\mu_A\prn{\phi,u}}
##}

{{%/proof%}}
