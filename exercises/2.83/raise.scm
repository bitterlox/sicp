(load "/home/angel/sicp/exercises/2.1/make-rat.scm")
(load "/home/angel/sicp/exercises/2.83/imag.scm")
(load "/home/angel/sicp/exercises/2.74/table.scm")

(define (install-raise)
  (define (raise-integer n)
    (make-rat n 1))

  (define (raise-rational x)
    (* 1.0 (/ (numer x) (denom x))))

  (define (raise-real r)
    (make-from-real-imag r 0))

  (put 'raise '(scheme-number) raise-integer)
  (put 'raise '(rational) raise-rational)
  (put 'raise '(real) raise-real))
