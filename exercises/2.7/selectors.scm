(define (lower-bound interval) (min (car interval) (cdr interval)))

(define (upper-bound interval) (max (car interval) (cdr interval)))
