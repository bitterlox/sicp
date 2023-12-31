(define (smallest-divisor-faster n) 
  (define (next n)
    (if
      (= 2 n)
      3
      (+ n 2)))

  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

  (trace find-divisor)
  (define (divides? a b) (= (remainder b a) 0))
  (find-divisor n 2))


