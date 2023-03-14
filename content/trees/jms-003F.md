---
title: wild 1-semi-functor
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-14T14:34:41+01:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
- name: DCat
  args: 0
  body: '\mathcal{D}'
  scope: private
---

Let {#\CCat#} and {#\DCat#} be two [wild categories](jms-0037). A *wild 1-semi-functor* from {#\CCat#} to {#\DCat#} is given by a wild 0-functor {#F : \CCat\to\DCat#} equipped with, for each {#f:\Hom{\CCat}{C}{D}#} and {#g : \Hom{\CCat}{C}{D}#}, an identification {#\Con{seq}_F\,f\,g : \Homs{F}\prn{f;g} = \Homs{F}{f};\Homs{G}{g} #}.