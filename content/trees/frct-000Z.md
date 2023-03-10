---
title: the internalization of a small fibration
macros:
- include: frct-0010
- include: frct-001R
lastmod: 2023-01-10
---

Let {#E#} be a [small fibration](frct-001Q) over {#B#} a category with finite limits, i.e. a cartesian fibration that is both [locally small](frct-001B) and [globally small](frct-000P). We will show that {#E#} is equivalent to the [externalization](frct-001R) {#\Extrn{C}#} of an [internal category](frct-001A) {#C#} in {#B#}, namely the [full internal subcategory](frct-003Q) associated to the [generic object](frct-001E) {#\bar{u}\in E#}.

{{%proof%}}
By the [characterization of the externalization](frct-001S) we know that the [externalization](frct-001R) of {#C#} so-defined
is equivalent to the full subfibration {#\FullSubfib{\bar{u}}#} of {#E#} spanned by
objects that are "classified" by {#\bar{u}#}. Because {#\bar{u}#} is generic, we
know that *every* object of {#E#} is classified by {#\bar{u}#}, so we are done.
{{%/proof%}}
