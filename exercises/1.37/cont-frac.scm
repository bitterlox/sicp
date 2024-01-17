(define (cont-frac n d k)
  (define (rec i)
    (if
      (= k i)
      (/
        (n i)
        (d i))
      (/
        (n i)
        (+
          (d i)
          (rec (+ i 1))))))
  (rec 1))
