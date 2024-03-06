(load "/home/angel/sicp/exercises/2.58/b/deriv-data-abstraction.scm")

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var) (deriv (augend exp) var)))
        ((product? exp)
         (let
           ((m1 (multiplier exp))
            (m2 (multiplicand exp)))
           (cond
             ((sum? m1)
              (deriv
                (make-sum
                  (make-product m2 (addend m1))
                  (make-product m2 (augend m1))) var))
             ((sum? m2)
              (deriv
                (make-sum
                  (make-product m1 (addend m2))
                  (make-product m1 (augend m2))) var))
             (else
               (make-sum
                 (make-product m1 (deriv m2 var))
                 (make-product (deriv m1 var) m2))))))
        (else (error "unknown expression type: DERIV" exp))))
