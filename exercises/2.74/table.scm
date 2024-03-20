(define *op-table* (make-hash-table))

(define (put op type proc)
  (hash-table/put! *op-table* (list op type) proc))

(define (get op type)
  (hash-table/get *op-table* (list op type) #f))

(define (dump-table)
  (for-each
    (lambda (entry)
      (display "key: ")
      (display (car entry))
      (newline)
      (display "val: ")
      (display (cdr entry))
      (newline)
      (newline))
    (hash-table->alist *op-table*)))
