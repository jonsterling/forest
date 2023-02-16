---
title: bottom-preserving maps vs. algebra morphisms
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T11:32:47Z
macros:
- include: jms-001E
---

Let {#\prn{A,\alpha}#} and {#\prn{B,\beta}#} be two {#\LiftM#}-algebras; then a morphism of dcpos {#\Mor{f}{A}{B}#} is a homomorphism of algebras if and only if it preserves the [bottom element](jms-001V).

{{%proof "Constructive proof"%}}
It is clear that a homomorphism of algebras must preserve the bottom element. On the other hand, suppose that {#\Mor{f}{A}{B}#} preserves the bottom element to check that the following diagram commutes:
```render-latex
\DiagramSquare{
  nw = TA,
  ne = TB,
  sw = A,
  se = B,
  north = Tf,
  south = f,
  west = \alpha,
  east = \beta,
}
```

Because both composites preserve the bottom element, it is enough to observe that they both take {#u\in TA#} to the supremum of the following *semi*directed subset:

{##\brc{n\in B\mid \exists m:A. u=\eta_{A}m \land n=fm}##}


{{%/proof%}}
