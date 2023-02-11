---
title: colimits reflected by the forgetful functor
taxon: lemma
author: Jonathan Sterling
date: 2023-02-11T16:17:59Z
macros: 
- include: base-macros
- name: CCat
  args: 0
  body: '\mathcal{C}'
  doc: 'A given category'
- name: ICat
  args: 0
  body: '\mathcal{I}'
  doc: 'A given small category'
- name: TMon
  args: 0
  body: '\mathbb{T}'
  doc: 'A given monad'
- name: EM
  args: 0
  body: '\CCat\Sup{\TMon}'
  doc: 'The Eilenberg–Moore category'
---

Let {#\CCat#} be a category and let {#\TMon = \prn{T,\eta,\mu}#} be a monad on {#\CCat#}, writing {#\Mor{U}{\EM}{\CCat}#} for the forgetful functor from the Eilenberg--Moore category {#\EM#}. If {#T#} preserves colimits of {#\ICat#}-figures for a given small category {#\ICat#}, then {#\Mor{U}{\EM}{\CCat}#} reflect colimits of {#\ICat#}-figures.

{{%proof "Constructive proof"%}}
Let {#\Mor{X_\bullet}{\ICat}{\EM}#} be a diagram in {#\EM#} and let {#\Mor{y_\bullet}{X_\bullet}{\brc{Y}}#} be a cocone in {#\EM#} such that {#\Mor{Uy_\bullet}{UX_\bullet}{\brc{UY}}#} is a universal cocone for {#UX_\bullet = \ICat\xrightarrow{X_\bullet}\EM\xrightarrow{U}\CCat#}. We must show that {#\Mor{y_\bullet}{X_\bullet}{\brc{Y}}#} is a universal cocone.

In particular, we must factor any cocone {#\Mor{z_\bullet}{X_\bullet}{\brc{Z}}#} uniquely through {#\Mor{y_\bullet}{X_\bullet}{\brc{Y}}#}. Because {#Uy_\bullet#} is universal, there exists a unique {#\Mor{h}{Y}{Z}#} such that the following diagram commutes:

```render-latex
\begin{tikzpicture}[diagram]
\node (nw) {$UX_\bullet$};
\node[right = of nw] (ne) {$\brc{UY}$};
\node[below = of ne] (se) {$\brc{UZ}$};
\draw[->] (nw) to node[above] {$Uy_\bullet$} (ne);
\draw[->] (nw) to node[sloped,below] {$Uz_\bullet$} (se);
\draw[->] (ne) to node[right] {$\exists!h$} (se);
\end{tikzpicture}
```

We must check that {#h#} is a homomorphism of {#\TMon#}-algebras:

```render-latex
\DiagramSquare{
  nw = TUY,
  sw = TUZ,
  ne = UY,
  se = UZ,
  south = \alpha_Z,
  north = \alpha_Y,
  west = Th,
  east = h,
}
```

To see that {#\alpha_Y;h = Th;\alpha_Z#} it suffices to observe that they both factor the cocone {##TUX_\bullet\xrightarrow{\alpha_{X_\bullet}}UX_\bullet\xrightarrow{Uz_\bullet}\brc{UZ}##} through the  cocone {#\Mor{TUy_\bullet}{TUX_\bullet}{\brc{TUY}}#}, which is universal by our assumption that {#T#} preserves {#\ICat#}-colimits.

1. First we must check that the following diagram commutes:

   ```render-latex
   \DiagramSquare{
     nw = TUX_\bullet,
     sw = UX_\bullet,
     se = \brc{UZ},
     ne = \brc{TUY},
     north = TUy_\bullet,
     west = \alpha_{X_\bullet},
     south = Uz_\bullet,
     east = \alpha_Y;h,
     width = 2.5cm,
   }
   ```
   
   This holds immediately from the homomorphism property of {#y_\bullet#}.
   
1. Second, we must check that the following diagram commutes:

   ```render-latex
   \DiagramSquare{
     nw = TUX_\bullet,
     sw = UX_\bullet,
     se = \brc{UZ},
     ne = \brc{TUY},
     north = TUy_\bullet,
     west = \alpha_{X_\bullet},
     south = Uz_\bullet,
     east = Th;\alpha_Z,
     width = 2.5cm,
   }
   ```
   
   This follows from the factorization {#Uy_\bullet;h=Uz_\bullet#} and the homomorphism property of {#z_\bullet#}.
