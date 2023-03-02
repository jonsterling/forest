---
taxon: lemma
title: hypocartesian = cartesian in a cartesian fibration
macros:
- include: frct-0000
---

Let {#E#} be a [cartesian fibration](frct-0002), and let {#\DispMor{\bar{f}}{f}{\bar{x}}{\bar{y}}#} be displayed over {#\Mor{f}{x}{y}#}. The displayed morphism {#\bar{f}#} is [cartesian](frct-0001) if and only if it is [hypocartesian](frct-002A).

{{%proof%}}
Any cartesian map is clearly hypocartesian. To see that a hypocartesian map {#\DispMor{\bar{f}}{f}{\bar{x}}{\bar{y}}#} in a cartesian fibration is cartesian, we consider the cartesian lift of {#\Mor{f}{x}{y}#} under {#\bar{y}#}:

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

As the cartesian lift {#\bar{x}\tick\to \bar{y}#} is also hypocartesian, it follows that there is a unique vertical isomorphism identifying {#\bar{x}#} with {#\bar{x}\tick#} factoring {#\DispMor{\bar{f}}{f}{\bar{x}}{\bar{y}}#} through {#\DispMor{\bar{f}\tick}{f}{\bar{x}\tick}{\bar{y}}#}. Being cartesian over {#f#} is clearly stable under isomorphism, hence we conclude that {#\bar{f}#} is cartesian from the fact that {#\bar{f}\tick#} is cartesian.
{{%/proof%}}
