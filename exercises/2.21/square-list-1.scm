(define (square-list items)
  (if (null? items)
  '()
  (cons
    (square (car items))
    (square-list (cdr items)))))
