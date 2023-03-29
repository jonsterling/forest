---
title: incoherent naturality structure
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-15T15:43:55+01:00
macros:
- include: jms-0036
---

Let {#\UU\in\VV#} be an impredicative universe pair with {#A:\VV#} a type in the outer universe, so that we may form the [product](jms-003Q) {#\Prod{X:\Comma{A}{\UU}}X#} of all [reflection algebras](jms-003O) in {#\UU#} under {#A#}. To express the data of the components of a given {#u:\Prod{X:\Comma{A}{\UU}}X#} being preserved by all [homomorphisms](jms-003O) and thus representing "cones" over the identity functor on {#\Comma{A}{\UU}#}, we define a [displayed reflection algebra](jms-003R) {#\IncohNatStr#} of "incoherent naturality structures" over {#\Prod{X:\Comma{A}{\UU}}{X}#} as follows:

{##
  \begin{array}{l}
    \IncohNatStr[u] :\equiv 
    \Prod{\brc{X,Y:\Comma{A}{\UU}}}
    \Prod{f : X\multimap Y}
    \TpIdn{Y}{f \prn{uX}}{uY}
    \\
    \bar{\eta}\Sub{\IncohNatStr}\, a\, f :\equiv \eta\Sub{f}a
  \end{array}
##}

Given an element {#u:\widetilde{\IncohNatStr}#}, we will write {#\epsilon\Sub{u} : \Prod{X:\Comma{A}{\UU}}X#} for the first component {#\pi\Sub{\IncohNatStr}u#} and {#\vartheta\Sub{u} : \IncohNatStr[\epsilon\Sub{u}]#} for the second component.

This definition is equivalent to one given by [Awodey, Frey, and Speight](awodey-frey-speight-2018).
