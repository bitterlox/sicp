(load "/home/angel/sicp/exercises/2.2/segment.scm")

; define rectangle in terms of 2 segments (base, height)
(define (make-rectangle base height) 
  (cons base height))

(define (get-base rect)
  (let
    ((base-start (x-point (start-segment (car rect))))
     (base-end (x-point (end-segment (car rect)))))
    (if
      (> base-start base-end)
      (- base-start base-start)
      (- base-end base-start))))

(define (get-height rect)
  (let
    ((height-start (y-point (start-segment (cdr rect))))
     (height-end (y-point (end-segment (cdr rect)))))
    (if
      (> height-start height-end)
      (- height-start height-start)
      (- height-end height-start))))
