(load "/home/angel/sicp/exercises/1.31/product.scm")

(define (pi-approx precision)
  (define (even a) (= (remainder a 2) 0))
  (define (next a) (+ a 2))
  (define (approx bound)
    (*
      4.0
      (/ 
        (* 2 (product square 4 next bound))
        (product square 3 next bound))))
  (if
    (even precision)
    (approx (- precision 1))
    (approx precision)))
