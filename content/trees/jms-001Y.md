---
title: monadicity of pointed dcpos
taxon: corollary
author: Jonathan Sterling
date: 2023-02-14T11:41:18Z
macros:
- include: jms-001E
---

The category of {#\LiftM#}-algebras and homomorphisms is (canonically) equivalent to the category of [pointed dcpos](jms-001S) and bottom-preserving morphisms of dcpos. It follows that [pointed](jms-001S) dcpos are *monadic* over dcpos.

{{%proof "Constructive proof"%}}
Having a bottom element and being an algebra are both *properties* of dcpos, because these structures are uniquely determined. Therefore, we will argue that [pointed dcpos](jms-001S) with bottom-preserving morphisms form the same *subcategory* of {#\DCPO#} as the category of algebras with algebra-preserving maps. We have already seen that pointed structure and algebra structure are interchangeable:

1. [Pointed dcpos are lift-algebras](jms-001T)
2. [Lift-algebras are pointed](jms-001V)

To finish, we recall that a morphism of dcpos [preserves algebra structure if and only if it preserves the bottom element](jms-001X).

{{%/proof%}}
