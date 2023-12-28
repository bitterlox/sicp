(load "/home/angel/sicp/exercises/1.28/expmod.scm")

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it 
    (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (test-number n)
  (display n)
  (if
    (fast-prime? n 10)
    (display " is prime")
    (display " is not prime"))
  (newline))


; random number, def not a prime
(test-number 62)

; try it on the carmichael numbers
(test-number 561)
(test-number 1105)
(test-number 1729)
(test-number 2465)
(test-number 2821)
(test-number 6601)

; try it on primes

(test-number 1009)
(test-number 1013)
(test-number 1019)
(test-number 10007)
(test-number 10009)
(test-number 10037)
(test-number 100003)
(test-number 100019)
(test-number 100043)
(test-number 1000003)
(test-number 1000033)
(test-number 1000037)
(test-number 100000007)
(test-number 100000037)
(test-number 100000039)
(test-number 1000000007)
(test-number 1000000009)
(test-number 1000000021)
(test-number 10000000019)
(test-number 10000000033)
(test-number 10000000061)
(test-number 100000000003)
(test-number 100000000019)
(test-number 100000000057)
(test-number 1000000000039)
(test-number 1000000000061)
(test-number 1000000000063)
