(define (fast-expt base e)
  (define (even? n) (= (remainder n 2) 0))
  (define (fe-iter a b n)
    (display a) (display " - ") (display b) (display " - ") (display n) (newline)
    (cond
      ((< n 1) a)
      ((even? n) (fe-iter a (* b b) (/ n 2)))
      (else (fe-iter (* a b) b (- n 1)))))
  (fe-iter 1 base e))
