(define (same-parity . args)
  (define (is-even n)
    (= (remainder n 2) 0))
  (define (keep-number n)
    (if
      (is-even (car args))
      (is-even n)
      (not (is-even n))))
  (define (iter res-list args-list)
    (cond
      ((= (length args-list) 0)
       res-list)
      ((keep-number (car args-list))
       (iter
         (append res-list (list (car args-list)))
         (cdr args-list)))
      (else
        (iter res-list (cdr args-list)))))
  (iter (list) args))
