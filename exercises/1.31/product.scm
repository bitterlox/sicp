(define (product term aa next b)
  (define 
    (iter a result) 
    (if
      (> a b)
      result
      (iter
        (next a)
        (* (term a) result)))) 
  (iter aa 1))
