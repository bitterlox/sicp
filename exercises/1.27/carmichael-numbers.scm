; write a procedure that tests whether a^n is congruent to a mod n for every a < n
(load "/home/angel/sicp/exercises/1.24/expmod.scm")

(define (test-number n)
  (display n)
  (define (congruent? n a) 
    (=
      (expmod a n n)
      a))
  (define (test-number-iter n a) 
    (cond
      ((= n a) 
       (display " passes the test")
       (newline))
      ((not (congruent? n a))
       (display " doesn't pass the test")
       (newline))
      (else (test-number-iter n (+ a 1)))))
  ;(trace test-number-iter)
  (test-number-iter n 1))

; try it on the carmichael numbers
(test-number 61)
(test-number 1105)
(test-number 1729)
(test-number 2465)
(test-number 2821)
(test-number 6601)

