(define (cont-frac n d k)
  (define (iter acc i)
    (if
      (= i 0)
      acc
      (iter
        (/
          (n i)
          (+
            (d i)
            acc))
        (- i 1))))
  (iter 0 k))
