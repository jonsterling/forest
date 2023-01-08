#lang at-exp racket

(require "macro-kit.rkt")

(define-global (Sub x)
  "_{" x "}")
(define-global (Sup x)
  "^{" x "}")

(define-global (BoldSymbol x)
  (match (target)
    ['katex @raw{\pmb{@x}}]
    [_ @raw{\boldsymbol{@x}}]))

(define-local (ShSymbol)
  (BoldSymbol @raw{\mathcal{S}}))

(define-local (GlSymbol)
  (BoldSymbol @raw{\mathcal{G}}))

(define-local (FamSymbol)
  (BoldSymbol @raw{\mathcal{F}}))

(define-global (Con x)
  @raw{\mathsf{@x}})

(define-global (Sh X)
  (ShSymbol)
  (Sub X))

(define-global (GL X)
  (GlSymbol)
  (Sub X))

(define-global (Gl x)
  (Con "gl")
  (Sub x))

(define-local (overline x)
  @raw{\overline{@x}})

(define-global (OpGL x)
  (overline (GlSymbol))
  (Sub x))

(define-global (OpGl x)
  (overline (Con "gl"))
  (Sub x))

(define-global (OpCat C)
  C (Sup (Con "o")))

(define-global (TotOpCat C)
  C (Sup @raw{\tilde{@(Con "o")}}))

(define-global (Cod C)
  (Con "cod")
  (Sub C))

(define-local (bold kwd)
  @raw{\mathbf{@kwd}})

(define-global (TOP E)
  (bold "Top")
  (Sub E))

(define-global (Idn x)
  "1" (Sub x))

(define-global (TotCat E)
  @raw{\widetilde{@E}})

(define-global (SelfIx B)
  @raw{\underline{@B}})

(define-global (Sl E e)
  E (Sub @raw{/@e}))

(define-global (CoSl e E)
  E (Sup @raw{\setminus @e}))


(define-global (InvImg f)
  f (Sup @raw{*}))
(define-global (DirImg f)
  f (Sub @raw{*}))

(define-global (SET)
  (bold "Set"))

(define-global (FAM cat)
  (FamSymbol) (Sub cat))

(define-global (CandHom i u v)
  (bold "H") (Sub i) "(" u "," v ")")

(define-global (brc x)
  @raw{\{ @x \}})

(define-global (gl x)
  @raw{\langle @x \rangle})

(define-global (brk x)
  @raw{[@x]})

(define-global (prn x)
  @raw{(@x)})

(define-global (FullSubfib u)
  (bold "Full") (prn u))

(define-global (tick)
  @raw{'})

(define-global (ObjTerm E)
  (bold "1") (Sub E))

(publish-macro-library 'topos)
