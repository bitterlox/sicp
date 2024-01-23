(load "/home/angel/sicp/exercises/1.46/iterative-improve.scm")
(load "/home/angel/sicp/examples/1.1.7/good-enough.scm")
(load "/home/angel/sicp/examples/1.1.7/improve.scm")

(define (sqrt x)
  ((iterative-improve 
     (lambda (guess) (good-enough guess x))
     (lambda (guess) (improve guess x)))
   1.0))
