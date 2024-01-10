(load "/home/angel/sicp/exercises/1.31/product-recursive.scm")

(define (factorial n) 
  (define (identity n) n)
  (define (next n) (+ n 1))
  (product identity 1 next n))
