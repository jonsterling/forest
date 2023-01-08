---
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
- name: TotCat
  args: 1
  body: '\widetilde{#1}'
- name: Hom
  args: 3
  body: '\mathbf{hom}\Sub{#1}(#2,#3)'
- name: Ob
  args: 1
  body: '\mathbf{ob}\Sub{#1}'
- name: Idn
  args: 1
  body: '1\Sub{#1}'
- name: SET
  args: 0
  body: '\mathbf{Set}'
- name: FAM
  args: 1
  body: '\boldsymbol{\mathcal{F}}\Sub{#1}'
- name: InvImg
  args: 1
  body: '#1\Sup{*}'
- name: DirImg
  args: 1
  body: '#1\Sub{*}'
- name: SelfIx
  args: 1
  body: '\underline{#1}'
- name: OpCat
  args: 1
  body: '#1\Sup{\mathsf{o}}'
- name: ObjTerm
  args: 1
  body: '\mathbf{1}\Sub{#1}'
- name: Extrn
  args: 1
  body: '\brk{#1}'
- name: FullSubfib
  args: 1
  body: '\mathbf{Full}\prn{#1}'
- name: tick
  args: 0
  body: "'"
- name: Cod
  args: 1
  body: '\Con{cod}\Sub{#1}'
- name: CoSl
  args: 2
  body: '#2\Sup{\setminus #1}'
---
