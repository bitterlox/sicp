(load "/home/angel/sicp/exercises/3.26/add.scm")

(define (make-table)
  (let
    ((local-table (list '*table*)))
    (define (get-val-at-key tbl key) (assoc key (cdr tbl)))
    (define (lookup tbl keys)
      (if
        (= (length keys) 1)
        ; lookup record, if found return the cdr (the val), else return #f
        (let
          ((record (get-val-at-key tbl (car keys))))
          (if record (cdr record) #f))
        ; lookup subtable, if found recursively call lookup with the subtable
        ; otherwise return #ƒ
        (let
          ((subtable (get-val-at-key tbl (car keys))))
          (if subtable (lookup subtable (cdr keys)) #f))))
    (define (insert! tbl value keys)
      ; this add-val! procedure maintains t as a list bc it conses the new
      ; value with the cdr of t with even if it's a list w/ 1 elem is still
      ; (elem ()) so result of op will be (elem (new-val ()))
      ; this is why on line 39 we just make a list with the new key
      ; when creating subtable
      (define (add-val! t val) (set-cdr! t (cons val (cdr t))))
      (if
        (= (length keys) 1)
        ; lookup record, if found modify, else create
        (let
          ((record (get-val-at-key tbl (car keys))))
          (if
            record
            (set-cdr! record value)
            (add-val! tbl (cons (car keys) value))))
        ; lookup subtable, if found recursively call insert! with the subtable
        ; otherwise create it first then still rec call insert!
        (let
          ((subtable (get-val-at-key tbl (car keys))))
          (begin
            (if (not subtable) (add-val! tbl (list (car keys))))
            (insert!
              (get-val-at-key tbl (car keys))
              value 
              (cdr keys)))))
      'ok)
    (trace insert!)
    (define (dispatch m)
      (cond
        ((eq? m 'lookup-proc) (lambda (keys-list) (lookup local-table keys-list)))
        ((eq? m 'insert-proc!) (lambda (val keys-list) (insert! local-table val keys-list)))
        (else (error "Unknown operation: TABLE" m))))
    dispatch))
