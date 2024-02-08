(load "/home/angel/sicp/exercises/2.7/constructors.scm")
(load "/home/angel/sicp/exercises/2.7/selectors.scm")

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
  (+ (upper-bound x) (upper-bound y))))
