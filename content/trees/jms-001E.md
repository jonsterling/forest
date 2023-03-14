---
title: constructive domain theory
date: 2023-02-08T11:43:05Z
tags:
- uf
macros:
- include: base-macros
- name: Lift
  args: 0
  body: '\Con{L}'
  doc: the lifting endofunctor on dcpos
- name: DCPO
  args: 0
  body: '\Con{dcpo}'
  doc: the category of directed-complete partial orders
- name: LiftM
  doc: the lifting monad
  args: 0
  body: '\mathbb{L}'
- name: ULiftM
  args: 0
  body: '\Con{U}\Sup{\LiftM}'
  doc: 'the forgetful functor corresponding to the lifting monad'
- name: FLiftM
  args: 0
  body: '\Con{F}\Sup{\LiftM}'
  doc: 'the free lift monad algebra functor'
- name: LiftAlg
  args: 0
  doc: the category of lift monad algebras
  body: '\DCPO\Sup{\LiftM}'
---

I am accumulating an understanding of constructive domain theory --- that is, the domain theory that can be carried out in an elementary topos with a natural numbers object. These notes are based on the work of [Tom de Jong](dejong-2023-thesis) and Martín Escardó; these notes, however, assume the propositional resizing principle whereas de Jong and Escardó explore a predicative version domain theory based on large and locally small domains.

![](jms-002U)

![](jms-001W)

![](jms-001Q)
