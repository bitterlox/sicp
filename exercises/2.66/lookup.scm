(load "/home/angel/sicp/exercises/2.63/tree-ops.scm")

(define (key pair) (car pair))

(define (value pair) (cdr pair))

(define tree (make-tree
               (cons 1111 'foo)
               (make-tree (cons 2222 'bar) '() '())
               (make-tree (cons 3333 'baz) '() '())))

(define (lookup given-key tree)
  (cond 
    ((null? tree)
     false)
    ((equal? given-key (key (entry tree)))
     (value (entry tree)))
    (else
      (let
        ((left-result (lookup given-key (left-branch tree)))
         (right-result (lookup given-key (right-branch tree))))
        (if
          (boolean? left-result)
          right-result
          left-result)))))
