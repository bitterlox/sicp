(define (square-tree tree)
  (map
    (lambda (subtree)
      (cond
        ((pair? subtree)
         (square-tree subtree))
        (else (square subtree)))
      )
    tree))
