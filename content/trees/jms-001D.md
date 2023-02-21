---
title: lifting as a co-comma construction
author: Jonathan Sterling
taxon: lemma
date: 2023-02-08T10:50:21Z
macros:
- include: jms-001E
---

For any dcpo {#A#}, the following is a co-comma square in the posetal 2-category of dcpos, where {#\Lift#} takes a dcpo to its *lift* or *Scott-open partial map classifier*.

```render-latex
\begin{tikzpicture}[diagram]
  \SpliceDiagramSquare{
    nw = A,
    sw = A,
    ne = \ObjTerm{},
    se = \Lift{A},
    north = !\Sub{A},
    east = \bot,
    east/style = embedding,
    south/style = embedding,
    south = \eta_A,
    west/style = double,
  }
  \node [between = nw and se] {$\sqsupseteq$};
\end{tikzpicture}
```

{{%proof "Constructive proof"%}}
We fix another lax square of the following form:

```render-latex
\begin{tikzpicture}[diagram]
  \SpliceDiagramSquare{
    nw = A,
    sw = A,
    ne = \ObjTerm{},
    se = D,
    north = !\Sub{A},
    east = d_\bot,
    south = d_A,
    west/style = double,
  }
  \node [between = nw and se] {$\sqsupseteq$};
\end{tikzpicture}
```

We must show that there exists a *unique* morphism {#\Lift{A}\xrightarrow{d}D#} factoring the square above through {#\brc{d_\bot\sqsubseteq d_A}#} as follows:

```render-latex
\begin{tikzpicture}[diagram]
  \SpliceDiagramSquare<sq/>{
    nw = A,
    sw = A,
    ne = \ObjTerm{},
    se = \Lift{A},
    north = !\Sub{A},
    east = \bot,
    east/style = embedding,
    south/style = embedding,
    south = \eta_A,
    west/style = double,
    east/node/style = upright desc,
    south/node/style = upright desc,
  }
  \node [between = sq/nw and sq/se] {$\sqsupseteq$};
  \node (se) [below right = of sq/se] {$D$};
  \draw[->,bend left=30] (sq/ne) to node[right] {$d_\bot$} (se);
  \draw[->,bend right=30] (sq/sw) to node[sloped,below] {$d_A$} (se);
  \draw[->,exists] (sq/se) to node[desc] {$\exists!d$} (se);
\end{tikzpicture}
```

We will define {#\Lift{A}\xrightarrow{d}D#} to take {#a\Sup{?}:\Lift{A}#} to the least upper bound of the directed subset {#U = \brc{d_\bot}\cup \brc{d_A a\mid a\Sup{?}=\eta_Aa}\subseteq D#}. As this assignment evidently has the correct factorization property, it remains just to check that it is continuous. Letting {#V#} be a directed subset of {#\Lift{A}#}, we compute:

{##
\begin{aligned}
d\bigsqcup V &= \bigsqcup\,\prn{
  \brc{d_\bot}\cup 
  \brc{d_Aa\mid \bigsqcup V = \eta_A a}
}
\\
&= \bigsqcup\,\prn{\brc{d_\bot} \cup \brc{d_Aa\mid \eta_Aa\in V}}
\\
&= \bigsqcup\brc{\bigsqcup \prn{\brc{d_\bot} \cup \brc{d_Aa\mid a\Sup{?}=\eta_Aa}} \mid a\Sup{?}\in V}
\\
&= \bigsqcup\brc{da\Sup{?}\mid a\Sup{?}\in V}
\end{aligned}
##}



For uniqueness, suppose that we have two morphisms {#\Lift{A}\xrightarrow{d,d'}D#} factoring our square in the sense described above and fix {#a\Sup{?}:\Lift{A}#}:

{##
\begin{aligned}
d a\Sup{?} &= d\bigsqcup\,\prn{\brc{\bot}\cup \brc{\eta_Aa\mid a\Sup{?}=\eta_Aa}}
\\
&= \bigsqcup\,\prn{\brc{d\bot} \cup \brc{d\,\prn{\eta_Aa}\mid a\Sup{?}=\eta_Aa}}
\\
&= \bigsqcup\,\prn{\brc{d_\bot} \cup \brc{d_Aa\mid a\Sup{?}=\eta_Aa}}
\\
&= \bigsqcup\,\prn{\brc{d'\bot} \cup \brc{d'\,\prn{\eta_Aa}\mid a\Sup{?}=\eta_Aa}}
\\
&= d'\bigsqcup\,\prn{\brc{\bot} \cup \brc{\eta_Aa\mid a\Sup{?}=\eta_Aa}}
\\ 
&= d'a\Sup{?}
\end{aligned}
##}

{{%/proof%}}
