(load "/home/angel/sicp/exercises/2.40/unique-pairs.scm")
(load "/home/angel/sicp/exercises/1.23/smallest-divisor.scm")

(define (prime? n) (= n (smallest-divisor n)))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (map
    make-pair-sum
    (filter
      prime-sum?
      (unique-pairs n))))
