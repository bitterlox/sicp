; the trick was realizing (duh) that this is a tree, and reducing the operation
; to and operation on branches and on leaves
(define (fringe l)
  (cond
    ((pair? l)
     (if
       (null? (cdr l))
       (fringe (car l))
       (append
         (fringe (car l))
         (fringe (cdr l)))))
    (else (list l))))
