(load "/home/angel/sicp/exercises/1.33/filtered-accumulate.scm")
(load "/home/angel/sicp/exercises/1.23/smallest-divisor.scm")

(define (prime? n) (= n (smallest-divisor n)))

(define (sum-prime-squares a b)
  (define (combiner a b) (+ a b))
  (define (next a) (+ a 1))
  (filtered-accumulate
    prime?
    combiner
    0
    square
    a
    next
    b))
