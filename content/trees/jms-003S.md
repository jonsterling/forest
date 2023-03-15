---
title: the total reflection algebra
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-15T15:17:01+01:00
macros:
- include: jms-003G
---

Given a [displayed reflection algebra](jms-003R) {#Y#} over a [reflection algebra](jms-003O) {#X:\Comma{A}{\UU}#}, we may define the *total reflection algebra* {#\widetilde{Y}:\Comma{A}{\UU}#} of {#Y#} as follows:

{##
  \begin{array}{l}
    U\widetilde{Y} :\equiv \Sum{x:Ux}Y[x]\\
    \eta\Sub{\widetilde{Y}}a :\equiv \prn{\eta\Sub{X}a,\bar{\eta}\Sub{Y}a}
  \end{array}
##}

The projection function {#\Mor{\pi_1}{U\widetilde{Y}}{UX}#} extends to a [homomorphism of reflection algebras](jms-003O) {#\pi\Sub{Y}:\widetilde{Y}\multimap X#} as follows:

{##
  \begin{array}{l}
    \pi\Sub{Y} \prn{x,y} :\equiv x\\
    \alpha\Sub{\pi\Sub{Y}} a :\equiv \Refl
  \end{array}
##}
