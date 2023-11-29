# ex 1.10

The following procedure computes a math-
ematical function called Ackermann’s function.

    (define (A x y)
      (cond 
          ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) (A x (- y 1))))))

What are the values of the following expressions?

(A 1 10)
-> 1024

(A 2 4)
-> 65536

(A 3 3)
-> 65536

Consider the following procedures, where A is the proce-
dure defined above:

(define (f n) (A 0 n)) -> 2n
(define (g n) (A 1 n)) -> 2^n
(define (h n) (A 2 n)) -> 2^h(n-1)
^ i looked this up, i can't math too much
(define (k n) (* 5 n n))

Give concise mathematical definitions for the functions com-
puted by the procedures f, g, and h for positive integer val-
ues of n. For example, (k n) computes 5n2.
