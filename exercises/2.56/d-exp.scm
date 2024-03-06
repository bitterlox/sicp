(load "/home/angel/sicp/exercises/2.56/deriv-data-abstraction.scm")

(define (exponentiation? x) (and (pair? x) (eq? (car x) '**)))

(define (base x) (cadr x))

(define (exponent x) (caddr x))

(define (make-exponentiation base exponent)
  (cond
    ((= exponent 0) 1)
    ((= exponent 1) base)
    (else (list '** base exponent))))


(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var) (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product
             (multiplier exp)
             (deriv (multiplicand exp) var))
           (make-product
             (deriv
               (multiplier exp) var)
             (multiplicand exp))))
        ; as an extra step here we could check that the exponent be a number
        ; and not be a / contain variables, in which case it would not work
        ; properly
        ((exponentiation? exp)
         (make-product
           (make-product
             (exponent exp)
             (make-exponentiation
               (base exp)
               (- (exponent exp) 1)))
           (deriv (base exp) var)))
        (else (error "unknown expression type: DERIV" exp))))
