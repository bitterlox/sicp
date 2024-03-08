(load "/home/angel/sicp/exercises/2.63/tree-ops.scm")

(define (tree->list-1 tree)
  (if (null? tree)
    '()
    (append
      (tree->list-1 (left-branch tree))
      (cons
        (entry tree)
        (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define
    (copy-to-list tree result-list)
    (if
      (null? tree)
      result-list
      (copy-to-list
        (left-branch tree)
        (cons (entry tree)
              (copy-to-list (right-branch tree) result-list)))))
  (copy-to-list tree '()))

(define tree1 '(7 (3 (1 () ()) (5 () ())) (9 () (11))))
(define tree2 '(3 (1 () ()) (7 (5 () ()) (9 () (11 () ())))))
(define tree2 '(5 (3 (1 () ()) ()) (9 (7 () ()) (11 () ()))))
