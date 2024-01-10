(define (filtered-accumulate filter combiner null-value term a next b)
  (define 
    (iter a result) 
    (if
      (> a b)
      result 
      (iter
        (next a)
        (if
          (filter a)
          (combiner (term a) result)
          (combiner null-value result)))))
  (iter a null-value))
