(load "/home/angel/sicp/exercises/2.46/vectors.scm")

(define (make-segment start end)
  (cons start end))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (car s))
