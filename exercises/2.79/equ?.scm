; this is with type dispatch in a single fn
(define (install-equ?)
  (define (equ? a b)
    (let
      ((typeA (type-tag a))
       (typeB (type-tag b)))
      (cond
        ((not (eq? typeA typeB))
         #f)
        ((eq? typeA 'scheme-number)
         (= a b))
        ((eq? typeA 'rational)
         (=
           (* (numer a) (denom b))
           (* (denom a) (numer b))))
        ((eq? typeA 'complex)
         (and
           (and
             (= (real-part a) (real-part b))
             (= (imag-part a) (imag-part b)))
           (and
             (= (magnitude a) (magnitude b))
             (= (angle a) (angle b)))
           )))))
  (put 'equ  '(scheme-number scheme-number) equ?)
  (put 'equ  '(rational rational) equ?)
  (put 'equ  '(complex complex) equ?))

(define (install-equ?)
  (put 'equ  '(scheme-number scheme-number) (lambda (a b) (= a b)))
  (put 'equ  '(rational rational) (lambda (a b)
                                    (= 
                                      (* (numer a) (denom b))
                                      (* (denom a) (numer b)))))
  (put 'equ  '(complex complex) (and
                                  (= (real-part a) (real-part b))
                                  (= (imag-part a) (imag-part b))
                                  (= (magnitude a) (magnitude b))
                                  (= (angle a) (angle b)))))
