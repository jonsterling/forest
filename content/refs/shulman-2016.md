---
title: Idempotents in intensional type theory
taxon: reference
journal: Logical Methods in Computer Science
doi: 10.2168/LMCS-12%283%3A9%292016
author:
- mikeshulman
date: 2023-03-15T10:39:40+01:00
bibtex: |
  @article{shulman-2016,
    author = {Shulman, Michael},
    year = {2016},
    month = apr,
    doi = {10.2168/LMCS-12(3:9)2016},
    issue = {3},
    journal = {Logical Methods in Computer Science},
    title = {{Idempotents in intensional type theory}},
    volume = {12},
  }
---

  We study idempotents in intensional Martin-Löf type theory, and in particular the question of when and whether they split. We show that in the presence of propositional truncation and Voevodsky's univalence axiom, there exist idempotents that do not split; thus in plain MLTT not all idempotents can be proven to split. On the other hand, assuming only function extensionality, an idempotent can be split if and only if its witness of idempotency satisfies one extra coherence condition. Both proofs are inspired by parallel results of Lurie in higher category theory, showing that ideas from higher category theory and homotopy theory can have applications even in ordinary MLTT.
  
  Finally, we show that although the witness of idempotency can be recovered from a splitting, the one extra coherence condition cannot in general; and we construct "the type of fully coherent idempotents", by splitting an idempotent on the type of partially coherent ones. Our results have been formally verified in the proof assistant Coq. 
