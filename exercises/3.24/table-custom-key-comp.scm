
(define (make-table same-key?)
  (define (assoc key records)
    (cond
      ((null? records)
       false)
      ((same-key? key (caar records))
       (car records))
      (else
        (assoc key (cdr records)))))
  (define (lookup key table)
    (let
      ((record (assoc key (cdr table))))
      (if
        record
        (cdr record)
        false)))
  (define (insert! key value table)
    (let
      ((record (assoc key (cdr table))))
      (if
        record
        (set-cdr! record value)
        (set-cdr! table (cons (cons key value) (cdr table)))))
    'ok)
  (let
    ((tbl (list '*table*)))
    (begin
      (define (dispatch op) 
        (cond
          ((eq? op 'lookup) (lambda (key) (lookup key tbl)))
          ((eq? op 'insert!) (lambda (key val) (insert! key val tbl)))))
      dispatch)))
