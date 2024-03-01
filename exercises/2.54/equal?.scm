(define (equal? listA listB)
  (define (eql? a b)
    (cond
      ((and (symbol? a) (symbol? b))
       (eq? a b))
      ((and (pair? a) (pair? b))
       (and
         (equal? (car a) (car b))
         (equal? (cdr a) (cdr b))))
      (else #f)))
  (fold-right
    (lambda (x rest) (and x rest))
    #t
    (map (lambda (a b) (eql? a b)) listA listB)))
