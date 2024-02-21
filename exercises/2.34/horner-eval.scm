(load "/home/angel/sicp/exercises/2.33/accumulate.scm")

(define (horner-eval x coefficient-sequence)
  (accumulate
    (lambda (this-coeff higher-terms)
      (+
        higher-terms
        (* x this-coeff)))
    0
    coefficient-sequence))
; observe how the lambda function's args are named, and the op we do on them
; we do: (this arg * x) + (other terms)
; other terms can itself be (next-arg * x) + (other other terms, and so on)
