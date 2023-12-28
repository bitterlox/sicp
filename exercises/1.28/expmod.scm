(define (expmod base e m)
  (define (remainder-squared a n) 
    (if
      (and
        (and
          (> 1 a)
          (< a (- n 1 )))
        (= (* a a) (remainder 1 n)))
      0
      (remainder a n)))
  (cond ((= e 0) 1)
        ((even? e)
         (remainder
           (square (expmod base (/ e 2) m))
           m))
        (else
          (remainder
            (* base (expmod base (- e 1) m))
            m))))
