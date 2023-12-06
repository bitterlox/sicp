(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (display "calling (fast-expt ") (display b) (display " ") (display (/ n 2)) (display " )") (newline)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
