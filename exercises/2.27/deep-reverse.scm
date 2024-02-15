; (reverse (list 1 4 9 16 25))

(define (reverse list)
  (define (reverse-iter result to-reverse)
    (if
      (null? to-reverse)
      result
      (if
        (pair? (car to-reverse))
        (reverse-iter
          (cons (reverse (car to-reverse)) result)
          (cdr to-reverse))
        (reverse-iter
          (cons (car to-reverse) result)
          (cdr to-reverse)))))
  (reverse-iter '() list))
