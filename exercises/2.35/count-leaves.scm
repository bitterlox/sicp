(load "/home/angel/sicp/exercises/2.33/accumulate.scm")

(define (count-leaves t)
  (accumulate
    (lambda (x y)
      (+ x y))
    0
    (map
      (lambda (x)
        (cond
          ((null? x) 0)
          ((pair? x) (count-leaves x))
          (else 1)))
      t)))
