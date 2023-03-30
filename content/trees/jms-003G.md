---
title: macros for dependent type theory
author:
- jonmsterling
date: 2023-03-14T14:41:33+01:00
macros:
- include: base-macros
- name: Refl
  args: 0
  docs: the reflexivity element for the identity type
  body: '\Con{refl}'
- name: UU
  args: 0
  body: '\mathcal{U}'
- name: VV
  args: 0
  body: '\mathcal{V}'
- name: TpIdn
  args: 3
  body: '{#2} =_{#1} {#3}'
- name: TpHtpy
  args: 3
  body: '{#2} \sim_{#1} {#3}'
- name: Prod
  args: 1
  body: '{\textstyle\prod_{#1}}'
- name: Sum
  args: 1
  body: '{\textstyle\sum_{#1}}'
---

