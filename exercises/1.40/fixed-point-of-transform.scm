(load "/home/angel/sicp/exercises/1.36/fixed-point-verbose.scm")
;(load "/home/angel/sicp/exercises/1.35/fixed-point.scm")

(define (fixed-point-of-transform g transform guess) 
  (fixed-point (transform g) guess))
