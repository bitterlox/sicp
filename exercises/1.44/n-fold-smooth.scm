(load "/home/angel/sicp/exercises/1.43/repeated.scm")
(load "/home/angel/sicp/exercises/1.44/smooth.scm")

(define (n-fold-smooth f n)
  ; at this point f will be the same for every invocation
  ((repeated smooth n) f))
