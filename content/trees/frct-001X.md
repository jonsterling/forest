---
title: the fundamental self-indexing
taxon: construction
macros:
- include: base-macros
- name: SelfIx
  args: 1
  body: '\underline{#1}'
  doc: 'the fundamental self-indexing of a category'
---

Let {#B#} be an ordinary category; there is an important displayed category
{#\SelfIx{B}#} over {#B#} given fiberwise by the *slices* of {#B#}.
1. For {#x\in B#}, we define {#\SelfIx{B}\Sub{x}#} to be the collection {#\Sl{B}{x}#}
   of pairs {#(\bar{x}\in B,p\Sub{x}:\bar{x}\to x)#}.
2. For {#f : x\to y\in B#}, we define {#\SelfIx{B}\Sub{f}#} to be the collection of
   commuting squares in the following configuration:

```render-latex
  \DiagramSquare{
    height = 1.7cm,
    nw = \bar{x},
    ne = \bar{y},
    sw = x,
    se = y,
    west = p\Sub{x},
    east = p\Sub{y},
    south = f,
    north = \bar{f},
    west/style = {->,exists},
    east/style = {->,exists},
    north/style = {->,exists},
  }
```
