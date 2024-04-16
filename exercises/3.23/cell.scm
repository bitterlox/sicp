; constructor

(define (make-cell prev val next)
  (list prev val next))

; selectors

(define (cell-prev cell)
  (car cell))

(define (cell-next cell)
  (caddr cell))

(define (cell-val cell)
  (cadr cell))

; mutators

(define (set-cell-prev! cell val)
  (set-car! cell val))

(define (set-cell-next! cell val)
  (set-car! (cddr cell) val))


