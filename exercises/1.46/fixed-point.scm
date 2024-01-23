(load "/home/angel/sicp/exercises/1.46/iterative-improve.scm")

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

  ((iterative-improve 
     (lambda (guess) (close-enough? guess (f guess)))
     (lambda (guess) (f guess)))
   1.0))
