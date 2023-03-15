---
title: homotopies between reflection algebra homomorphisms
taxon: definition
author:
- Jonathan Sterling
date: 2023-03-15T16:03:10+01:00
macros:
- include: jms-003G
---

Given a pair of [reflection algebras](jms-003O) {#X,Y:\Comma{\UU}{A}#} and a pair of [homomorphisms](jms-003O) {#f,g : X\multimap Y#}, a *homotopy* from {#f#} to {#g#} is defined to be a homotopy {#\phi : Uf\sim Ug#} between the underlying functions together with a dependent homotopy {#\bar{\phi} : \Prod{a:A}\TpIdn{\TpIdn{Y}{f\prn{\eta\Sub{X}a}}{\eta\Sub{Y}a}}{\phi\prn{\eta\Sub{X}a}\bullet \eta\Sub{g}a}{\eta\Sub{f}a}#}.

We will write {#f\approx g#} for the type of homotopies from {#f#} to {#g#}.
