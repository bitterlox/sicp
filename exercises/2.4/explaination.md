# explaination

## using substitution model to verify the cdr implementation

(define (cons x y)
  (lambda (m) (m x y)))

(define (cdr z)
  (z (lambda (p q) q)))

---

 => (define z (cons 1 2))

 => (cdr z)

 => (z (lambda (p q) q))

 => ((lambda (m) (m 1 2)) 
      (lambda (p q) q))

 => ((lambda (p q) q) 1 2)

 => (lambda (1 2) 2)

 => 2
