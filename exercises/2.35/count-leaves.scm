(load "/home/angel/sicp/exercises/2.33/accumulate.scm")

(define (count-leaves t)
  (accumulate
    (lambda (x y)
      (+ 1 y))
    0
    (map (lambda (x)
                 (if
                   (pair? x)
                   (+
                     (count-leaves (car x))
                     (count-leaves (cadr x)))
                   '()))
         t
         )))
