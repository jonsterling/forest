---
journal: Logical Methods in Computer Science
title: Displayed Categories
doi: 10.23638/LMCS-15%281%3A20%292019
date: 2019-03-05
author:
- Benedick Ahrens
- Peter LeFanu Lumsdaine
---

We introduce and develop the notion of *displayed categories*.   A displayed category over a category $C$ is equivalent to "a category $D$ and functor $F : D \to C$, but instead of having a single collection of "objects of $D$" with a map to the objects of $C$, the objects are given as a family indexed by objects of $C$, and similarly for the morphisms. This encapsulates a common way of building categories in practice, by starting with an existing category and adding extra data\/properties to the objects and morphisms.   The interest of this seemingly trivial reformulation is that various properties of functors are more naturally defined as properties of the corresponding displayed categories. Grothendieck fibrations, for example, when defined as certain functors, use equality on objects in their definition. When defined instead as certain displayed categories, no reference to equality on objects is required. Moreover, almost all examples of fibrations in nature are, in fact, categories whose standard construction can be seen as going via displayed categories.   We therefore propose displayed categories as a basis for the development of fibrations in the type-theoretic setting, and similarly for various other notions whose classical definitions involve equality on objects.   Besides giving a conceptual clarification of such issues, displayed categories also provide a powerful tool in computer formalisation, unifying and abstracting common constructions and proof techniques of category theory, and enabling modular reasoning about categories of multi-component structures. As such, most of the material of this article has been formalised in Coq over the UniMath library, with the aim of providing a practical library for use in further developments.
