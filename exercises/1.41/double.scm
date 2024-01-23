(define (double f)
  (lambda (x) 
    (let
      ((result (f x)))
      (f result))))
