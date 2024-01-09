(define (sum term aa next b)
  (define 
    (iter a result) 
    (if
      (> a b)
      result
      (iter
        (next a)
        (+ (term a) result)))) 
  (iter aa 0))

(define (id a) a)
(define (next a) (+ a 1))

(sum id 1 next 3)
