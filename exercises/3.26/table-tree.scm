(load "/home/angel/sicp/exercises/3.26/tree.scm")

(define (make-table)
  (let
    ((local-table (list '*table* (make-tree 50 'tree '() '()))))
    ;((local-table (list '*table*)))
    (define (get-val-at-key tree key) (tree-get-val-at-key tree key))
    (define (lookup tree keys)
      (if
        (= (length keys) 1)
        ; lookup record, if found return the cdr (the val), else return #f
        (let
          ((entry (get-val-at-key tree (car keys))))
          (if entry entry #f))
        ; lookup subtree, if found recursively call lookup with the subtree
        ; otherwise return #ƒ
        (let
          ((subtree (get-val-at-key tree (car keys))))
          (if subtree (lookup subtree (cdr keys)) #f))))
    (define (insert! tree value keys)
      ; this add-val! procedure maintains t as a list bc it conses the new
      ; value with the cdr of t with even if it's a list w/ 1 elem is still
      ; (elem ()) so result of op will be (elem (new-val ()))
      ; this is why on line 39 we just make a list with the new key
      ; when creating subtable
      (define (add-val! t key val) (tree-adjoin! (cdr t) key val))
      ;(define (add-val! t val) (set-cdr! t (cons val (cdr t))))
      (if
        (= (length keys) 1)
        ; ajoin key-val
        (tree-adjoin! tree (car keys) value)
        (let
          ; when trying to add a subtree here if at one of they keys we have
          ; a regular record this fails; we need a way to detect if a value
          ; is a tree and if not overwrite it
          ((subtree (get-val-at-key tree (car keys))))
          (begin
            (if (not subtree) (tree-adjoin! tree (car keys) (make-tree 50 'tree '() '())))
            ; (if (not subtree) (add-val! tree (list (car keys))))
            (insert!
              (get-val-at-key tree (car keys))
              value 
              (cdr keys)))))
      'ok)
    (trace insert!)
    (trace lookup)
    (define (dispatch m)
      (cond
        ((eq? m 'lookup-proc) (lambda (keys-list) (lookup (cadr local-table) keys-list)))
        ((eq? m 'insert-proc!) (lambda (val keys-list) (insert! (cadr local-table) val keys-list)))
        (else (error "Unknown operation: TABLE" m))))
    dispatch))
