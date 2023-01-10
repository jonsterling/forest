---
taxon: Lemma
title: hypocartesian = cartesian in a cartesian fibration
macros:
- include: base-macros
packages: jon-tikz
---

Let {#E#} be a cartesian fibration in the sense of [](frct-0002), and let
{#\bar{f} : \bar{x}\DispTo{f}\bar{y}#} be displayed over {#f:x\to y#}. The
displayed morphism {#\bar{f}#} is cartesian if and only if it is hypocartesian.

{{%proof%}}
Any cartesian map is clearly hypocartesian. To see that a hypocartesian map
{#\bar{f}:\bar{x}\DispTo{f}\bar{y}#} in a cartesian fibration is cartesian, we
consider the cartesian lift of {#f:x\to y#} under {#\bar{y}#}:
```render-latex
\DiagramSquare{
  height = 1.5cm,
  west/style = lies over,
  east/style = lies over,
  nw/style = pullback,
  nw = \bar{x}\tick,
  ne = \bar{y},
  se = y,
  sw = x,
  south = f,
  north = \bar{f}\tick,
  north/style = {->,exists},
}
```

As the cartesian lift {#\bar{x}\tick\to \bar{y}#} is also hypocartesian, it
follows that there is a unique vertical isomorphism identifying {#\bar{x}#} with
{#\bar{x}\tick#} factoring {#\bar{f} : \bar{x}\DispTo{f}\bar{y}#} through
{#\bar{f}\tick : \bar{x}\tick\DispTo{f}\bar{y}#}. Being cartesian over {#f#} is clearly
stable under isomorphism, hence we conclude that {#\bar{f}#} is cartesian from
the fact that {#\bar{f}\tick#} is cartesian.
{{%/proof%}}
