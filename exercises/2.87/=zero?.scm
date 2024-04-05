; a polynomial is zero when all its terms are zero
(define (install-zero)
  (define (=zero? term-list)
    (fold-right
      (lambda (term rest)
        (and
          ((get '=zero? (type-tag term)) (contents term))
          rest))
      true
      term-list))
  (put '=zero? '(polynomial) =zero?))
