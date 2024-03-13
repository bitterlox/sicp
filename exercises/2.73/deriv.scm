(load "/home/angel/sicp/exercises/2.56/d-exp.scm")

; let's say this is correct in spirit, didn't feel like writing the whole
; thing since i can'r actually run it

(define (deriv exp var)
  (cond
    ((number? exp)
     0)
    ((variable? exp)
     (if (same-variable? exp var) 1 0))
    (else
      ((get 'deriv (operator exp)) (operands exp) var))))

(define (operator exp) (car exp))

(define (operands exp) (cdr exp))

; probably need to take into account that operands
; is from the looks of it passed as a list or a pair
; so need to to wrap the fns before registering them
; w/ some code to unpack args
(define (install-deriv)
  (define (deriv-sum a b)
    (make-sum
      (deriv (addend exp) var)
      (deriv (augend exp) var)))
  (define (deriv-prod a b)
    (make-sum
      (make-product
        (multiplier exp)
        (deriv (multiplicand exp) var))
      (make-product
        (deriv (multiplier exp) var)
        (multiplicand exp))))
  (define (deriv-exp a b)
    (make-product
      (make-product
        (exponent exp)
        (make-exponentiation
          (base exp)
          (- (exponent exp) 1)))
      (deriv (base exp) var)))
  (put 'deriv '(+) deriv-sum)
  (put 'deriv '(*) deriv-prod)
  (put 'deriv '(**) deriv-exp))
