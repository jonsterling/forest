#lang at-exp racket

(require json)

(provide raw define-global define-local publish-macro-library target)
(struct macro-repr (name arity inst) #:transparent)

(define target (make-parameter null))

(define (macro-reprs->mathjax-jsexpr reprs)
  (parameterize ([target 'mathjax])
    (make-hash
     (for/list ([repr reprs])
       (cons
        (string->symbol (macro-repr-name repr))
        (list
         ((macro-repr-inst repr))
         (macro-repr-arity repr)))))))

(define (macro-reprs->katex-jsexpr reprs)
  (parameterize ([target 'katex])
    (make-hash
     (for/list ([repr reprs])
       (cons
        (string->symbol (string-append "\\" (macro-repr-name repr)))
        ((macro-repr-inst repr)))))))

(define (write-macro-repr-latex repr port)
  (parameterize ([target 'latex])
    (display "\\newcommand\\" port)
    (display (macro-repr-name repr) port)
    (when (> (macro-repr-arity repr) 0)
      (display "[" port)
      (display (macro-repr-arity repr) port)
      (display "]" port))
    (display "{" port)
    (display ((macro-repr-inst repr)) port)
    (displayln "}" port)))

(define macro-set (make-parameter (mutable-set)))

(define (macro-list)
  (define (lt? repr1 repr2)
    (string-ci<? (macro-repr-name repr1) (macro-repr-name repr2)))

  (sort (set->list (macro-set)) lt?))

(define (render-macros-to-tex filename)
  (call-with-output-file filename #:exists 'replace
    (λ (port)
      (for ([repr (in-list (macro-list))])
        (write-macro-repr-latex repr port)))))

(define (render-macros-to-mathjax filename)
  (define macros (macro-list))
  (call-with-output-file filename #:exists 'replace
    (λ (port)
      (write-json (macro-reprs->mathjax-jsexpr macros) port))))

(define (render-macros-to-katex filename)
  (define macros (macro-list))
  (call-with-output-file filename #:exists 'replace
    (λ (port)
      (write-json (macro-reprs->katex-jsexpr macros) port))))

(define (publish-macro-library sym)
  (render-macros-to-tex (string-append "../assets/latex/" (symbol->string sym) ".sty"))
  (render-macros-to-katex (string-append "../assets/" (symbol->string sym) ".katex.json")))

(define (index a b)
  (let [(tail (member a (reverse b)))]
    (and tail (length (cdr tail)))))

(define-syntax id->string
  (lambda (stx)
    (syntax-case stx ()
      ((_ id)
       (identifier? #'id)
       (datum->syntax #'id (symbol->string (syntax->datum #'id)))))))


(define (name-arg arg args)
  (string-append
   "#"
   (number->string (+ 1 (index arg args)))))

(define (raw . args)
  (string-append* args))

(define-syntax-rule (define-local (id arg ...) bdy ...)
  (begin
    (define (id arg ...) (raw bdy ...))))

(define-syntax-rule (define-global (id arg ...) bdy ...)
  (begin
    (define (id arg ...) (raw bdy ...))
    (let*
        ([name (id->string id)]
         [args (list (syntax->datum #'arg) ...)]
         [arity (length args)]
         [inst
          (let ([arg (name-arg (syntax->datum #'arg) args)] ...)
            (thunk (raw bdy ...)))])
      (set-add! (macro-set) (macro-repr name arity inst)))))
