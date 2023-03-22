---
title: globally small categories
taxon: theorem
macros:
- include: frct-0006
- include: frct-0000
---

An ordinary category {#C#} is equivalent to a globally small category if and only if the [family fibration](frct-0006) {#\FAM{C}#} has a [generic object](frct-001E).

{{%proof%}}
To see that this is the case, suppose that {#C#} has a set of objects. Then {#C\in\SET#} and we define {#\lfloor{C}\rfloor#} to be the displayed object {#\brc{x}\Sub{x\in C}\in \FAM{C}[C]#}. Fixing {#I\in \SET#} and {#z\in C^I#}, we consider the cartesian map displayed over {#z : I \to C#}:

```render-latex
\DiagramSquare{
  height = 1.5cm,
  width = 3cm,
  west/style = lies over,
  east/style = lies over,
  sw = I,
  se = C,
  south = z,
  ne = \brc{x}\Sub{x\in C},
  nw = {z = \brc{z\,i}\Sub{i\in I} }
}
```

Conversely assume that {#\FAM{C}#} has a generic object {#\bar{u}\in\FAM{C}[U]#} for some {#U\in \SET#}; then we may equip {#U#} with the structure of a globally small category such that {#U#} is equivalent to {#C#}, using the canonical [cleaving of the family fibration](frct-003V). In particular, given {#\Mor{x,y}{1}{U}#} we define a morphism from {#x#} to {#y#} to be given by a vertical map {#\Mor{h}{\InvImg{x}{\bar{u}}}{\InvImg{y}{\bar{u}}}#} in {#\FAM{C}\brk{1}\simeq C#}.
{{%/proof%}}
