(define (split fn1 fn2)
  (lambda (painter n)
    (cond
      ((= n 0) painter)
      (else (let
              ((smaller ((split fn1 fn2) painter (- n 1)))
               (fn1 painter (fn2 smaller smaller))))))))
