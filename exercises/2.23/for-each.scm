(define (for-each op items)
  (cond
    ((= (length items) 0) #t)
    (else
     (op (car items))
     (for-each op (cdr items)))))
