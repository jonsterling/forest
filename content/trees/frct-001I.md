---
title: total opposite category
taxon: construction
macros:
- include: frct-0000
- name: TotOpCat
  args: 1
  body: '#1\Sup{\tilde{\mathsf{o}}}'
---

Let {#E#} be displayed over {#B#}; we define its *total opposite* {#\TotOpCat{E}#} displayed over {#\OpCat{B}#} as follows:

1. An object of {#\TotOpCat{E}\Sub{x}#} is given by an object of {#E\Sub{x}#}.

2. Given {#f : x \to y\in \OpCat{B}#}, a displayed morphism {#\bar{x}\DispTo{f} \bar{y}#} in {#\TotOpCat{E}#} is given by a displayed morphism {#\bar{y}\DispTo{f} \bar{x}#} in {#E#}.

**Warning.** Do not confuse this construction with the [opposite fibered category](frct-001Z), which produces a displayed category over {#B#} and not {#\OpCat{B}#}.
