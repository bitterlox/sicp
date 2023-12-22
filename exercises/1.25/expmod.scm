(load "/home/angel/sicp/exercises/1.25/fast-expt.scm")

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))
