---
title: the identity 0-functor
taxon: example
tags: 
- uf
author:
- Jonathan Sterling
date: 2023-03-14T11:24:08+01:00
macros:
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
---

Let {#\CCat#} be a [wild category](jms-0037); the *identity 0-functor* {#\Mor{\Idn{\CCat}}{\CCat}{\CCat}#} on {#\CCat#} is defined as follows:
{##
\begin{align*}
\Ob{\Idn{\CCat}}A &:\equiv A\\ 
\Homs{\Idn{\CCat}}f &:\equiv f
\end{align*}
##}