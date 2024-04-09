(load "/home/angel/sicp/exercises/3.5/monte-carlo.scm")

(define (random-in-range low high)
  (let
    ((range (- high low)))
    (+ low (random range))))

(define (estimate-integral pred x1 x2 y1 y2 num-trials)
  (monte-carlo
    num-trials
    (lambda ()
      (pred
        (random-in-range x1 x2)
        (random-in-range y1 y2)))))

; specific to current experiment

(define (point-in-circle x y)
  (<=
    (+
      (square (- x 5))
      (square (- y 7)))
    9))

; had forgot to actually make point-in-circle check the result lay in the area;
