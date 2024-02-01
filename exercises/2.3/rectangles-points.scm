(load "/home/angel/sicp/exercises/2.2/segment.scm")

; define rectangle in terms of 4 points (base-start base-end, height-start, height-end)
(define (make-rectangle base-start base-end height-start height-end) 
  (cons (cons base-start base-end) (cons height-start height-end)))

(define (get-base rect)
  (let
    ((base-start (x-point (car (car rect))))
     (base-end (x-point (cdr (car rect)))))
    (if
      (> base-start base-end)
      (- base-start base-start)
      (- base-end base-start))))

(define (get-height rect)
  (let
    ((height-start (y-point (car (cdr rect))))
     (height-end (y-point (cdr (cdr rect)))))
    (if
      (> height-start height-end)
      (- height-start height-start)
      (- height-end height-start))))
