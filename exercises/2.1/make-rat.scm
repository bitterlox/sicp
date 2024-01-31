(load "/home/angel/sicp/exercises/1.33/product-ints-relprime.scm")

(define (make-rat n d)
  (let
    ((abs-n (abs n))
     (abs-d (abs d))
     (g (gcd (abs n) (abs d)))
     (n-positive (> n 0))
     (d-positive (> d 0)))
    (if
      (or
        (and n-positive d-positive)
        (and (not n-positive) (not d-positive)))
      (cons (/ abs-n g) (/ abs-d g))
      (cons (- 0 (/ abs-n g)) (/ abs-d g)))))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
