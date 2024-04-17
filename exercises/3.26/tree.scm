(define (entry tree) (car tree))

(define (entry-key entry) (car entry))

(define (set-entry-key! entry) (set-car! entry))

(define (entry-value entry) (cdr entry))

(define (set-entry-value! entry) (set-cdr! entry))

(define (left-branch tree) (cadr tree))

(define (set-left-branch! tree branch) (set-car! (cdr tree) branch))

(define (right-branch tree) (caddr tree))

(define (set-right-branch! tree branch) (set-car! (cddr tree) branch))

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

(define (get-val-at-key tree k)
  (let
    ((record (entry tree)))
    (cond
      ((= (entry-key record) k) (entry-value record))
      ((< (entry-key record) k) (get-val-at-key (right-branch tree) k))
      (else (get-val-at-key (left-branch tree) k)))))

(define (tree-adjoin! tree key val)
  (cond
    ((= key (entry-key (entry tree)))
     (set-entry-value! (entry tree) val))
    ((> key (entry-key (entry tree))) 
     (if
       (null? (right-branch tree))
       (set-right-branch! tree (make-tree key val '() '()))
       (tree-adjoin! (right-branch tree) key val)))
    ((< key (entry-key (entry tree))) 
     (if
       (null? (left-branch tree))
       (set-left-branch! tree (make-tree key val '() '()))
       (tree-adjoin! (left-branch tree) key val)))
    (else (error "UNKNOWN ERROR"))))
