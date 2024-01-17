(load "/home/angel/sicp/exercises/1.37/cont-frac.scm")

(define (test)
  (cont-frac
    (lambda (i) 1.0)
    (lambda (i) 1.0)
    11))
