---
title: homotopies between reflection algebra homomorphisms
taxon: definition
author:
- Jonathan Sterling
date: 2023-03-15T16:03:10+01:00
macros:
- include: jms-003G
---

Given a pair of [reflection algebras](jms-003O) {#X,Y:\Comma{\UU}{A}#} and a pair of [homomorphisms](jms-003O) {#f,g : X\multimap Y#}, a *homotopy* from {#f#} to {#g#} is defined to be a homotopy {#\phi : \TpHtpy{X\to Y}{Uf}{Ug}#} between the underlying functions together with a witness {#\bar{\phi}#}  of the following coherence:

{##
   \bar\phi :
   \Prod{a:A}
   \TpIdn{
      \TpIdn{Y}{g\prn{\eta\Sub{X}a}}{\eta\Sub{Y}a}
    }{
      \eta\Sub{g}a
   }{
      \eta\Sub{f}a\bullet \phi\prn{\eta\Sub{X}a}
   }
##}

We shall write {#\TpHtpy{X\multimap Y}{f}{g}#} for the type of homotopies from the homomorphism {#f#} to the homomorphism {#g#}.
