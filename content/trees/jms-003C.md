---
title: the wild identity functor
taxon: example
tags: 
- uf
author:
- jonmsterling
date: 2023-03-14T11:24:08+01:00
macros:
- include: base-macros
- include: jms-003G
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
---

Let {#\CCat#} be a [wild category](jms-0037); the *identity 0-functor* {#\Mor{\Idn{\CCat}}{\CCat}{\CCat}#} on {#\CCat#} is defined as follows:
{##
\begin{aligned}
\Ob{\Idn{\CCat}}A &:\equiv A\\ 
\Homs{\Idn{\CCat}}f &:\equiv f
\end{aligned}
##}

The above may be extended to a [wild 1-semi-functor](jms-003F) as follows:
{##
  \Con{seq}_{F}\,f\,g :\equiv \Refl
##}
