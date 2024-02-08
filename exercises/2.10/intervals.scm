(load "/home/angel/sicp/exercises/2.7/constructors.scm")
(load "/home/angel/sicp/exercises/2.7/selectors.scm")
(load "/home/angel/sicp/exercises/2.7/mul.scm")

(define (div-interval x y)
  (if
    (and
      (< (lower-bound y) 0)
      (> (upper-bound y) 0))
    (error "ERROR -- cannot divide by an interval that spans 0")
    (mul-interval
    x
    (make-interval
      (/ 1.0 (upper-bound y))
      (/ 1.0 (lower-bound y)))))
