(load "/home/angel/sicp/exercises/1.37/cont-frac.scm")

; use i mod 3 and quotient of i and 3
(define (e)
  (define (get-value i)
    (let
      ((val (remainder i 3)))
      (if
        (or
          (= val 0)
          (= val 1))
        1
        (-
          i
          (quotient
            i
            3.0)))))
  (cont-frac
    (lambda (i) 1.0)
    get-value
    10))
