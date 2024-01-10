(load "/home/angel/sicp/exercises/1.32/accumulate-recursive.scm")

(define (sum term a next b)
  (define (additionoftwo a b) (+ a b))
  (accumulate additionoftwo 0 term a next b ))


;; to test

(define (sum-integers n) 
  (define (identity n) n)
  (define (next n) (+ n 1))
  (sum identity 1 next n))
