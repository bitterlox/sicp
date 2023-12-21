(define (smallest-divisor n) 
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ 1 test-divisor)))))

  (define (divides? a b) (= (remainder b a) 0))
  (trace find-divisor)
  (find-divisor n 2))


