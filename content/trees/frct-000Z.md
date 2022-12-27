---
title: the internalization of a small fibration
macrolib: topos
---

Let $C$ be a {{<cref frct-001Q "small fibration">}} over $B$ a category with finite limits, i.e. a cartesian fibration that is both {{<cref frct-001B "locally small">}} and {{<cref frct-000P "globally small">}}. We will show that $C$ is equivalent to the {{<cref frct-000V "externalization">}} of an {{<cref frct-001A "internal category">}} $\underline{C}$ in $B$, namely the {{<cref frct-0011 "full internal subcategory">}} associated to the generic object $\bar{u}\in C$.

{{%proof%}}
By {{<cref frct-001S>}} we know that the externalization of $\underline{C}$ so-defined
is equivalent to the full subfibration $\FullSubfib{\bar{u}}$ of $C$ spanned by
objects that are "classified" by $\bar{u}$. Because $\bar{u}$ is generic, we
know that *every* object of $C$ is classified by $\bar{u}$, so we are done.
{{%/proof%}}
