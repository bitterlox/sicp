(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt base e) (define (fe-iter a b n)
                                                (display a) (display " - ") (display b) (display " - ") (display n) (newline)
                             (if 
                                                (< n 1) a
                                                (fe-iter b (square b) (/ n 2))))
  (fe-iter 1 base e))
