(load "/home/angel/sicp/exercises/1.32/accumulate.scm")

(define (product term a next b)
  (define (productoftwo a b) (* a b))
  (accumulate productoftwo 1 term a next b ))


;; to test

(define (factorial n) 
  (define (identity n) n)
  (define (next n) (+ n 1))
  (product identity 1 next n))
