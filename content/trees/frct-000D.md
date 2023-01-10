---
title: iteration and pushforward
macros:
- include: base-macros
---

It also makes sense to speak of categories displayed over other displayed
categories; one way to formalize this notion is as follows. Let {#E#} be
displayed over {#B#}; we define a category displayed over {#E#} to be simply a
category displayed over the total category {#\TotCat{E}#}.

Now let {#F#} be displayed over {#E#} over {#B#}. Then we may regard {#F#} as a
displayed category {#B\Sub{!}F#} over {#B#} as follows:

1. An object of {#(B\Sub{!}F)\Sub{x}#} is a pair {#(\bar{x},{\ddot{x}})#} with {#\bar{x}\in E\Sub{x}#} and {#{\ddot{x}}\in F\Sub{\bar{x}}#}.
2. A morphism {#(\bar{x},{\ddot{x}})\DispTo{f}(\bar{y},{\ddot{y}})#} is given by a pair {#(\bar{f},{\ddot{f}})#} where {#\bar{f}:\bar{x}\DispTo{f}\bar{y}#} in {#E#} and {#{\ddot{f}}:{\ddot{x}}\DispTo{\bar{f}} {\ddot{y}}#} in {#F#}.

By virtue of [](frct-000B), we may define the *pushforward* of a displayed category along a functor. In particular, let {#E#}
be displayed over {#B#} and let {#U:B\to C#} be an ordinary functor; then we may
obtain a displayed category {#U\Sub{!}E#} over {#C#} as follows:

1. First we construct the displayed category {#U\Sub{\bullet}#} corresponding to the
   functor {#U:B \to C#}.
2. We recall that there is a canonical equivalence of categories
   {#\TotCat{U\Sub{\bullet}}\to B#}.
3. Because {#E#} is displayed over {#B#}, we may regard it as displayed over the
   equivalent total category {#\TotCat{U\Sub{\bullet}}#} by
   [change of base](frct-0007).
4. Hence we may define the pushforward {#U\Sub{!}E#} to be the displayed category {#(U\Sub{\bullet})\Sub{!}E#} as defined above.
