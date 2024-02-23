(load "/home/angel/sicp/exercises/2.40/enumerate-interval.scm")
(load "/home/angel/sicp/exercises/2.40/flatmap.scm")

(define (unique-pairs n)
  (flatmap
    (lambda (i)
      (map
        (lambda (j) (list i j))
        (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))
