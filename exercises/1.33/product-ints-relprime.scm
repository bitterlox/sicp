(load "/home/angel/sicp/exercises/1.33/filtered-accumulate.scm")

(define (gcd a b)
  (if
    (= b 0)
    a
    (gcd b (remainder a b))))

(define (product-ints-relprime n)
  (define (filter i) (= 1 (gcd i n)))
  (define (combiner a b) (* a b))
  (define (identity n) n)
  (define (next a) (+ a 1))
  (filtered-accumulate
    filter
    combiner
    1
    identity
    1
    next
    ; since we stop on (> a n) we would include n in the product as well
    ; so we start from n-1
    (- n 1)))
