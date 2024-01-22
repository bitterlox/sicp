(define (deriv g)
  (let
    ((dx 0.00001))
    (lambda (x)
      (/
        (-
          (g (+ x dx)) 
          (g x))
        dx))))

(define (newton-transform g)
  (lambda (x)
    (-
      x
      (/
       (g x) 
       ((deriv g) x)))))
