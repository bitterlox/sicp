(load "/home/angel/sicp/exercises/2.7/constructors.scm")
(load "/home/angel/sicp/exercises/2.7/selectors.scm")

(define (div-interval x y)
  (mul-interval
    x
    (make-interval
      (/ 1.0 (upper-bound y))
      (/ 1.0 (lower-bound y)))))
