(load "/home/angel/sicp/exercises/1.36/fixed-point-verbose.scm")

(define (exercise) 
  (define (average a b) (/ (+ a b) 2))
  (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0))
