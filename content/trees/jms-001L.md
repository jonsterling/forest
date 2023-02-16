---
title: "connected colimits of lift-algebras"
taxon: lemma
author: Jonathan Sterling
date: 2023-02-12T12:58:45Z
macros: 
- include: jms-001E
- name: ICat
  args: 0
  body: '\mathcal{I}'
  doc: 'A given indexing category'
---

Let {#\LiftM=\prn{\Lift,\eta,\mu}#} be the lifting monad on dcpos; the Eilenberg--Moore category {#\LiftAlg#} is closed under connected colimits, and these colimits are [created](jms-001H) by the forgetful functor {#\Mor{\ULiftM}{\LiftAlg}{\DCPO}#}.

{{%proof "Constructive proof"%}}
This follows from the following facts:
1. The category of dcpos is (even constructively) known to be cocomplete.
2. [Lifting preserves connected colimits](jms-001F).
3. [The forgetful functor {#\Mor{\ULiftM}{\LiftAlg}{\DCPO}#} creates whatever colimits {#\Lift#} preserves](jms-001K).
{{%/proof%}}
