(define (good-enough guess x) (< (abs (- x (square guess))) 0.001))
