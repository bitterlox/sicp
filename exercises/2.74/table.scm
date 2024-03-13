
; attempted to implement a table of sorts...
; for some reason the "!" procedures don't modify the argument

(define TABLE '())

(define (make-op name)
  (list name '()))

(define (get-name op) (car op))

(define (make-procedure type proc)
  (list type proc))

(define (get-type op) (car op))

(define (get-all-ops op)
  (filter
    (lambda (curr-op) (= op (get-name curr-op)))
    TABLE))

(define (get op type)
  (filter
    (lambda (proc) (= (get-type proc) type))
    (get-all-ops op)))


(define (put op type procedure)
  (let
    ((prev-ops (get-all-ops op)))
    (let
      ((new-ops (append prev-ops (make-procedure type procedure))))
      (remove! (lambda (x) (= (get-name x) op)) TABLE)
      (append! TABLE new-ops))))
