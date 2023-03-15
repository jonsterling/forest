---
title: quasi-idempotent in a wild category
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-15T10:36:14+01:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
---

Let {#\CCat#} be a [wild category](jms-0037); a *quasi-idempotent* on an object {#A:\Ob{\CCat}#} is defined to be a [pre-idempotent](jms-003L) {#\prn{f,\phi}#} on {#A#} together with an identification {#\chi#} between {#f;\phi : f;\prn{f;f} = f;f#} and the following composite identification:

{##
  f;\prn{f;f} \xrightarrow{\Con{assoc}\Sub{\CCat}\,f\,f\,f} \prn{f;f};f \xrightarrow{\phi;f}
  f;f
##}
