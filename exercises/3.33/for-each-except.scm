(define (for-each-except exception procedure list)
  (define (loop items)
    (cond
      ((null? items) 'done)
      ((eq? (car items) exception)
       (loop (cdr items)))
      (else
        (procedure (car items))
        (loop (cdr items)))))
  (loop list))
