(load "/home/angel/sicp/exercises/2.40/enumerate-interval.scm")
(load "/home/angel/sicp/exercises/2.40/flatmap.scm")

(define (ordered-triple n)
  (flatmap
    (lambda (i)
      (flatmap
        (lambda (j) 
          (map
            (lambda (k) (list i j k))
            (enumerate-interval 1 (- j 1))))
        (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))



(define (unique-pairs n)
  (flatmap
    (lambda (i)
      (map
        (lambda (j) (list i j))
        (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))
