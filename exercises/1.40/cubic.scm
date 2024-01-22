(load "/home/angel/sicp/exercises/1.40/newton-transform.scm")
(load "/home/angel/sicp/exercises/1.40/fixed-point-of-transform.scm")

(define (newtons-method g guess)
  (fixed-point-of-transform g newton-transform guess))

(define (cubic a b c)
  (lambda (x)
    (+
      (* x x x)
      (* a x x)
      (* b x)
      c)))

(define a 1)
(define b 1)
(define c 1)

(display
  (newtons-method (cubic a b c) 1))
