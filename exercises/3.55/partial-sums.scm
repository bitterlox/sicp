(load "/home/angel/sicp/exercises/3.54/mul-streams.scm")

(define (partial-sums s)
  (cons-stream
    (stream-car s)
    (add-streams (stream-cdr s) (partial-sums s))))

; almost did it on my own
