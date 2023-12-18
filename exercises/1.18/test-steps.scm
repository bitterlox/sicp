
(define (* aa bb)
  (define (even? n) (= (remainder n 2) 0))
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (mul a b c step) 
    (cond
      ((= c 1)
        (display "| ") (display bb) (display " | ") (display step) (display " |") (newline)
       (+ a b))
      ((even? c) 
       ;(display "a: ") (display a) (display " - b: ") (display b) (display " - c: ") (display c) (newline)
       (mul a (double b) (halve c) (+ step 1)))
      (else 
       ;(display "a: ") (display a) (display " - b: ") (display b) (display " - c: ") (display c) (newline)
        (mul (+ a b) b (- c 1) (+ step 1)))))
  (mul 0 aa bb 0))

(define (test-steps) 
  (display "| ") (display "b") (display " | ") (display "step") (display " |") (newline)
  (display "| ") (display "---") (display " | ") (display "---") (display " |") (newline)
  (* 2 12)
  (* 2 120)
  (* 2 1200)
  (* 2 12000)
  (* 2 120000)
  (* 2 1200000)
  (* 2 12000000)
  (* 2 120000000)
  (* 2 1200000000))
