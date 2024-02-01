(load "/home/angel/sicp/exercises/2.2/segment.scm")
;(load "/home/angel/sicp/exercises/2.3/rectangles-points.scm")
(load "/home/angel/sicp/exercises/2.3/rectangles-segments.scm")

(define (get-perimeter rect)
  (* 
    2
    (+ 
      (get-height rect)
      (get-base rect))))

(define (get-area rect)
  (* 
    (get-height rect)
    (get-base rect)))
