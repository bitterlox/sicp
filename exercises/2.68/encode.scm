(load "/home/angel/sicp/exercises/2.67/huffman-tree.scm")

(define (encode message tree)
  (if
    (null? message)
    '()
    (append
      (encode-symbol (car message) tree)
      (encode (cdr message) tree))))

(define (encode-symbol symbol tree)
  (define (symbol-in-tree t)
    (there-exists? (symbols t) (lambda (cs) (equal? cs symbol))))
  (define (get-encoding prev-bits tree)
   (cond
     ((leaf? tree)
      (cons prev-bits '()))
     ((symbol-in-tree (left-branch tree))
      (get-encoding (cons prev-bits 0) (left-branch tree)))
     ((symbol-in-tree (right-branch tree))
      (get-encoding (cons prev-bits 1) (left-branch tree)))))
  (get-encoding '() tree))
