(load "/home/angel/sicp/exercises/1.40/fixed-point-of-transform.scm")
(load "/home/angel/sicp/exercises/1.43/repeated.scm")

(define (log2 x) (/ (log x) (log 2)))

(define (average-damp f)
  (lambda (x) (/ (+ x (f x)) 2)))

(define (nthroot n x)
  (fixed-point-of-transform
    (lambda (y) (/ x (expt y (- n 1))))
    (repeated average-damp (floor (log2 n)))
    1.0))
