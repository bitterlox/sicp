(define (* aa bb)
  (define (even? n) (= (remainder n 2) 0))
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (mul a b c) 
    (cond
      ((= c 1) (+ a b))
      ((even? c) 
       ;(display "a: ") (display a) (display " - b: ") (display b) (display " - c: ") (display c) (newline)
       (mul a (double b) (halve c)))
      (else 
       ;(display "a: ") (display a) (display " - b: ") (display b) (display " - c: ") (display c) (newline)
        (mul (+ a b) b (- c 1)))))
  (mul 0 aa bb))
