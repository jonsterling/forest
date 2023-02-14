---
title: bottom-preserving maps vs. algebra morphisms
taxon: lemma
author: Jonathan Sterling
date: 2023-02-14T11:32:47Z
macros:
- include: jms-001E
---

Let {#M,N#} be two {#\LiftMon#}-algebras; then a morphism of dcpos {#\Mor{f}{UM}{UN}#} is a homomorphism of algebras if and only if it preserves the [bottom element](jms-001V).

{{%proof "Constructive proof"%}}
It is clear that a homomorphism of algebras must preserve the bottom element. On the other hand, suppose that {#\Mor{f}{UM}{UN}#} preserves the bottom element to check that the following diagram commutes:
```render-latex
\DiagramSquare{
  nw = TUM,
  ne = TUN,
  sw = UM,
  se = UN,
  north = Tf,
  south = f,
  west = \alpha_M,
  east = \alpha_N,
}
```

Because both composites preserve the bottom element, it is enough to observe that they both take {#u\in TUM#} to the supremum of the following *semi*directed subset:

{##\brc{n\in UN\mid \exists m:UM. u=\eta_{UM}m \land n=fm}##}


{{%/proof%}}
