; (last-pair (list 23 72 149 34))

(define (last-pair list)
  (if
    (null? (cdr list))
    (car list)
    (last-pair (cdr list))))
