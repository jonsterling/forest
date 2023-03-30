---
title: Domain Theory in Constructive and Predicative Univalent Foundations
taxon: reference
author:
- tomdejong
date: 2023-01-29
doi: 10.48550/arXiv.2301.12405
publisher: University of Birmingham
bibtex: |
  @misc{dejong-2023-thesis,
    doi = {10.48550/ARXIV.2301.12405},
    url = {https://arxiv.org/abs/2301.12405},
    author = {de Jong, Tom},
    keywords = {Logic in Computer Science (cs.LO), Logic (math.LO), FOS: Computer and information sciences, FOS: Computer and information sciences, FOS: Mathematics, FOS: Mathematics},
    title = {Domain Theory in Constructive and Predicative Univalent Foundations},
    publisher = {arXiv},
    year = {2023},
    copyright = {Creative Commons Attribution 4.0 International}
  }
---

 We develop domain theory in constructive and predicative univalent foundations (also known as homotopy type theory). That we work predicatively means that we do not assume Voevodsky's propositional resizing axioms. Our work is constructive in the sense that we do not rely on excluded middle or the axiom of (countable) choice. Domain theory studies so-called directed complete posets (dcpos) and Scott continuous maps between them and has applications in programming language semantics, higher-type computability and topology. A common approach to deal with size issues in a predicative foundation is to work with information systems, abstract bases or formal topologies rather than dcpos, and approximable relations rather than Scott continuous functions. In our type-theoretic approach, we instead accept that dcpos may be large and work with type universes to account for this. A priori one might expect that complex constructions of dcpos result in a need for ever-increasing universes and are predicatively impossible. We show that such constructions can be carried out in a predicative setting. We illustrate the development with applications in the semantics of programming languages: the soundness and computational adequacy of the Scott model of PCF and Scott's {#D\infty#} model of the untyped {#\lambda#}-calculus. We also give a predicative account of continuous and algebraic dcpos, and of the related notions of a small basis and its rounded ideal completion. The fact that nontrivial dcpos have large carriers is in fact unavoidable and characteristic of our predicative setting, as we explain in a complementary chapter on the constructive and predicative limitations of univalent foundations. Our account of domain theory in univalent foundations is fully formalised with only a few minor exceptions. The ability of the proof assistant Agda to infer universe levels has been invaluable for our purposes. 
