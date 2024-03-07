
; constructors

(define (make-sum a1 a2)
  (cond
    ((=number? a1 0) a2)
    ((=number? a2 0) a1)
    ((and (number? a1) (number? a2)) (+ a1 a2))
    (else (list a1 '+ a2))))

(define (make-product m1 m2)
  (cond
    ((or (=number? m1 0) (=number? m2 0))
     0)
    ((=number? m1 1)
     m2)
    ((=number? m2 1)
     m1)
    ((and (number? m1) (number? m2))
     (* m1 m2))
    (else (list m1 '* m2))))

; selectors

(define (addend s) (car s))

(define (augend s)
  (if
    (> (length s) 3)
    (cond
      ((sum? (cddr s))
       (make-sum (addend (cddr s)) (augend (cddr s))))
      ((product? (cddr s)) 
       (make-product (multiplier (cddr s)) (multiplicand (cddr s))))
      (else (error "ERROR - augend")))
    (caddr s)))

(define (multiplier p) (car p))

(define (multiplicand p)
  (if
    (> (length p) 3)
    (cond
      ((sum? (cddr p))
       (make-sum (addend (cddr p)) (augend (cddr p))))
      ((product? (cddr p)) 
       (make-product (multiplier (cddr p)) (multiplicand (cddr p))))
      (else (error "ERROR - multiplicand")))
    (caddr p)))

; predicates

(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (sum? x) (and (pair? x) (eq? (cadr x) '+)))

(define (product? x) (and (pair? x) (eq? (cadr x) '*)))

(define (=number? exp num) (and (number? exp) (= exp num)))

