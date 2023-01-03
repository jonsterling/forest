---
title: the internalization of a small fibration
macrolib: topos
---

Let $C$ be a [small fibration](frct-001Q) over $B$ a category with finite limits, i.e. a cartesian fibration that is both [locally small](frct-001B) and [globally small](frct-000P). We will show that $C$ is equivalent to the [externalization](frct-000V) of an [internal category](frct-001A) $\underline{C}$ in $B$, namely the [full internal subcategory](frct-0011) associated to the generic object $\bar{u}\in C$.

{{%proof%}}
By [](frct-001S) we know that the externalization of $\underline{C}$ so-defined
is equivalent to the full subfibration $\FullSubfib{\bar{u}}$ of $C$ spanned by
objects that are "classified" by $\bar{u}$. Because $\bar{u}$ is generic, we
know that *every* object of $C$ is classified by $\bar{u}$, so we are done.
{{%/proof%}}
