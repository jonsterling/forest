---
title: the wild constant functor
author:
- Jonathan Sterling
taxon: example
tags:
- uf
date: 2023-03-14T11:29:08+01:00
macros:
- include: jms-003G
- name: CCat
  args: 0
  body: '\mathcal{C}'
  scope: private
- name: DCat
  args: 0
  body: '\mathcal{D}'
  scope: private
---

Let {#\CCat#} and {#\DCat#} be [wild categories](jms-0037), and let {#D:\Ob{\DCat}#} be an object of {#\DCat#}. We define the *constant 0-functor* on {#D:\Ob{\DCat}#} out of {#\CCat#} to be the [0-functor](jms-0038) {#\Mor{\Delta D}{\CCat}{\DCat}#} defined as follows:

{##
\begin{align*}
\Ob{\Delta D}C &:\equiv D\\
\Homs{\Delta D} f &:\equiv \Idn{D}
\end{align*}
##}

The above may be extended to a [wild 1-semi-functor](jms-003F) as follows:

{##
\Con{seq}_{F}\,f\,g :\equiv \Refl
##}