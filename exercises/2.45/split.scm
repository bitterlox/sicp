(define (split fn1 fn2)
  (lambda (painter)
    (fn1 painter (fn2 painter))))
