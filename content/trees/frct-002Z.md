---
taxon: Construction
macros:
- include: base-macros
---

Let {#B#} be a category. Define the displayed category {#\overline{B}#} over {#B#} as
follows:

1. For {#x\in B#}, define {#\overline{B}\Sub{x}#} as the collection of pairs
   {#(\bar{x}\in B,p\Sub{x}:x\to\bar{x})#}.
2. For {#f : x\to y\in B#}, define {#\overline{B}\Sub{f}#} to be the collection of
   commuting squares in the following configuration:
```render-latex
  \DiagramSquare{
    height = 1.7cm,
    sw = \bar{x},
    se = \bar{y},
    nw = x,
    ne = y,
    west = p\Sub{x},
    east = p\Sub{y},
    south = \bar{f},
    north = f,
    west/style = {->,exists},
    east/style = {->,exists},
    south/style = {->,exists},
  }
```
