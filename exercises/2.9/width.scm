(load "/home/angel/sicp/exercises/2.8/interval-sub.scm")

(define (get-width interval)
  (abs
    (/
      (-
        (upper-bound interval)
        (lower-bound interval))
      2)))
