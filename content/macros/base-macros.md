---
title: Basic macros
macros:
- name: Con
  args: 1
  body: '\mathsf{#1}'
- name: BoldSymbol
  args: 1
  body: '\boldsymbol{#1}'
- name: prn
  args: 1
  body: '(#1)'
- name: brc
  args: 1
  body: '\{#1\}'
- name: brk
  args: 1
  body: '[#1]'
- name: gl
  args: 1
  body: '\langle #1 \rangle'
- name: Sub
  args: 1
  body: '_{#1}'
- name: Sup
  args: 1
  body: '^{#1}'
- name: Sl
  args: 2
  body: '{#1}\Sub{/#2}'
  doc: the slice of a category over an object
- name: TotCat
  args: 1
  body: '\widetilde{#1}'
  doc: the total category of a displayed category
- name: Hom
  args: 3
  body: '\mathbf{hom}\Sub{#1}(#2,#3)'
  doc: the collection of morphisms between two objects
- name: Ob
  args: 1
  body: '\mathbf{ob}\Sub{#1}'
  doc: the collection of objects of a category
- name: Idn
  args: 1
  body: '1\Sub{#1}'
  doc: the identity map on an object
- name: SET
  args: 0
  body: '\mathbf{Set}'
  doc: 'the category of sets'
- name: FAM
  args: 1
  body: '\boldsymbol{\mathcal{F}}\Sub{#1}'
  doc: the family fibration
- name: InvImg
  args: 1
  body: '#1\Sup{*}'
- name: DirImg
  args: 1
  body: '#1\Sub{*}'
- name: SelfIx
  args: 1
  body: '\underline{#1}'
  doc: 'the fundamental self-indexing of a category'
- name: OpCat
  args: 1
  body: '#1\Sup{\mathsf{o}}'
  doc: 'the opposite (fibered) category'
- name: ObjTerm
  args: 1
  body: '\mathbf{1}\Sub{#1}'
- name: Extrn
  args: 1
  body: '\brk{#1}'
  doc: the externalization of an internal category
- name: FullSubfib
  args: 1
  body: '\mathbf{Full}\prn{#1}'
  doc: the full subfibration associated to a displayed object
- name: tick
  args: 0
  body: "'"
- name: Cod
  args: 1
  body: '\Con{cod}\Sub{#1}'
  doc: the codomain functor
- name: CoSl
  args: 2
  body: '#2\Sup{\setminus #1}'
  doc: the coslice of a category under an object
- name: DispTo
  args: 1
  body: '\mathrel{{\to}\Sub{#1}}'
  doc: to denote an arrow displayed over another arrow
---

This tree defines the basic notational macros used across [](jms-0001).
