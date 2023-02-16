---
title: constructive domain theory
author: Jonathan Sterling
date: 2023-02-08T11:43:05Z
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

![](jms-001R)
![](jms-001W)
![](jms-001Q)
