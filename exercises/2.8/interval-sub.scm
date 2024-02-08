(load "/home/angel/sicp/exercises/2.7/intervals.scm")

(define (sub-interval i1 i2)
  (add-interval 
    i1
    (make-interval
      (- (lower-bound i2))
      (- (upper-bound i2)))))
