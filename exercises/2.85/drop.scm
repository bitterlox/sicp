
(load "/home/angel/sicp/exercises/2.1/make-rat.scm")
(load "/home/angel/sicp/exercises/2.83/imag.scm")
(load "/home/angel/sicp/exercises/2.83/raise.scm")
(load "/home/angel/sicp/exercises/2.74/table.scm")
(load "/home/angel/sicp/exercises/2.79/equ?.scm")
(load "/home/angel/sicp/exercises/2.85/type-tags.scm")

(define (install-project)
  (define (project-rational r) (numer r))

  (define (project-real r) (truncate r))

  (define (project-complex c) (real-part c))

  (put 'project '(rational) project-rational)
  (put 'project '(real) project-real)
  (put 'project '(scheme-number) project-complex))

(define (can-drop val)
  (let
    ((projected ((get 'project (list (type-tag val))) (contents val))))
    (if
      (equ?
        ((get 'raise (list (type-tag val))) projected)
        val)
      #t
      #f)))
