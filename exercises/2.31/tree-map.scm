(define (tree-map fn tree)
  (cond
    ((null? tree) '())
    ((not (pair? tree)) (fn tree))
    (else (cons
            (square-tree (car tree))
            (square-tree (cdr tree))))))
