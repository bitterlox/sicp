(define (install-zero?)
  (put
    '=zero?
    '(scheme-number)
    (lambda (a) (= a 0)))
  (put
    '=zero?
    '(rational)
    (lambda (a) (= (numer a) 0)))
  (put
    '=zero?
    '(complex)
    (lambda (a)
      (and
        (= (real-part a) 0)
        (= (imag-part a) 0)))))
