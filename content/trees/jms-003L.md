---
title: pre-idempotent in a wild category
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-15T10:33:16+01:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
---

Let {#\CCat#} be a [wild category](jms-0037); a *pre-idempotent* on an object {#A:\Ob{\CCat}#} is defined to be a morphism {#f:\Hom{\CCat}{A}{A}#} together with an identification {#\phi : f;f = f#}.
