---
title: identity system
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-22T08:47:57+01:00
macros:
- include: jms-003G
---

[Rijke](rijke-2022) defines an *identity system*  on an element {#a:A#} to consist of a family of types {#\mathcal{I}#} over {#A#} equipped with the following data:

1. a distinguished element {#\Refl\Sub{\mathcal{I}}:\mathcal{I}a#};
2. for each family {#P#} over {#\mathcal{I}#}, a dependent function {#J\Sub{\mathcal{I}}P : \Prod{p:P\prn{a,\Refl\Sub{\mathcal{I}}}}\Prod{x:A}\Prod{q:\mathcal{I}x}P\prn{x,q}#} and a dependent function {#\beta\Sub{\mathcal{I}}P : \Prod{p:P\prn{a,\Refl\Sub{\mathcal{I}}}}\TpIdn{P\prn{a,\Refl\Sub{\mathcal{I}}}}{J\Sub{\mathcal{I}}P\,p\,a\,\Refl\Sub{\mathcal{I}}}{p}#}.
