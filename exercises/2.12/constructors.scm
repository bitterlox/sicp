(load "/home/angel/sicp/exercises/2.7/constructors.scm")
(load "/home/angel/sicp/exercises/2.7/display.scm")

(define (make-center-perc c perc)
  (make-interval 
    (*
      c
      (/
        (- 100.0 perc)
        100))
    (*
      c
      (/
        (+ 100.0 perc)
        100))))
