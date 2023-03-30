---
title: "§ 8.2: type refinements and program extraction"
author:
- jonmsterling
date: 2023-01-19T20:57:12-05:00
macros: 
- include: base-macros
- name: Rfn
  args: 2
  body: '{#1}\sqsubset{#2}'
  doc: the refinement relation
---

The modal language of synthetic Tait computability promises a new and more abstract account of *refinement types* and *program extraction* via a phase distinction between *computation* and *specification*. Refinement types are often thought of as a kind of subtype, but there is a fundamental difference: when {#\Rfn{\phi}{A}#} and {#\Rfn{\psi}{B}#} are refinements of types {#A#} and {#B#} respectively, then {#\phi\to\psi#} refines {#A\to B#}. In contrast, subtyping laws for function spaces are contravariant in the domain. The refinements available in synthetic Tait computability are moreover proof-relevant in the sense that specification-level code can contain data in addition to properties. The application to proof-relevant refinement types is employed by [Niu, Sterling, Grodin, and Harper](niu-sterling-grodin-harper-2022) to develop a logical framework for simultaneously verifying behavior and complexity of functional programs.
