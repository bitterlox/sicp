(load "/home/angel/sicp/exercises/2.67/huffman-tree.scm")

(define (adjoin-set x set)
  (cond
    ((null? set)
     (list x))
    ((< (weight x) (weight (car set)))
     (cons x set))
    (else
      (cons (car set) (adjoin-set x (cdr set))))))

(define (make-leaf-set pairs)
  (if
    (null? pairs)
    '()
    (let
      ((pair (car pairs)))
      (adjoin-set
        (make-leaf (car pair) ; symbol
                   (cadr pair)) ; frequency
        (make-leaf-set (cdr pairs))))))

(define (make-code-tree left right)
  (list
    left
    right
    (append (symbols left) (symbols right))
    (+ (weight left) (weight right))))

(define (smallest-weight leaves)
  (car (sort leaves < weight)))

(define (remove-leaf leaves leaf-to-rm)
  (filter
    (lambda (leaf)
      (not 
        (equal?
          (symbol-leaf leaf)
          (symbol-leaf leaf-to-rm))))
    leaves))

(define (successive-merge leaves)
  (if
    (= (length leaves) 1)
    (car leaves)
    (let
      ((first-leaf (smallest-weight leaves)))
      (let
        ((second-leaf (smallest-weight (remove-leaf leaves first-leaf))))
        (successive-merge
          (adjoin-set
            (make-code-tree first-leaf second-leaf)
            (remove-leaf (remove-leaf leaves first-leaf) second-leaf)))))))

(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))
