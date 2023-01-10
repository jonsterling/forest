---
title: relationship to Street's fibrations
macros:
- include: frct-000A
---

In classical category theory, cartesian fibrations are defined by
[Grothendieck](sga-1) to be certain functors {#E\to B#} such that any morphism {#f:x\to Pv#}
in {#B#} lies strictly underneath a cartesian morphism in {#E#}. As we have
discussed, this condition cannot be formulated unless equality is meaningful
for the collection of objects of {#B#}.

There is an alternative definition of cartesian fibration due to [Street](street-1980) that avoids
equality of objects; here we require for each {#f:x\to Pv#} a cartesian morphism
{#h:\InvImg{f}v \to v#} together with an isomorphism {#\phi : P(\InvImg{f}v)\cong x#}
such that {#\phi^{-1};Ph = f#}.

By unrolling definitions, it is not difficult to see that the displayed
category {#P\Sub{\bullet}#} is a cartesian fibration in our sense if and only if the functor
{#P:E\to B#} was a fibration in Street's sense. Moreover, it can be seen that the
Grothendieck construction yields a *Grothendieck* fibration
{#\TotCat{P\Sub{\bullet}}\to B#}; hence we have introduced by accident a convenient
destription of the *strictification* of Street fibrations into equivalent
Grothendieck fibrations.
