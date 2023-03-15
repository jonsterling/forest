---
title: the product of reflection algebras
taxon: definition
tags:
- uf
author:
- Jonathan Sterling
date: 2023-03-15T14:57:22+01:00
macros:
- include: jms-003G
---

Given a type {#K#} and a family of [reflection algebras](jms-003O) {#X : K\to \Comma{A}{\UU}#} such that the dependent product {#\Prod{k:K}U\prn{Xk}#} lies in {#\UU#}, we may define the product of product of [reflection algebras](jms-003O) {#\Prod{k:K}Xk#} to have the following structure map:

{##
  \begin{array}{l}
    \eta\Sub{\Prod{k:K}Xk} : A \to \Prod{k:K}{Xk}\\
    \eta\Sub{\Prod{k:K}Xk} a :\equiv \lambda k:K.\, \eta\Sub{Xk}a
  \end{array}
##}
