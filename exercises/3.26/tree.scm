(define (entry tree) (car tree))

(define (entry-key entry) (car key))

(define (entry-value entry) (cdr key))

(define (left-branch tree) (cadr tree))

(define (right-branch tree) (caddr tree))

(define (make-tree key value left right)
  (list (cons key value) left right))

(define (element-of-set? x set)
  (cond
    ((null? set) false)
    ((= x (entry set)) true)
    ((< x (entry set))
     (element-of-set? x (left-branch set)))
    ((> x (entry set))
     (element-of-set? x (right-branch set)))))

(define (get-val-at-key tree key)
  (if (null? tree) #f)
  (let
    ((record (entry tree)))
    (cond
      ((= (entry-key record) key) (entry-value record))
      ((< (entry-key record) key (get-val-at-key (right-branch tree))))
      (else (get-val-at-key (left-branch tree))))))
