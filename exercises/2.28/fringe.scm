
(define (fringe list)
  (define (fringe-iter result to-fringe)
    (cond
      ((null? (cdr to-fringe))
       (list (car to-fringe)))
      ((pair? (cdr to-fringe))
       (fringe-iter result (cdr to-fringe)))
      ))
  (trace fringe-iter)
  (trace fringe)
  (fringe-iter '() list))
